export function capitalize(input: string): string {
  return input
    .split(" ")
    .map((word) =>
      word
        .split("")
        .map((char, i) => (i === 0 ? char.toUpperCase() : char.toLowerCase()))
        .join(""),
    )
    .join(" ");
}
