package VMTranslator;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Formatter;

public class CodeWriter {


    private final String sp = "SP";
    private final String x = "R13";
    private final String y = "R14";

    private Formatter formatter;
    private String inputFileName;

    public CodeWriter(String fileName) {
        inputFileName = fileName;
        String outputFileName = fileName;
        File output = new File(outputFileName + ".asm");
        if (!output.exists()) {
            try {
                output.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            formatter = new Formatter(output);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    //(*)a = (*)b
    private void assign(String a, String b, boolean f, boolean g) {
        /*
            @b
            A=M //if(g)
            D=M
            @a
            A=M //if(f)
            M=D
         */
        formatter.format("@%s\n", b);
        if (g) {
            formatter.format("%s\n", "A=M");
        }
        formatter.format("%s\n", "D=M");
        formatter.format("@%s\n", a);
        if (f) {
            formatter.format("%s\n", "A=M");
        }
        formatter.format("%s\n", "M=D");
    }

    //(*)a = i
    private void assignConst(String a, boolean f, int i) {
        /*
            @i
            D=A
            @a
            A=M //if(f)
            M=D
         */
        if (i < 0) {
            formatter.format("@%d\n", -i);
            formatter.format("%s\n", "D=-A");
        } else {
            formatter.format("@%d\n", i);
            formatter.format("%s\n", "D=A");
        }
        formatter.format("@%s\n", a);
        if (f) {
            formatter.format("%s\n", "A=M");
        }
        formatter.format("%s\n", "M=D");
    }

    // ++a
    private void increment(String a) {
        /*
            @a
            M=M+1
         */
        formatter.format("@%s\n", a);
        formatter.format("%s\n", "M=M+1");
    }

    // --a
    private void decrement(String a) {
        /*
            @a
            M=M-1
         */
        formatter.format("@%s\n", a);
        formatter.format("%s\n", "M=M-1");
    }

    //a = b + i
    private void addition(String a, String b, int i) {
        /*
            @b
            D=M
            @i
            D=D+A
            @a
            M=D
         */
        formatter.format("@%s\n", b);
        formatter.format("%s\n", "D=M");
        if (i > 0) {
            formatter.format("@%d\n", i);
            formatter.format("%s\n", "D=D+A");
        } else {
            formatter.format("@%d\n", -i);
            formatter.format("%s\n", "D=D-A");
        }
        formatter.format("@%s\n", a);
        formatter.format("%s\n", "M=D");
    }

    //a = i + j
    private void addition(String a, int i, int j) {
        /*
            @i
            D=A
            @j
            D=D+A
            @a
            M=D
         */
        formatter.format("@%s\n", i);
        formatter.format("%s\n", "D=A");
        formatter.format("@%d\n", j);
        formatter.format("%s\n", "D=D+A");
        formatter.format("@%s\n", a);
        formatter.format("%s\n", "M=D");
    }

    //x = *(--SP)
    private void pop(String x) {
        decrement(sp);
        assign(x, sp, false, true);
    }

    //*(SP++) = x
    private void push(String x) {
        assign(sp, x, true, false);
        increment(sp);
    }

    //*(SP++) = x
    private void push(int x) {
        assignConst(sp, true, x);
        increment(sp);
    }

    //x = x [op] y
    private void binaryOperate(String op) {
        formatter.format("@%s\n", y);
        formatter.format("%s\n", "D=M");
        formatter.format("@%s\n", x);
        formatter.format("%s\n", "M=M" + op + "D");
    }

    private void writeComment(String str) {
        formatter.format("\n// %s\n", str);
    }


    public void setFileName(String fileName) {
        inputFileName = fileName;
    }

    private int arithmeticLabelCount = 0;

    public void writeArithmetic(String command) {

        ++arithmeticLabelCount;
        writeComment(command);

        switch (command) {
            case "add":
                pop(y);
                pop(x);
                binaryOperate("+");
                push(x);
                break;
            case "sub":
                pop(y);
                pop(x);
                binaryOperate("-");
                push(x);
                break;
            case "and":
                pop(y);
                pop(x);
                binaryOperate("&");
                push(x);
                break;
            case "or":
                pop(y);
                pop(x);
                binaryOperate("|");
                push(x);
                break;
            case "eq":
                /*
                    pop y
                    pop x
                    x = x - y
                    @TRUE
                    x;JEQ
                    push 0
                    @END
                    0;JMP

                    (TRUE)
                    push 1
                    (END)
                 */
                pop(y);
                pop(x);
                binaryOperate("-");
                formatter.format("@%s\n", x);
                formatter.format("%s\n", "D=M");
                formatter.format("@%s.%s%d\n", inputFileName, "TRUE", arithmeticLabelCount);
                formatter.format("%s\n", "D;JEQ");
                push(0);
                formatter.format("@%s.%s%d\n", inputFileName, "END", arithmeticLabelCount);
                formatter.format("%s\n", "0;JMP");
                formatter.format("(%s.%s%d)\n", inputFileName, "TRUE", arithmeticLabelCount);
                push(-1);
                formatter.format("(%s.%s%d)\n", inputFileName, "END", arithmeticLabelCount);
                break;
            case "gt":
                pop(y);
                pop(x);
                binaryOperate("-");
                formatter.format("@%s\n", x);
                formatter.format("%s\n", "D=M");
                formatter.format("@%s.%s%d\n", inputFileName, "TRUE", arithmeticLabelCount);
                formatter.format("%s\n", "D;JGT");
                push(0);
                formatter.format("@%s.%s%d\n", inputFileName, "END", arithmeticLabelCount);
                formatter.format("%s\n", "0;JMP");
                formatter.format("(%s.%s%d)\n", inputFileName, "TRUE", arithmeticLabelCount);
                push(-1);
                formatter.format("(%s.%s%d)\n", inputFileName, "END", arithmeticLabelCount);
                break;
            case "lt":
                pop(y);
                pop(x);
                binaryOperate("-");
                formatter.format("@%s\n", x);
                formatter.format("%s\n", "D=M");
                formatter.format("@%s.%s%d\n", inputFileName, "TRUE", arithmeticLabelCount);
                formatter.format("%s\n", "D;JLT");
                push(0);
                formatter.format("@%s.%s%d\n", inputFileName, "END", arithmeticLabelCount);
                formatter.format("%s\n", "0;JMP");
                formatter.format("(%s.%s%d)\n", inputFileName, "TRUE", arithmeticLabelCount);
                push(-1);
                formatter.format("(%s.%s%d)\n", inputFileName, "END", arithmeticLabelCount);
                break;
            case "neg":
                pop(x);
                formatter.format("@%s\n", x);
                formatter.format("%s\n", "M=-M");
                push(x);
                break;
            case "not":
                pop(x);
                formatter.format("@%s\n", x);
                formatter.format("%s\n", "M=!M");
                push(x);
                break;
        }
    }

    public void writePushPop(String command, String segment, int i) {
        writeComment(command + " " + segment + " " + i);

        String pt = "";
        String addr = "R15";

        switch (command) {
            case "push":
                switch (segment) {
                    case "constant":
                        /*
                            *SP = i
                            ++SP
                         */
                        assignConst(sp, true, i);
                        increment(sp);
                        break;
                    case "static":
                        /*
                                @Filename.i
                                D=M
                                @SP
                                A=M
                                M=D
                            ++SP
                         */
                        formatter.format("@%s.%d\n", inputFileName, i);
                        formatter.format("%s\n", "D=M");
                        formatter.format("@%s\n", sp);
                        formatter.format("%s\n", "A=M");
                        formatter.format("%s\n", "M=D");
                        increment(sp);
                        break;
                    case "temp":
                       /*
                            addr = 5 + i
                            *SP = *addr
                            ++SP
                        */
                        addition(addr, 5, i);
                        assign(sp, addr, true, true);
                        increment(sp);
                        break;
                    case "pointer":
                        /*
                            *SP = THIS/THAT
                            ++SP
                         */
                        pt = i == 0 ? "THIS" : "THAT";
                        assign(sp, pt, true, false);
                        increment(sp);
                        break;
                    default:
                        /*
                            addr = pt + i
                            *SP = *addr
                            ++SP
                         */
                        switch (segment) {
                            case "local":
                                pt = "LCL";
                                break;
                            case "argument":
                                pt = "ARG";
                                break;
                            case "this":
                                pt = "THIS";
                                break;
                            case "that":
                                pt = "THAT";
                        }
                        addition(addr, pt, i);
                        assign(sp, addr, true, true);
                        increment(sp);
                }
                break;
            case "pop":
                switch (segment) {
                    case "static":
                        /*
                            --SP
                                @SP
                                A=M
                                D=M
                                @Filename.i
                                M=D
                         */
                        decrement(sp);
                        formatter.format("@%s\n", sp);
                        formatter.format("%s\n", "A=M");
                        formatter.format("%s\n", "D=M");
                        formatter.format("@%s.%d\n", inputFileName, i);
                        formatter.format("%s\n", "M=D");
                        break;
                    case "temp":
                       /*
                            addr = 5 + i
                            --SP
                            *addr = *SP
                        */
                        addition(addr, 5, i);
                        decrement(sp);
                        assign(addr, sp, true, true);
                        break;
                    case "pointer":
                        /*
                            --SP
                            THIS/THAT = *SP
                         */
                        pt = i == 0 ? "THIS" : "THAT";
                        decrement(sp);
                        assign(pt, sp, false, true);
                        break;

                    default:
                        /*
                            addr = pt + i
                            --SP
                            *addr = *SP
                         */
                        switch (segment) {
                            case "local":
                                pt = "LCL";
                                break;
                            case "argument":
                                pt = "ARG";
                                break;
                            case "this":
                                pt = "THIS";
                                break;
                            case "that":
                                pt = "THAT";
                                break;
                        }
                        addition(addr, pt, i);
                        decrement(sp);
                        assign(addr, sp, true, true);
                }

        }
    }

    public void writeInit() {
        writeComment("init");
        assignConst(sp, false, 256);
        writeCall("Sys.init", 0, "bootstrap");
    }

    public void writeLabel(String label, String funcName) {
        writeComment("label " + label);
        if (label == "") {
            formatter.format("(%s)\n", funcName);
        } else {
            formatter.format("(%s$%s)\n", funcName, label);
        }
    }

    private void useLabel(String label, String funcName) {
        if (label == "") {
            formatter.format("@%s\n", funcName);
        } else {
            formatter.format("@%s$%s\n", funcName, label);
        }
    }

    public void writeGoto(String label, String funcName) {
        writeComment("goto " + label);
        useLabel(label, funcName);
        formatter.format("%s\n", "0;JMP");
    }

    public void writeIf(String label, String funcName) {
        writeComment("if-goto " + label);
        /*
            pop x
            @x
            D=M
            @label
            D;JNE
         */
        pop(x);
        formatter.format("@%s\n", x);
        formatter.format("%s\n", "D=M");
        useLabel(label, funcName);
        formatter.format("%s\n", "D;JNE");
    }

    private int callCount = 0;

    public void writeCall(String functionName, int nArgs, String caller) {
        writeComment("call " + functionName + " " + nArgs);

        /*
                push [retAddrLabel]
                push [LCL]
                push [ARG]
                push [THIS]
                push [THAT]
                ARG = sp - 5 - nArgs
                LCL = sp
                goto func
            (retAddrLabel)
         */

        ++callCount;
        String ret = "ret." + callCount;
        formatter.format("@%s\n", caller + "$" + ret);
        formatter.format("%s\n", "D=A");
        formatter.format("@%s\n", x);
        formatter.format("%s\n", "M=D");

        push(x);
        push("LCL");
        push("ARG");
        push("THIS");
        push("THAT");
        addition(x, sp, -5);
        addition(y, x, -nArgs);
        assign("ARG", y, false, false);
        assign("LCL", sp, false, false);
        writeGoto("", functionName);
        writeLabel(ret, caller);
    }

    public void writeFunction(String functionName, int nVars) {
        writeComment("function " + functionName + " " + nVars);
        callCount = 0;
        writeLabel("", functionName);
        for (int i = 0; i < nVars; ++i) {
            push(0);
        }
    }

    public void writeReturn() {
        writeComment("return");
        String retAddr = "R15";

        addition(x, "LCL", -5);
        assign(retAddr, x, false, true);

        pop(y);
        assign("ARG", y, true, false);
        addition(sp, "ARG", 1);

        addition(x, x, 1);
        assign("LCL", x, false, true);
        addition(x, x, 1);
        assign("ARG", x, false, true);
        addition(x, x, 1);
        assign("THIS", x, false, true);
        addition(x, x, 1);
        assign("THAT", x, false, true);

        formatter.format("@%s\n", retAddr);
        formatter.format("%s\n", "A=M");
        formatter.format("%s\n", "0;JMP");
    }

    public void close() {
        formatter.close();
    }
}
