#!/usr/bin/env python3
"""Generate original raster crosshairs for SA · AW FPS. Requires Pillow."""
from pathlib import Path
from PIL import Image, ImageDraw

OUT = Path(__file__).resolve().parents[1] / "assets" / "crosshairs"
OUT.mkdir(parents=True, exist_ok=True)


def canvas(size=256):
    return Image.new("RGBA", (size, size), (0, 0, 0, 0))


def save(im, name):
    path = OUT / name
    im.save(path, "PNG")
    print("wrote", path)


def main():
    cx = cy = 128
    im = canvas()
    d = ImageDraw.Draw(im)
    col = (180, 255, 180, 230)
    gap, arm, th = 10, 18, 2
    d.ellipse((cx - 2, cy - 2, cx + 2, cy + 2), fill=col)
    d.rectangle((cx - gap - arm, cy - th, cx - gap, cy + th), fill=col)
    d.rectangle((cx + gap, cy - th, cx + gap + arm, cy + th), fill=col)
    d.rectangle((cx - th, cy - gap - arm, cx + th, cy - gap), fill=col)
    d.rectangle((cx - th, cy + gap, cx + th, cy + gap + arm), fill=col)
    save(im, "aw_default.png")


if __name__ == "__main__":
    main()
