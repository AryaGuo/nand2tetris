package VMTranslator;

import java.io.File;

public class Main {

    public static void main(String[] args) throws Exception {
        CodeWriter codeWriter;
        File input = new File(args[0]);
        String fileName;

        if (input.isDirectory()) {
            codeWriter = new CodeWriter(args[0]);
            codeWriter.writeInit();
            String[] files = input.list();
            if (files != null) {
                for (String str : files) {
                    if (str.endsWith(".vm")) {
                        fileName = str.substring(0, str.length() - 3);
                        parse(codeWriter, fileName, args[0], true);
                    }
                }
            }
        } else if (args[0].endsWith(".vm")) {
            fileName = args[0].substring(0, args[0].length() - 3);
            codeWriter = new CodeWriter(fileName);
            parse(codeWriter, fileName, null, false);
        } else {
            throw new Exception();
        }
        codeWriter.close();
    }

    private static void parse(CodeWriter codeWriter, String fileName, String pathname, boolean hasPathname) throws Exception {
        Parser parser = new Parser(fileName, pathname, hasPathname);
        codeWriter.setFileName(fileName);
        String func = "";

        while (parser.hasMoreCommands()) {
            parser.advance();
            CommandType commandType = parser.getCommandType();
            switch (commandType) {
                case C_ARITHMETIC:
                    codeWriter.writeArithmetic(parser.getArg1());
//                    System.out.println(parser.getArg1());
                    break;
                case C_PUSH:
                    codeWriter.writePushPop("push", parser.getArg1(), parser.getArg2());
//                    System.out.println("push " + parser.getArg1() + " " + parser.getArg2());
                    break;
                case C_POP:
                    codeWriter.writePushPop("pop", parser.getArg1(), parser.getArg2());
//                    System.out.println("pop " + parser.getArg1() + " " + parser.getArg2());
                    break;
                case C_LABEL:
                    codeWriter.writeLabel(parser.getArg1(), func);
//                    System.out.println("label " + parser.getArg1());
                    break;
                case C_GOTO:
                    codeWriter.writeGoto(parser.getArg1(), func);
//                    System.out.println("goto " + parser.getArg1());
                    break;
                case C_IF:
                    codeWriter.writeIf(parser.getArg1(), func);
//                    System.out.println("if-goto " + parser.getArg1());
                    break;
                case C_FUNCTION:
                    codeWriter.writeFunction(parser.getArg1(), parser.getArg2());
                    func = parser.getArg1();
//                    System.out.println("function " + parser.getArg1() + " " + parser.getArg2());
                    break;
                case C_CALL:
                    codeWriter.writeCall(parser.getArg1(), parser.getArg2(), func);
//                    System.out.println("call " + parser.getArg1() + " " + parser.getArg2());
                    break;
                case C_RETURN:
                    codeWriter.writeReturn();
//                    System.out.println("return");
                    break;
            }
        }
        parser.close();
    }

}
