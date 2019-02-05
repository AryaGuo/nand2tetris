package VMTranslator;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Parser {
    private Scanner scanner;
    private CommandType commandType;
    private String arg1;
    private int arg2;
    private String nxt;

    public Parser(String fileName, String pathname, boolean hasPathname) throws FileNotFoundException {
        File file;
        if (hasPathname) {
            file = new File(pathname + "/" + fileName + ".vm");

        } else {
            file = new File(fileName + ".vm");
        }
        scanner = new Scanner(file);
        commandType = null;
        arg1 = null;
        arg2 = 0;
    }

    public boolean hasMoreCommands() {
        if(!scanner.hasNext()) return false;
        while (scanner.hasNext()) {
            nxt = scanner.next();
            if (nxt.equals("//")) {
                scanner.nextLine();
            } else {
                return true;
            }
        }
        return false;
    }

    public void advance() throws Exception {
            switch (nxt) {
                case "push":
                    commandType = CommandType.C_PUSH;
                    arg1 = scanner.next();
                    arg2 = scanner.nextInt();
                    break;
                case "pop":
                    commandType = CommandType.C_POP;
                    arg1 = scanner.next();
                    arg2 = scanner.nextInt();
                    break;
                case "add":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "sub":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "neg":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "eq":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "gt":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "lt":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "and":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "or":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "not":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = nxt;
                    break;
                case "label":
                    commandType = CommandType.C_LABEL;
                    arg1 = scanner.next();
                    break;
                case "goto":
                    commandType = CommandType.C_GOTO;
                    arg1 = scanner.next();
                    break;
                case "if-goto":
                    commandType = CommandType.C_IF;
                    arg1 = scanner.next();
                    break;
                case "function":
                    commandType = CommandType.C_FUNCTION;
                    arg1 = scanner.next();
                    arg2 = scanner.nextInt();
                    break;
                case "call":
                    commandType = CommandType.C_CALL;
                    arg1 = scanner.next();
                    arg2 = scanner.nextInt();
                    break;
                case "return":
                    commandType = CommandType.C_RETURN;
                    break;
                default:
                    throw new Exception();
            }
    }

    public CommandType getCommandType() {
        return commandType;
    }

    public String getArg1() throws Exception {
        if (commandType.equals(CommandType.C_RETURN)) throw new Exception();
        return arg1;
    }

    public int getArg2() throws Exception {
        switch (commandType) {
            case C_PUSH:
                return arg2;
            case C_POP:
                return arg2;
            case C_FUNCTION:
                return arg2;
            case C_CALL:
                return arg2;
            default:
                throw new Exception();
        }
    }

    public void close() {
        scanner.close();
    }
}
