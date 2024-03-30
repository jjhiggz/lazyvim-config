import { ioTransformText } from "../utils/io/io-transform-text";
import { countLines } from "../utils/transform-text/line-count";

ioTransformText((str) => countLines(str).toString());
