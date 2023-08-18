from math import floor
import sys
from PIL import Image
import os


def compress(filename: str, size: tuple[int, int], compression: int):
    image = Image.open(filename)
    image = image.convert("RGBA")

    original_size = image.size
    scale = max([s / o for s, o in zip(size, original_size)])
    size = (floor(original_size[0] * scale), floor(original_size[1] * scale))

    print(f"Compressing: {filename=} to {size=} with {compression=}")

    resized_image = image.resize(size)

    basename = ".".join(filename.split(".")[:-1])
    compressed_filename = f"{basename}_{size[0]}x{size[1]}.png"
    resized_image.save(compressed_filename, optimize=True, quality=compression)

    print(f"Saved to: {compressed_filename}")

    original_size = os.path.getsize(filename)
    compressed_size = os.path.getsize(compressed_filename)
    compression_ratio = (original_size / compressed_size) * 100

    print(
        f"Compressed: {original_size} -> {compressed_size} ({compression_ratio:.2f}%)"
    )


if __name__ == "__main__":
    size = tuple(int(v) for v in sys.argv[2].split("x"))
    compress(sys.argv[1], size, int(sys.argv[3]))
