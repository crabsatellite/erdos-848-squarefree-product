#!/usr/bin/env python3
"""Reversible Windows drive mappings for deeply nested verification trees."""

from __future__ import annotations

from contextlib import contextmanager
import ctypes
import os
from pathlib import Path
import subprocess
from typing import Iterator


class WindowsShortPathError(RuntimeError):
    """A temporary Windows drive mapping could not be created or removed."""


def free_drive_letter() -> str:
    """Return an unused drive letter without disturbing existing mappings."""
    if os.name != "nt":
        raise WindowsShortPathError(
            "short drive mappings are only available on Windows"
        )
    used = int(ctypes.windll.kernel32.GetLogicalDrives())
    for letter in "QPONMLKJIHGFEDCBAUVWXY":
        if not (used & (1 << (ord(letter) - ord("A")))):
            return letter
    raise WindowsShortPathError(
        "no free drive letter is available for short-path verification"
    )


@contextmanager
def windows_short_root(root: Path) -> Iterator[Path]:
    """Temporarily expose ``root`` through an unused drive letter."""
    letter = free_drive_letter()
    drive = f"{letter}:"
    mapped = subprocess.run(
        ["subst.exe", drive, str(root)],
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    if mapped.returncode != 0:
        raise WindowsShortPathError(
            f"could not create temporary short-path mapping {drive}: "
            f"{mapped.stdout.strip()}"
        )
    short_root = Path(f"{drive}\\")
    try:
        if not short_root.is_dir() or not os.path.samefile(short_root, root):
            raise WindowsShortPathError(
                f"temporary short-path mapping {drive} does not identify {root}"
            )
        yield short_root
    finally:
        removed = subprocess.run(
            ["subst.exe", drive, "/D"],
            check=False,
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        if removed.returncode != 0:
            raise WindowsShortPathError(
                f"could not remove temporary short-path mapping {drive}: "
                f"{removed.stdout.strip()}"
            )
