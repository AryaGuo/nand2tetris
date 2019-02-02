package VMTranslator;

public class Main {

    public static void main(String[] args) throws Exception {
        String[] res = args[0].split("\\.");
        String fileName = res[0];

        Parser parser = new Parser(fileName);
        CodeWriter codeWriter = new CodeWriter(fileName);

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
            }
        }

        parser.close();
        codeWriter.close();
    }
}
