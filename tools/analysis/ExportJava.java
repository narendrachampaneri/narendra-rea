// Bulk-decompile an APK to an Android Gradle project with the JADX core bundled in jadx-headless-mcp.
// Usage: java -cp <jadx-headless-mcp.jar> ExportJava.java <apk> <outDir>
import jadx.api.CommentsLevel;
import jadx.api.DecompilationMode;
import jadx.api.JadxArgs;
import jadx.api.JadxDecompiler;
import jadx.core.export.ExportGradleType;

import java.io.File;

public class ExportJava {
    public static void main(String[] argv) {
        JadxArgs args = new JadxArgs();
        args.setInputFile(new File(argv[0]));
        args.setOutDir(new File(argv[1]));
        args.setExportGradleType(ExportGradleType.ANDROID_APP);
        args.setDecompilationMode(DecompilationMode.AUTO);
        args.setShowInconsistentCode(true);
        args.setCommentsLevel(CommentsLevel.INFO);
        args.setThreadsCount(4);
        try (JadxDecompiler jadx = new JadxDecompiler(args)) {
            jadx.load();
            System.out.println("classes: " + jadx.getClasses().size());
            jadx.save(5000, (done, total) -> System.out.println("progress: " + done + "/" + total));
            System.out.println("errors: " + jadx.getErrorsCount() + " warnings: " + jadx.getWarnsCount());
        }
    }
}
