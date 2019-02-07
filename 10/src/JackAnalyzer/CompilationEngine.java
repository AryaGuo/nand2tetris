package JackAnalyzer;

import java.io.File;
import java.io.IOException;
import java.util.Formatter;

public class CompilationEngine {

    private Formatter formatter;

    public CompilationEngine(String fileName) throws IOException {
        File f = new File(fileName + ".xml");
        if (!f.exists()) {
            f.createNewFile();
        }
        formatter = new Formatter(f);
    }


}
