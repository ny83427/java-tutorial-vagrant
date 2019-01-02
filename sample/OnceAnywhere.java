import java.io.File;
import java.io.IOException;

/**
 * <pre>
 * "Write Once, Run Anywhere" - what does it mean in real life?
 * https://en.wikipedia.org/wiki/Write_once,_run_anywhere
 * </pre>
 */
public class OnceAnywhere {

    public static void main(String[] args) {
        if (args == null || args.length == 0) {
            existsOrNot();
        } else if (args[0].toUpperCase().startsWith("CMD")) {
            succeedOrNot();
        }
    }

    private static void existsOrNot() {
        String[] paths = {
            // \ will only work under Windows
            "data\\periodic-table-of-elements.csv",
            // / will work under both Windows and Linux
            "data/periodic-table-of-elements.csv",
            // a general approach on system dependent factors
            "data" + File.separator + "periodic-table-of-elements.csv"
        };

        for (String path : paths) {
            String fullPath = new File(path).getAbsolutePath();
            System.out.println(fullPath + (new File(path).exists() ? " exists." : " does not exist."));
        }
    }

    private static void succeedOrNot() {
        try {
            /*
            Process process;
            if (System.getProperty("os.name").startsWith("Windows")) {
                process = new ProcessBuilder("cmd", "/c", "sqlite3 sample.db < import.sql").start();
            } else {
                process = new ProcessBuilder("bash", "-c", "sqlite3 sample.db < import.sql").start();
            }
            */
            Process process = new ProcessBuilder("bash", "-c", "sqlite3 sample.db < import.sql").start();
            process.waitFor();
            System.out.println("Finished with return code " + process.exitValue());
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
