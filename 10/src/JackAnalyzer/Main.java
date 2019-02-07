package JackAnalyzer;

import java.io.File;
import java.io.FileWriter;

public class Main {

    public static void main(String[] args) throws Exception {
        File input = new File(args[0]);
        String fileName;

        if (input.isDirectory()) {
            String[] files = input.list();
            if (files != null) {
                for (String str : files) {
                    if (args[0].endsWith(".jack")) {
                        fileName = str.substring(0, str.length() - 5);
                        analyze(args[0] + "//" + fileName);
                    }
                }
            }
        } else if (args[0].endsWith(".jack")) {
            fileName = args[0].substring(0, args[0].length() - 5);
            analyze(fileName);
        } else {
            throw new Exception();
        }
    }

    private static void analyze(String fileName) throws Exception {
        Tokenizer tokenizer = new Tokenizer(fileName);
        CompilationEngine compilationEngine = new CompilationEngine(fileName);

        File output = new File(fileName + ".xml");
        FileWriter fileWriter = new FileWriter(output);

        fileWriter.write("<token>\n");
        while (tokenizer.hasMoreTokens()) {
            tokenizer.advance();
            TokenType tokenType = tokenizer.getTokenType();
            switch (tokenType) {
                case KEYWORD:
                    fileWriter.write("<keyword> ");
                    fileWriter.write(tokenizer.getKeyword().toString());
                    fileWriter.write(" </keyword>\n");
                    break;
                case SYMBOL:
                    fileWriter.write("<symbol> ");
                    fileWriter.append(tokenizer.getSymbol());
                    fileWriter.write(" </symbol>\n");
                    break;
                case INT_CONST:
                    fileWriter.write("<integerConst> ");
                    fileWriter.write(tokenizer.getIntVal());
                    fileWriter.write(" </integerConst>\n");
                    break;
                case IDENTIFIER:
                    fileWriter.write("<identifier> ");
                    fileWriter.write(tokenizer.getIdentifier());
                    fileWriter.write(" </identifier>\n");
                    break;
                case STRING_CONST:
                    fileWriter.write("<stringConst> ");
                    fileWriter.write(tokenizer.getStringVal());
                    fileWriter.write(" </stringConst>\n");
                    break;

            }
        }

        fileWriter.write(" </token>\n");
        fileWriter.close();
    }

}
