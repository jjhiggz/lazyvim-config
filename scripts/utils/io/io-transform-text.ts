export async function ioTransformText(by: (input: string) => string) {
  for await (const chunk of Bun.stdin.stream()) {
    const chunkText = Buffer.from(chunk).toString();
    process.stdout.write(by(chunkText));
  }
}
