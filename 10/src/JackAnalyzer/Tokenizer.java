package JackAnalyzer;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

enum TokenType {
    KEYWORD,
    SYMBOL,
    IDENTIFIER,
    INT_CONST,
    STRING_CONST
}

enum Keyword {
    CLASS,
    METHOD,
    FUNCTION,
    CONSTRUCTOR,
    INT,
    BOOLEAN,
    CHAR,
    VOID,
    VAR,
    STATIC,
    FIELD,
    LET,
    DO,
    IF,
    ELSE,
    WHILE,
    RETURN,
    TRUE,
    FALSE,
    NULL,
    THIS
}

public class Tokenizer {
    private Scanner scanner;
    private String cur = null;
    String symbolList = "{}()[].,;+-*/&|<>=~";

    private TokenType tokenType;
    private Keyword keyword;
    private char symbol;
    private String identifier;
    private int intVal;
    private String stringVal;

    public Tokenizer(String fileName) throws FileNotFoundException {
        File f = new File(fileName + ".jack");
        scanner = new Scanner(f);
    }

    public boolean hasMoreTokens() {
        if (cur == null) {
            while (scanner.hasNext()) {
                cur = scanner.next();
                if (cur.equals("//")) {
                    scanner.nextLine();
                } else if (cur.equals("/*") || cur.equals("/**")) {
                    while (scanner.hasNext()) {
                        cur = scanner.next();
                        if (cur.equals("*/")) {
                            break;
                        }
                    }
                } else {
                    return true;
                }
            }
            return false;
        } else {
            return true;
        }
    }

    private void update(int len) {
        cur = cur.substring(len);
        if (cur.equals("")) cur = null;
    }

    private boolean isKeyword() {
        if (cur.startsWith("class")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.CLASS;
            update(5);
            return true;
        }
        if (cur.startsWith("method")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.METHOD;
            update(6);
            return true;
        }
        if (cur.startsWith("function")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.FUNCTION;
            update(8);
            return true;
        }
        if (cur.startsWith("constructor")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.CONSTRUCTOR;
            update(11);
            return true;
        }
        if (cur.startsWith("int")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.INT;
            update(3);
            return true;
        }
        if (cur.startsWith("boolean")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.BOOLEAN;
            update(7);
            return true;
        }
        if (cur.startsWith("char")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.CHAR;
            update(4);
            return true;
        }
        if (cur.startsWith("void")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.VOID;
            update(4);
            return true;
        }
        if (cur.startsWith("var")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.VAR;
            update(3);
            return true;
        }
        if (cur.startsWith("static")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.STATIC;
            update(6);
            return true;
        }
        if (cur.startsWith("field")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.FIELD;
            update(5);
            return true;
        }
        if (cur.startsWith("let")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.LET;
            update(3);
            return true;
        }
        if (cur.startsWith("do")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.DO;
            update(2);
            return true;
        }
        if (cur.startsWith("if")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.IF;
            update(2);
            return true;
        }
        if (cur.startsWith("else")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.ELSE;
            update(4);
            return true;
        }
        if (cur.startsWith("while")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.WHILE;
            update(5);
            return true;
        }
        if (cur.startsWith("return")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.RETURN;
            update(6);
            return true;
        }
        if (cur.startsWith("true")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.TRUE;
            update(4);
            return true;
        }
        if (cur.startsWith("false")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.FALSE;
            update(5);
            return true;
        }
        if (cur.startsWith("null")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.NULL;
            update(4);
            return true;
        }
        if (cur.startsWith("this")) {
            tokenType = TokenType.KEYWORD;
            keyword = Keyword.THIS;
            update(4);
            return true;
        }
        return false;
    }

    public void advance() throws Exception {
        if (cur == null) {
            throw new Exception();
        }

        if (isKeyword()) return;

        for (int i = 0; i < symbolList.length(); ++i) {
            if (cur.charAt(0) == symbolList.charAt(i)) {
                tokenType = TokenType.SYMBOL;
                symbol = symbolList.charAt(i);
                update(1);
                return;
            }
        }

        if (Character.isDigit(cur.charAt(0))) {
            tokenType = TokenType.INT_CONST;
            intVal = 0;
            do {
                if (!Character.isDigit(cur.charAt(0))) break;
                intVal = intVal * 10 + Character.getNumericValue(cur.charAt(0));
                update(1);
            } while (cur != null);
            return;
        }

        if (cur.charAt(0) == '\"') {
            tokenType = TokenType.STRING_CONST;
            stringVal = "";
            int i;
            for (i = 0; i < cur.length() && cur.charAt(i) != '\"'; ++i) {
                stringVal += cur.charAt(i);
            }
            update(i);
        }

        if (Character.isLetterOrDigit(cur.charAt(0)) || cur.charAt(0) == '_') {
            tokenType = TokenType.IDENTIFIER;
            identifier = "";
            do {
                identifier += cur.charAt(0);
                update(1);
            } while (cur != null && (Character.isLetterOrDigit(cur.charAt(0)) || cur.charAt(0) == '_'));
            return;
        }

    }

    public TokenType getTokenType() {
        return tokenType;
    }

    public Keyword getKeyword() {
        return keyword;
    }

    public char getSymbol() {
        return symbol;
    }

    public String getIdentifier() {
        return identifier;
    }

    public int getIntVal() {
        return intVal;
    }

    public String getStringVal() {
        return stringVal;
    }
}
