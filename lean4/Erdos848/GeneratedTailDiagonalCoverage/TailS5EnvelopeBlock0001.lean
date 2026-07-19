import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0001

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem tailEnvelope0016Five :
    TailDiagonalCellRatioRange 5 5415347 5442423
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5442422 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5442422 (tailEnvelope0016CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0016CountsOne
      (maxCells := 5)
      (lower := 5415347) (upper := 5442422) (N := N)
      (bound := 19061)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5442422 (tailEnvelope0016CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0016CountsThree
      (maxCells := 5)
      (lower := 5415347) (upper := 5442422) (N := N)
      (bound := 19060)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0017Five :
    TailDiagonalCellRatioRange 5 5442423 5469635
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5469634 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5469634 (tailEnvelope0017CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0017CountsOne
      (maxCells := 5)
      (lower := 5442423) (upper := 5469634) (N := N)
      (bound := 19156)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5469634 (tailEnvelope0017CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0017CountsThree
      (maxCells := 5)
      (lower := 5442423) (upper := 5469634) (N := N)
      (bound := 19158)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0018Five :
    TailDiagonalCellRatioRange 5 5469635 5496983
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5496982 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5496982 (tailEnvelope0018CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0018CountsOne
      (maxCells := 5)
      (lower := 5469635) (upper := 5496982) (N := N)
      (bound := 19253)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5496982 (tailEnvelope0018CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0018CountsThree
      (maxCells := 5)
      (lower := 5469635) (upper := 5496982) (N := N)
      (bound := 19257)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0019Five :
    TailDiagonalCellRatioRange 5 5496983 5524467
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5524466 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5524466 (tailEnvelope0019CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0019CountsOne
      (maxCells := 5)
      (lower := 5496983) (upper := 5524466) (N := N)
      (bound := 19355)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5524466 (tailEnvelope0019CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0019CountsThree
      (maxCells := 5)
      (lower := 5496983) (upper := 5524466) (N := N)
      (bound := 19353)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0020Five :
    TailDiagonalCellRatioRange 5 5524467 5552089
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5552088 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5552088 (tailEnvelope0020CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0020CountsOne
      (maxCells := 5)
      (lower := 5524467) (upper := 5552088) (N := N)
      (bound := 19454)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5552088 (tailEnvelope0020CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0020CountsThree
      (maxCells := 5)
      (lower := 5524467) (upper := 5552088) (N := N)
      (bound := 19453)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0021Five :
    TailDiagonalCellRatioRange 5 5552089 5579849
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5579848 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5579848 (tailEnvelope0021CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0021CountsOne
      (maxCells := 5)
      (lower := 5552089) (upper := 5579848) (N := N)
      (bound := 19552)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5579848 (tailEnvelope0021CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0021CountsThree
      (maxCells := 5)
      (lower := 5552089) (upper := 5579848) (N := N)
      (bound := 19547)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0022Five :
    TailDiagonalCellRatioRange 5 5579849 5607748
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5607747 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5607747 (tailEnvelope0022CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0022CountsOne
      (maxCells := 5)
      (lower := 5579849) (upper := 5607747) (N := N)
      (bound := 19637)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5607747 (tailEnvelope0022CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0022CountsThree
      (maxCells := 5)
      (lower := 5579849) (upper := 5607747) (N := N)
      (bound := 19646)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0023Five :
    TailDiagonalCellRatioRange 5 5607748 5635786
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5635785 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5635785 (tailEnvelope0023CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0023CountsOne
      (maxCells := 5)
      (lower := 5607748) (upper := 5635785) (N := N)
      (bound := 19744)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5635785 (tailEnvelope0023CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0023CountsThree
      (maxCells := 5)
      (lower := 5607748) (upper := 5635785) (N := N)
      (bound := 19744)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0024Five :
    TailDiagonalCellRatioRange 5 5635786 5663964
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5663963 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5663963 (tailEnvelope0024CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0024CountsOne
      (maxCells := 5)
      (lower := 5635786) (upper := 5663963) (N := N)
      (bound := 19842)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5663963 (tailEnvelope0024CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0024CountsThree
      (maxCells := 5)
      (lower := 5635786) (upper := 5663963) (N := N)
      (bound := 19843)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0025Five :
    TailDiagonalCellRatioRange 5 5663964 5692283
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5692282 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5692282 (tailEnvelope0025CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0025CountsOne
      (maxCells := 5)
      (lower := 5663964) (upper := 5692282) (N := N)
      (bound := 19945)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5692282 (tailEnvelope0025CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0025CountsThree
      (maxCells := 5)
      (lower := 5663964) (upper := 5692282) (N := N)
      (bound := 19943)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0026Five :
    TailDiagonalCellRatioRange 5 5692283 5720744
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5720743 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5720743 (tailEnvelope0026CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0026CountsOne
      (maxCells := 5)
      (lower := 5692283) (upper := 5720743) (N := N)
      (bound := 20038)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5720743 (tailEnvelope0026CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0026CountsThree
      (maxCells := 5)
      (lower := 5692283) (upper := 5720743) (N := N)
      (bound := 20046)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0027Five :
    TailDiagonalCellRatioRange 5 5720744 5749347
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5749346 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5749346 (tailEnvelope0027CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0027CountsOne
      (maxCells := 5)
      (lower := 5720744) (upper := 5749346) (N := N)
      (bound := 20134)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5749346 (tailEnvelope0027CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0027CountsThree
      (maxCells := 5)
      (lower := 5720744) (upper := 5749346) (N := N)
      (bound := 20138)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0028Five :
    TailDiagonalCellRatioRange 5 5749347 5778093
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5778092 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5778092 (tailEnvelope0028CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0028CountsOne
      (maxCells := 5)
      (lower := 5749347) (upper := 5778092) (N := N)
      (bound := 20235)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5778092 (tailEnvelope0028CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0028CountsThree
      (maxCells := 5)
      (lower := 5749347) (upper := 5778092) (N := N)
      (bound := 20236)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0029Five :
    TailDiagonalCellRatioRange 5 5778093 5806983
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5806982 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5806982 (tailEnvelope0029CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0029CountsOne
      (maxCells := 5)
      (lower := 5778093) (upper := 5806982) (N := N)
      (bound := 20341)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5806982 (tailEnvelope0029CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0029CountsThree
      (maxCells := 5)
      (lower := 5778093) (upper := 5806982) (N := N)
      (bound := 20339)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0030Five :
    TailDiagonalCellRatioRange 5 5806983 5836017
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5836016 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5836016 (tailEnvelope0030CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0030CountsOne
      (maxCells := 5)
      (lower := 5806983) (upper := 5836016) (N := N)
      (bound := 20435)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5836016 (tailEnvelope0030CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0030CountsThree
      (maxCells := 5)
      (lower := 5806983) (upper := 5836016) (N := N)
      (bound := 20436)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0031Five :
    TailDiagonalCellRatioRange 5 5836017 5865197
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5865196 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5865196 (tailEnvelope0031CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0031CountsOne
      (maxCells := 5)
      (lower := 5836017) (upper := 5865196) (N := N)
      (bound := 20536)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5865196 (tailEnvelope0031CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0031CountsThree
      (maxCells := 5)
      (lower := 5836017) (upper := 5865196) (N := N)
      (bound := 20544)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
