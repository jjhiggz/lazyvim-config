import { $ } from "bun";
import { getFiles } from "./utils/io/get-files";

console.log("compiling");

const files = await getFiles("./scripts");
if (!files) throw new Error("There are no scripts to compile to binary");

for (let file of files) {
  const fileArr = file.split(".");
  fileArr.pop();
  const filePath = fileArr.join(".");
  const fileName = filePath.replace("scripts/", "");

  await $`bun build ./${filePath}.ts --compile --outfile ./binaries/${fileName}`;
}

console.log(files);

