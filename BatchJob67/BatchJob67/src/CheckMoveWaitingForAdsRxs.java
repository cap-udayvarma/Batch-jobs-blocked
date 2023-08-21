import java.io.IOException;
import java.util.List;

public class CheckMoveWaitingForAdsRxs {

	public static void main(String[] args) {
		try {
			// Set the command and arguments
			List<String> command = List.of("bash","/mnt/c/Users/ashuverm/Downloads/BatchJob67/BatchJob67/script/CheckMoveWaitingForAdsRxs.sh");

			// Create the process builder
			ProcessBuilder processBuilder = new ProcessBuilder(command);

			// Run the command
			Process process = processBuilder.start();

			// Wait for the process to complete
			int exitCode = process.waitFor();

			if (exitCode == 0) {
				System.out.println("Success.");
			} else {
				System.err.println("Failed: " + exitCode);
			}
		} catch (IOException | InterruptedException e) {
			e.printStackTrace();
		}
	}
}
