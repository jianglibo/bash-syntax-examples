///usr/bin/env jbang "$0" "$@" ; exit $?
//DEPS info.picocli:picocli:4.6.3
//DEPS com.google.code.gson:gson:2.10.1

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

import com.google.gson.Gson;

import picocli.CommandLine;
import picocli.CommandLine.Command;
import picocli.CommandLine.Model.CommandSpec;
import picocli.CommandLine.Parameters;
import picocli.CommandLine.Spec;

@Command(name = "packExamples", mixinStandardHelpOptions = true, version = "pack examples 0.1", description = "pack example by directory.")
class pack implements Callable<Integer> {
    @Spec
    CommandSpec spec;

    @Parameters(index = "0", description = "the filesystem directory that has cats insode.")
    private Path catsFolder;

    public static void main(String... args) {
        int exitCode = new CommandLine(new pack()).execute(args);
        System.exit(exitCode);
    }

    static record FileItem(String cat, String title, String content) {
    }

    @Override
    public Integer call() throws Exception {
        // for every directory in catsFolder, take the directory name and append .json
        // to create a json file put it beside the directory.
        // the content of the json is {"data": [{"cat": "catname", "title":
        // "name/of/file", "content": "content of file"}]}
        // the json data item is one for a file in that directory.

        Files.list(catsFolder).filter(Files::isDirectory).forEach(catFolder -> {
            String catName = catFolder.getFileName().toString();
            Path catJson = catFolder.resolveSibling(catName + ".json");
            try (BufferedWriter writer = Files.newBufferedWriter(catJson)) {
                List<FileItem> fileItems = Files.list(catFolder).filter(Files::isRegularFile).map(p -> {
                    String title = p.getFileName().toString();
                    String content = null;
                    try {
                        content = Files.readString(p);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return new FileItem(catName, title, content);
                }).toList();
                new Gson().toJson(Map.of("data", fileItems), writer);
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
        return 0;
    }

}
