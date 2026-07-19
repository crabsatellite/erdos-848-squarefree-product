#!/usr/bin/env python3
"""Generate kernel-checked semantic bridges for the mixed support leaves.

The numerical leaves stay untouched.  Each generated `*Sound.lean` module
checks the recorded endpoint and the exact union of mask intervals used by its
local dispatcher, then transports the leaf result to the public checker.

The endpoint uses a direct successor-prime table generated from the exact
ordered support-prime list.  Its mathematical semantics are certified
separately; keeping the table out of every leaf prevents the kernel from
repeating a linear scan of the full prime list for every recorded row.
"""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GENERATED = (
    ROOT
    / "lean4"
    / "Erdos848"
    / "GeneratedTailGlobalMixedSupportCoverage"
)

LEAF_RE = re.compile(r"K(?P<k>[0-8])PrefixGroup(?P<group>\d{4})\.lean$")
THRESHOLD_RE = re.compile(
    r"if p ≤ (?P<bound>\d+) then normalQrMaskWords(?P<data>\d{4}) p else"
)
GLOBAL_THRESHOLD_RE = re.compile(
    r"if p ≤ (?P<bound>\d+) then normalQrMaskWords(?P<data>\d{4}) p else"
)


def write_if_changed(path: Path, content: str) -> bool:
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return False
    path.write_text(content, encoding="utf-8", newline="\n")
    return True


def global_thresholds() -> list[tuple[int, str]]:
    text = (GENERATED / "MaskData.lean").read_text(encoding="utf-8")
    result = [
        (int(match.group("bound")), match.group("data"))
        for match in GLOBAL_THRESHOLD_RE.finditer(text)
    ]
    expected = [f"{index:04d}" for index in range(26)]
    if [data for _bound, data in result] != expected:
        raise RuntimeError("unexpected global QR dispatcher layout")
    return result


GLOBAL_THRESHOLDS = global_thresholds()
GLOBAL_BY_DATA = {
    data: (GLOBAL_THRESHOLDS[index - 1][0] if index else 0, bound)
    for index, (bound, data) in enumerate(GLOBAL_THRESHOLDS)
}


def mixed_support_primes() -> list[int]:
    text = (GENERATED / "Data.lean").read_text(encoding="utf-8")
    start = text.index("def mixedSupportPrimes")
    stop = text.index("def mixedMaskPrimes", start)
    values = [int(value) for value in re.findall(r"\d+", text[start:stop])]
    if not values or values[0] != 3 or values[-1] != 9157:
        raise RuntimeError("unexpected mixed support-prime endpoints")
    if values != sorted(set(values)):
        raise RuntimeError("mixed support-prime list is not strictly increasing")
    return values


MIXED_SUPPORT_PRIMES = mixed_support_primes()
MIXED_EXTENSION_SENTINEL = 9161
MIXED_EXTENSION_GROUP_SIZE = 32


def extension_data_source() -> str:
    inputs = [0, *MIXED_SUPPORT_PRIMES]
    outputs = [*MIXED_SUPPORT_PRIMES, MIXED_EXTENSION_SENTINEL]
    lines = [
        "import Erdos848.GeneratedTailGlobalMixedSupportCoverage.Data",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "",
        "/-- Direct successor-prime table for mixed-support endpoints.  The",
        "separate semantic certificate proves that each recorded value is the",
        "least admissible support prime above its input. -/",
        "def mixedSupportExtensionPrime : ℕ → ℕ",
    ]
    lines.extend(
        f"  | {lower} => {upper}" for lower, upper in zip(inputs, outputs)
    )
    lines += [
        "  | _ => 3",
        "",
        "#print axioms mixedSupportExtensionPrime",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    return "\n".join(lines)


def extension_rows() -> list[tuple[int, int]]:
    inputs = [0, *MIXED_SUPPORT_PRIMES]
    outputs = [*MIXED_SUPPORT_PRIMES, MIXED_EXTENSION_SENTINEL]
    return list(zip(inputs, outputs))


def extension_groups() -> list[list[tuple[int, int]]]:
    rows = extension_rows()
    return [
        rows[index : index + MIXED_EXTENSION_GROUP_SIZE]
        for index in range(0, len(rows), MIXED_EXTENSION_GROUP_SIZE)
    ]


def lean_pair_list(rows: list[tuple[int, int]]) -> list[str]:
    rendered = [f"({lower}, {upper})" for lower, upper in rows]
    width = 8
    lines: list[str] = []
    for index in range(0, len(rendered), width):
        chunk = ", ".join(rendered[index : index + width])
        prefix = "  [" if index == 0 else "   "
        suffix = "]" if index + width >= len(rendered) else ","
        lines.append(f"{prefix}{chunk}{suffix}")
    return lines


def extension_group_source(index: int, rows: list[tuple[int, int]]) -> str:
    ident = f"mixedExtensionSemanticInputs{index:04d}"
    semantic_names: list[str] = []
    lines = [
        "import Erdos848.TailFiveMillionRootSupportClassification",
        "import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        f"def {ident} : List ℕ :=",
        "  [" + ", ".join(str(lower) for lower, _upper in rows) + "]",
        "",
    ]
    for lower, upper in rows:
        eq_name = f"mixedExtensionPrimeEq{lower}"
        semantic_name = f"mixedExtensionSemanticPrime{lower}"
        semantic_names.append(semantic_name)
        lines += [
            f"theorem {eq_name} :",
            f"    mixedSupportExtensionPrime {lower} = {upper} := by",
            "  rfl",
            "",
            f"theorem {semantic_name} :",
            f"    Nat.Prime (mixedSupportExtensionPrime {lower}) ∧",
            f"      {lower} < mixedSupportExtensionPrime {lower} ∧",
            "      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →",
            f"        {lower} < candidate →",
            f"        mixedSupportExtensionPrime {lower} ≤ candidate := by",
            f"  rw [{eq_name}]",
            "  constructor",
            "  · norm_num",
            "  constructor",
            "  · norm_num",
            "  · intro candidate hprime hlower",
            "    by_contra hnot",
            f"    have hupper : candidate < {upper} := Nat.lt_of_not_ge hnot",
            "    interval_cases candidate <;>",
            "      norm_num [Erdos848.FiveMillionSupportPrime] at hprime",
            "",
        ]
    lines += [
        f"theorem {ident}_semantic",
        f"    {{p : ℕ}} (hp : p ∈ {ident}) :",
        "    Nat.Prime (mixedSupportExtensionPrime p) ∧",
        "      p < mixedSupportExtensionPrime p ∧",
        "      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →",
        "        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by",
        f"  simp only [{ident}, List.mem_cons, List.not_mem_nil, or_false] at hp",
        "  rcases hp with " + " | ".join("rfl" for _ in rows),
    ]
    lines.extend(f"  · exact {name}" for name in semantic_names)
    lines += [
        "",
        f"#print axioms {ident}_semantic",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    return "\n".join(lines)


def extension_certificate_source(group_count: int) -> str:
    names = [
        f"mixedExtensionSemanticInputs{index:04d}"
        for index in range(group_count)
    ]
    lines = [
        *(
            "import "
            "Erdos848.GeneratedTailGlobalMixedSupportCoverage."
            f"ExtensionSemanticGroup{index:04d}"
            for index in range(group_count)
        ),
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        "def certifiedMixedExtensionInputs : List ℕ :=",
    ]
    extension_expression = names[-1]
    for name in reversed(names[:-1]):
        extension_expression = f"{name} ++ ({extension_expression})"
    lines.append(f"  {extension_expression}")
    lines += [
        "",
        "theorem certifiedMixedExtensionInputs_eq :",
        "    certifiedMixedExtensionInputs = 0 :: mixedSupportPrimes := by",
        "  rfl",
        "",
        "theorem certifiedMixedExtensionInputs_semantic",
        "    {p : ℕ} (hp : p ∈ certifiedMixedExtensionInputs) :",
        "    Nat.Prime (mixedSupportExtensionPrime p) ∧",
        "      p < mixedSupportExtensionPrime p ∧",
        "      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →",
        "        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by",
        "  unfold certifiedMixedExtensionInputs at hp",
    ]
    for name in names[:-1]:
        lines += [
            "  rcases List.mem_append.mp hp with hp | hp",
            f"  · exact {name}_semantic hp",
        ]
    lines.append(f"  exact {names[-1]}_semantic hp")
    lines += [
        "",
        "theorem mixedSupportExtensionPrime_semantic",
        "    {p : ℕ} (hp : p = 0 ∨ p ∈ mixedSupportPrimes) :",
        "    Nat.Prime (mixedSupportExtensionPrime p) ∧",
        "      p < mixedSupportExtensionPrime p ∧",
        "      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →",
        "        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by",
        "  apply certifiedMixedExtensionInputs_semantic",
        "  rw [certifiedMixedExtensionInputs_eq]",
        "  simpa only [List.mem_cons] using hp",
        "",
        "#print axioms mixedSupportExtensionPrime_semantic",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    return "\n".join(lines)


def dispatch_source(index: int, bound: int, data: str) -> str:
    lower = GLOBAL_THRESHOLDS[index - 1][0] if index else 0
    prior = GLOBAL_THRESHOLDS[:index]

    def theorem(kind: str) -> list[str]:
        global_name = f"{kind}QrMaskWords"
        group_name = f"{kind}QrMaskWords{data}"
        lines = [
            f"theorem {global_name}_eq_group{data}",
            f"    {{p : ℕ}} (hlower : {lower} < p) (hupper : p ≤ {bound}) :",
            f"    {global_name} p = {group_name} p := by",
        ]
        hnames: list[str] = []
        for prior_index, (prior_bound, _prior_data) in enumerate(prior):
            hname = f"h{prior_index}"
            hnames.append(hname)
            lines.append(f"  have {hname} : ¬ p ≤ {prior_bound} := by omega")
        args = ", ".join([global_name, *hnames, "hupper"])
        lines.append(f"  simp [{args}]")
        return lines

    lines = [
        "import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        *theorem("normal"),
        "",
        *theorem("twist"),
        "",
        f"#print axioms twistQrMaskWords_eq_group{data}",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    return "\n".join(lines)


def threshold_runs(
    thresholds: list[tuple[int, str]],
) -> list[tuple[int, int]]:
    if not thresholds:
        return []
    runs: list[tuple[int, int]] = []
    start = 0
    for index in range(1, len(thresholds)):
        previous_data = int(thresholds[index - 1][1])
        current_data = int(thresholds[index][1])
        if current_data != previous_data + 1:
            runs.append((start, index))
            start = index
    runs.append((start, len(thresholds)))
    return runs


def mask_domain_lines(domain: str, thresholds: list[tuple[int, str]]) -> list[str]:
    if not thresholds:
        lines = [f"def {domain} (_p : ℕ) : Prop := False"]
    else:
        lines = [f"def {domain} (p : ℕ) : Prop :="]
        runs = threshold_runs(thresholds)
        for run_index, (start, stop) in enumerate(runs):
            first_bound, first_data = thresholds[start]
            last_bound, _last_data = thresholds[stop - 1]
            lower, expected_bound = GLOBAL_BY_DATA[first_data]
            if first_bound != expected_bound:
                raise RuntimeError((first_data, first_bound, expected_bound))
            suffix = " ∨" if run_index + 1 < len(runs) else ""
            lines.append(f"  ({lower} < p ∧ p ≤ {last_bound}){suffix}")
    lines += [
        "",
        f"instance {domain}Decidable (p : ℕ) : Decidable ({domain} p) := by",
        f"  unfold {domain}",
        "  infer_instance",
    ]
    return lines


def local_run_theorem(
    local_name: str,
    kind: str,
    thresholds: list[tuple[int, str]],
    run_index: int,
    start: int,
    stop: int,
) -> list[str]:
    first_bound, first_data = thresholds[start]
    lower, expected_bound = GLOBAL_BY_DATA[first_data]
    if first_bound != expected_bound:
        raise RuntimeError((first_data, first_bound, expected_bound))
    last_bound, _last_data = thresholds[stop - 1]
    theorem_name = f"{local_name}_eq_global_run{run_index:02d}"
    global_name = f"{kind}QrMaskWords"
    lines = [
        f"theorem {theorem_name}",
        f"    {{p : ℕ}} (hlower : {lower} < p) (hupper : p ≤ {last_bound}) :",
        f"    {local_name} p = {global_name} p := by",
    ]
    prior_names: list[str] = []
    for prior_index, (prior_bound, _prior_data) in enumerate(thresholds[:start]):
        hname = f"hprior{prior_index}"
        prior_names.append(hname)
        lines.append(f"  have {hname} : ¬ p ≤ {prior_bound} := by omega")
    case_names: list[str] = []
    current = thresholds[start:stop]
    for case_index, (bound, data) in enumerate(current[:-1]):
        hname = f"hcase{case_index}"
        lines.append(f"  by_cases {hname} : p ≤ {bound}")
        args = ", ".join([local_name, *prior_names, *case_names, hname])
        lines += [
            f"  · have hlocal : {local_name} p = {kind}QrMaskWords{data} p := by",
            f"      simp [{args}]",
            f"    exact hlocal.trans ({global_name}_eq_group{data} (by omega) {hname}).symm",
        ]
        case_names.append(hname)
    final_bound, final_data = current[-1]
    if final_bound != last_bound:
        raise RuntimeError((final_bound, last_bound))
    args = ", ".join([local_name, *prior_names, *case_names, "hupper"])
    lines += [
        f"  have hlocal : {local_name} p = {kind}QrMaskWords{final_data} p := by",
        f"    simp [{args}]",
        f"  exact hlocal.trans ({global_name}_eq_group{final_data} (by omega) hupper).symm",
    ]
    return lines


def local_global_theorem(
    local_name: str,
    kind: str,
    domain: str,
    thresholds: list[tuple[int, str]],
) -> list[str]:
    global_name = f"{kind}QrMaskWords"
    runs = threshold_runs(thresholds)
    lines: list[str] = []
    for run_index, (start, stop) in enumerate(runs):
        lines += local_run_theorem(
            local_name, kind, thresholds, run_index, start, stop
        ) + [""]
    lines += [
        f"theorem {local_name}_eq_global",
        f"    {{p : ℕ}} (hp : {domain} p) :",
        f"    {local_name} p = {global_name} p := by",
    ]
    if not thresholds:
        lines.append(f"  exact False.elim hp")
        return lines
    if len(runs) > 1:
        lines.append("  rcases hp with " + " | ".join("hp" for _ in runs))
    branches = [
        f"exact {local_name}_eq_global_run{run_index:02d} hp.1 hp.2"
        for run_index in range(len(runs))
    ]
    if len(runs) == 1:
        lines.append(f"  {branches[0]}")
    else:
        lines.extend(f"  · {branch}" for branch in branches)
    return lines


def bridge_source(source: Path) -> tuple[str, int, str, str]:
    match = LEAF_RE.fullmatch(source.name)
    if match is None:
        raise ValueError(source)
    k = int(match.group("k"))
    group = match.group("group")
    stem = source.stem
    ident = stem[0].lower() + stem[1:]
    text = source.read_text(encoding="utf-8")
    thresholds = [
        (int(m.group("bound")), m.group("data"))
        for m in THRESHOLD_RE.finditer(text)
    ]
    normal_local = f"{ident}NormalLookup"
    twist_local = f"{ident}TwistLookup"
    mask_domain = f"{ident}MaskDomain"
    endpoint_passes = f"{ident}EndpointPasses"
    mask_passes = f"{ident}MaskPasses"

    lines = [
        "import Erdos848.TailGlobalMixedCoreBridge",
        f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{stem}",
        *(
            f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup{data}"
            for _bound, data in thresholds
        ),
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        *mask_domain_lines(mask_domain, thresholds),
        "",
        f"def {endpoint_passes} (row : List ℕ × ℕ) : Bool :=",
        "  decide (Erdos848.globalMixedSupportEndpoint row.1 =",
        "    max 5_000_000 (row.1.prod * row.2))",
        "",
        f"def {mask_passes} (row : List ℕ × ℕ) : Bool :=",
        "    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>",
        f"      decide ({mask_domain} p)",
        "",
        f"theorem {ident}_endpoint_passes :",
        f"    {ident}.all {endpoint_passes} = true := by",
        "  rfl",
        "",
        f"theorem {ident}_mask_passes :",
        f"    {ident}.all {mask_passes} = true := by",
        "  rfl",
        "",
        *local_global_theorem(
            normal_local, "normal", mask_domain, thresholds
        ),
        "",
        *local_global_theorem(
            twist_local, "twist", mask_domain, thresholds
        ),
        "",
        f"theorem {ident}_standard_passes",
        f"    (row : List ℕ × ℕ) (hrow : row ∈ {ident}) :",
        f"    Erdos848.globalMixedSupportPrefixPasses {k} row.1 = true := by",
        "  have hendpointPass := (List.all_eq_true.mp",
        f"    {ident}_endpoint_passes) row hrow",
        "  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =",
        "      max 5_000_000 (row.1.prod * row.2) :=",
        "    of_decide_eq_true hendpointPass",
        "  have hmask := (List.all_eq_true.mp",
        f"    {ident}_mask_passes) row hrow",
        "  have hsupport : ∀ p ∈",
        "      row.1.filter (fun p => decide (p ≤ 2843)),",
        f"      {mask_domain} p := by",
        "    intro p hp",
        "    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)",
        f"  have hleaf := (List.all_eq_true.mp {ident}_passes) row hrow",
        f"  unfold {ident}Passes at hleaf",
        "  rw [← hendpoint] at hleaf",
        "  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr",
        f"    {normal_local} normalQrMaskWords",
        f"    {twist_local} twistQrMaskWords {k}",
        "    (Erdos848.globalMixedSupportEndpoint row.1) row.1",
        f"    (fun p hp => {normal_local}_eq_global",
        "      (hsupport p hp))",
        f"    (fun p hp => {twist_local}_eq_global",
        "      (hsupport p hp))",
        "  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf",
        "  exact hleaf",
        "",
        f"#print axioms {ident}_standard_passes",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    return "\n".join(lines), k, stem, ident


def main() -> None:
    leaves = sorted(
        path
        for path in GENERATED.glob("K*PrefixGroup*.lean")
        if not path.stem.endswith("Sound") and LEAF_RE.fullmatch(path.name)
    )
    changed = 0
    changed += write_if_changed(
        GENERATED / "ExtensionData.lean", extension_data_source()
    )
    groups = extension_groups()
    for index, rows in enumerate(groups):
        changed += write_if_changed(
            GENERATED / f"ExtensionSemanticGroup{index:04d}.lean",
            extension_group_source(index, rows),
        )
    changed += write_if_changed(
        GENERATED / "ExtensionSemanticCertificate.lean",
        extension_certificate_source(len(groups)),
    )
    dispatch_names: list[str] = []
    for index, (bound, data) in enumerate(GLOBAL_THRESHOLDS):
        name = f"MaskDispatchGroup{data}"
        dispatch_names.append(name)
        changed += write_if_changed(
            GENERATED / f"{name}.lean", dispatch_source(index, bound, data)
        )
    dispatch_certificate = [
        f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{name}"
        for name in dispatch_names
    ] + [
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "#print axioms twistQrMaskWords_eq_group0025",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    changed += write_if_changed(
        GENERATED / "MaskDispatchCertificate.lean",
        "\n".join(dispatch_certificate),
    )

    by_k: dict[int, list[tuple[str, str]]] = {k: [] for k in range(9)}
    for source in leaves:
        content, k, stem, ident = bridge_source(source)
        target = source.with_name(f"{stem}Sound.lean")
        changed += write_if_changed(target, content)
        by_k[k].append((stem, ident))

    for k, entries in by_k.items():
        imports = [
            f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{stem}Sound"
            for stem, _ident in entries
        ]
        imports.append("import Erdos848.TailGlobalMixedCoverageBridge")
        body = imports + [
            "",
            "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
            "set_option maxHeartbeats 0",
            "set_option maxRecDepth 1000000",
            "",
        ]
        if entries:
            certified = f"k{k}StandardCertifiedPrefixes"
            body += [
                f"def {certified} : List (List ℕ) :=",
            ]
            for index, (_stem, ident) in enumerate(entries):
                suffix = " ++" if index + 1 < len(entries) else ""
                body.append(f"  {ident}.map Prod.fst{suffix}")
            body += [
                "",
                f"theorem {certified}_eq :",
                f"    {certified} =",
                f"      Erdos848.globalMixedFeasiblePrefixesKernel {k} := by",
                "  rfl",
                "",
            ]
            group_all_names: list[str] = []
            for _stem, ident in entries:
                all_name = f"{ident}_standard_all"
                group_all_names.append(all_name)
                body += [
                    f"theorem {all_name} :",
                    f"    ({ident}.map Prod.fst).all",
                    f"      (Erdos848.globalMixedSupportPrefixPasses {k}) = true := by",
                    "  exact Erdos848.all_map_fst_eq_true_of_forall_mem",
                    f"    {ident}_standard_passes",
                    "",
                ]
            body += [
                f"theorem {certified}_pass :",
                f"    {certified}.all",
                f"      (Erdos848.globalMixedSupportPrefixPasses {k}) = true := by",
            ]
            if len(entries) == 1:
                body.append(f"  exact {group_all_names[0]}")
            else:
                body.append(f"  simp only [{certified}, List.all_append]")
                body.extend(f"  rw [{name}]" for name in group_all_names)
                body.append("  rfl")
            body += [
                "",
                f"theorem k{k}FeasiblePrefixes_standard_pass :",
                f"    (Erdos848.globalMixedFeasiblePrefixesKernel {k}).all",
                f"      (Erdos848.globalMixedSupportPrefixPasses {k}) = true := by",
                f"  rw [← {certified}_eq]",
                f"  exact {certified}_pass",
                "",
                f"#print axioms k{k}FeasiblePrefixes_standard_pass",
            ]
        body += [
            "",
            "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
        ]
        changed += write_if_changed(
            GENERATED / f"K{k}SoundCertificate.lean", "\n".join(body)
        )

    top = [
        f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K{k}SoundCertificate"
        for k in range(9)
    ] + [
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "#print axioms k8FeasiblePrefixes_standard_pass",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    changed += write_if_changed(
        GENERATED / "SoundCertificate.lean", "\n".join(top)
    )
    print(f"generated {len(leaves)} sound bridges; changed {changed} files")


if __name__ == "__main__":
    main()
