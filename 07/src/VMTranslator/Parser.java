package VMTranslator;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Parser {
    private Scanner scanner;
    private CommandType commandType;
    private String arg1;
    private int arg2;

    public Parser(String fileName) throws FileNotFoundException {
        scanner = new Scanner(new File(fileName + ".vm"));
        commandType = null;
        arg1 = null;
        arg2 = 0;
    }

    public boolean hasMoreCommands() {
        return scanner.hasNext();
    }

    public void advance() throws Exception {
        while (scanner.hasNext()) {
            String tmp = scanner.next();
            if (tmp.equals("//")) {
                scanner.nextLine();
                continue;
            }
            switch (tmp) {
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
                    arg1 = tmp;
                    break;
                case "sub":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "neg":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "eq":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "gt":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "lt":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "and":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "or":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;
                case "not":
                    commandType = CommandType.C_ARITHMETIC;
                    arg1 = tmp;
                    break;

                default:
                    throw new Exception();
            }
            break;
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
