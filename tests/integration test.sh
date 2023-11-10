import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertTrue;
import java.io.IOException;

class MySQLInstallationTest {

    @Test
    void testMysqlIsInstalled() throws IOException, InterruptedException {
        ProcessBuilder processBuilder = new ProcessBuilder();
        // This command attempts to run the mysql client and get its version
        processBuilder.command("bash", "-c", "mysql --version");

        Process process = processBuilder.start();

        // Wait for the process to complete and get the exit value
        int exitCode = process.waitFor();

        // If the exit code is 0, the command ran successfully, which likely means mysql is installed
        assertTrue(exitCode == 0, "MySQL is not installed or not found in the PATH.");
    }
}