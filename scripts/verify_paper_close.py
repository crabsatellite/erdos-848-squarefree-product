#!/usr/bin/env python3
"""Reproduce the exact computational certificates used in the paper.

The verifier checks:

* the exact prefix colouring through 1.5m;
* both exhaustive low-block parity allocations;
* every exact rational diagonal ceiling from 1.5m through 200m; and
* the exact rational controlling row at 5m, 10m, 20m, and 40m.

Floating-point text emitted by the producers is diagnostic only.  Each
producer must finish with its own integer/Fraction-based PASS assertion.
"""

from __future__ import annotations

from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import re
import subprocess
import sys
import tempfile


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"
SOURCE = SCRIPTS / "systematic_concentrated_diagonal_blocks.cpp"

INTERVALS = (
    (1_500_000, 3_000_000),
    (3_000_000, 5_000_000),
    (5_000_000, 10_000_000),
    (10_000_000, 20_000_000),
    (20_000_000, 40_000_000),
    (40_000_000, 50_000_000),
    (50_000_000, 70_000_000),
    (70_000_000, 80_000_000),
    (80_000_000, 100_000_000),
    (100_000_000, 150_000_000),
    (150_000_000, 200_000_000),
)

CERTIFICATES = (
    ("5m", "systematic_mixed_cell_5m_close.py", 67),
    ("10m", "systematic_mixed_cell_10m_paper_close.py", 69),
    ("20m", "systematic_mixed_valuation_20m_close.py", 85),
    ("40m", "systematic_mixed_joint_tail_close.py", 412),
)

def run(command: list[str]) -> str:
    completed = subprocess.run(
        command,
        cwd=ROOT,
        check=True,
        capture_output=True,
        text=True,
    )
    return completed.stdout


def verify_diagonal(executable: Path, interval: tuple[int, int]) -> str:
    lower, upper = interval
    output = run([str(executable), str(lower), str(upper)])
    marker = "# PASS exact rational diagonal ceilings (log(R)+2<19)"
    if marker not in output:
        raise RuntimeError(f"missing diagonal PASS marker on [{lower},{upper})")
    return f"PASS diagonal [{lower},{upper})"


def verify_certificate(row: tuple[str, str, int]) -> str:
    label, filename, required_micro_slack = row
    output = run([sys.executable, str(SCRIPTS / filename)])
    last = next(
        (line for line in reversed(output.splitlines()) if line.startswith("PASS ")),
        "",
    )
    match = re.search(r"exact_slack=([0-9.]+)", last)
    if not match:
        raise RuntimeError(f"{label}: missing exact_slack in final PASS row")
    numerator = int(match.group(1).replace(".", ""))
    scale = 10 ** len(match.group(1).partition(".")[2])
    if numerator * 10**6 <= required_micro_slack * scale:
        raise RuntimeError(
            f"{label}: exact slack does not exceed {required_micro_slack}/10^6"
        )
    return (
        f"PASS {label} controlling row "
        f"(slack>{required_micro_slack}/10^6)"
    )


def verify_auxiliary(row: tuple[str, list[str], str]) -> str:
    label, command, marker = row
    output = run(command)
    if marker not in output:
        raise RuntimeError(f"{label}: missing PASS marker")
    return f"PASS {label}"


def main() -> None:
    with tempfile.TemporaryDirectory(prefix="erdos848-paper-") as build_dir:
        build = Path(build_dir)
        executable = build / "systematic_concentrated_diagonal_blocks"
        auxiliary_sources = (
            (
                SCRIPTS / "systematic_finite_prefix_coloring.cpp",
                build / "systematic_finite_prefix_coloring",
            ),
            (
                SCRIPTS / "systematic_low_high_prime_degree.cpp",
                build / "systematic_low_high_prime_degree",
            ),
            (
                SCRIPTS / "systematic_one_form_medium_exhaustion.cpp",
                build / "systematic_one_form_medium_exhaustion",
            ),
        )
        subprocess.run(
            [
                "g++", "-O3", "-std=c++20", "-fopenmp",
                "-Wall", "-Wextra", "-Wshadow",
                str(SOURCE), "-o", str(executable),
            ],
            cwd=ROOT,
            check=True,
        )
        for source, output in auxiliary_sources:
            subprocess.run(
                [
                    "g++", "-O3", "-std=c++20", "-fopenmp",
                    "-Wall", "-Wextra", "-Wshadow",
                    str(source), "-o", str(output),
                ],
                cwd=ROOT,
                check=True,
            )

        auxiliary_certificates = (
            (
                "prefix through 1.5m",
                [str(auxiliary_sources[0][1])],
                "PASS exact two-matching prefix colouring through 1500000",
            ),
            (
                "low-block high-prime incidence",
                [str(auxiliary_sources[1][1])],
                "PASS exhaustive high-prime one-form incidence upper box",
            ),
            (
                "low-block medium tail",
                [str(auxiliary_sources[2][1])],
                "PASS exhaustive one-form medium-tail degree",
            ),
            (
                "first low parity allocation",
                [sys.executable, str(SCRIPTS / "systematic_low_parity_close.py")],
                "PASS exhaustive parity allocation closes the first low block",
            ),
            (
                "second low parity allocation",
                [
                    sys.executable,
                    str(SCRIPTS / "systematic_second_low_parity_close.py"),
                ],
                "PASS exhaustive parity allocation closes the second low block",
            ),
        )

        with ThreadPoolExecutor(max_workers=9) as pool:
            futures = {
                pool.submit(verify_diagonal, executable, interval): interval
                for interval in INTERVALS
            }
            diagonal_rows = [future.result() for future in as_completed(futures)]
        for row in sorted(diagonal_rows):
            print(row)

        with ThreadPoolExecutor(max_workers=4) as pool:
            futures = {
                pool.submit(verify_certificate, row): row[0]
                for row in CERTIFICATES
            }
            certificate_rows = [
                future.result() for future in as_completed(futures)
            ]
        for row in sorted(certificate_rows):
            print(row)

        with ThreadPoolExecutor(max_workers=5) as pool:
            futures = {
                pool.submit(verify_auxiliary, row): row[0]
                for row in auxiliary_certificates
            }
            auxiliary_rows = [
                future.result() for future in as_completed(futures)
            ]
        for row in sorted(auxiliary_rows):
            print(row)

    print("PASS exact finite and four-range paper certificates")


if __name__ == "__main__":
    main()
