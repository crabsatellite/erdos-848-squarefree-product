import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0003

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem tailEnvelope0048One :
    TailDiagonalCellRatioRange 1 6352415 6384177
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6384176 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6384176 (tailEnvelope0048CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0048CountsOne
      (maxCells := 1)
      (lower := 6352415) (upper := 6384176) (N := N)
      (bound := 4497)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6384176 (tailEnvelope0048CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0048CountsThree
      (maxCells := 1)
      (lower := 6352415) (upper := 6384176) (N := N)
      (bound := 4478)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0049One :
    TailDiagonalCellRatioRange 1 6384177 6416097
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6416096 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6416096 (tailEnvelope0049CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0049CountsOne
      (maxCells := 1)
      (lower := 6384177) (upper := 6416096) (N := N)
      (bound := 4517)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6416096 (tailEnvelope0049CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0049CountsThree
      (maxCells := 1)
      (lower := 6384177) (upper := 6416096) (N := N)
      (bound := 4500)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0050One :
    TailDiagonalCellRatioRange 1 6416097 6448177
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6448176 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6448176 (tailEnvelope0050CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0050CountsOne
      (maxCells := 1)
      (lower := 6416097) (upper := 6448176) (N := N)
      (bound := 4541)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6448176 (tailEnvelope0050CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0050CountsThree
      (maxCells := 1)
      (lower := 6416097) (upper := 6448176) (N := N)
      (bound := 4523)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0051One :
    TailDiagonalCellRatioRange 1 6448177 6480417
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6480416 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6480416 (tailEnvelope0051CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0051CountsOne
      (maxCells := 1)
      (lower := 6448177) (upper := 6480416) (N := N)
      (bound := 4562)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6480416 (tailEnvelope0051CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0051CountsThree
      (maxCells := 1)
      (lower := 6448177) (upper := 6480416) (N := N)
      (bound := 4550)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0052One :
    TailDiagonalCellRatioRange 1 6480417 6512819
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6512818 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6512818 (tailEnvelope0052CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0052CountsOne
      (maxCells := 1)
      (lower := 6480417) (upper := 6512818) (N := N)
      (bound := 4584)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6512818 (tailEnvelope0052CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0052CountsThree
      (maxCells := 1)
      (lower := 6480417) (upper := 6512818) (N := N)
      (bound := 4571)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0053One :
    TailDiagonalCellRatioRange 1 6512819 6545383
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6545382 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6545382 (tailEnvelope0053CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0053CountsOne
      (maxCells := 1)
      (lower := 6512819) (upper := 6545382) (N := N)
      (bound := 4607)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6545382 (tailEnvelope0053CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0053CountsThree
      (maxCells := 1)
      (lower := 6512819) (upper := 6545382) (N := N)
      (bound := 4594)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0054One :
    TailDiagonalCellRatioRange 1 6545383 6578109
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6578108 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6578108 (tailEnvelope0054CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0054CountsOne
      (maxCells := 1)
      (lower := 6545383) (upper := 6578108) (N := N)
      (bound := 4629)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6578108 (tailEnvelope0054CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0054CountsThree
      (maxCells := 1)
      (lower := 6545383) (upper := 6578108) (N := N)
      (bound := 4615)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0055One :
    TailDiagonalCellRatioRange 1 6578109 6610999
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6610998 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6610998 (tailEnvelope0055CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0055CountsOne
      (maxCells := 1)
      (lower := 6578109) (upper := 6610998) (N := N)
      (bound := 4651)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6610998 (tailEnvelope0055CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0055CountsThree
      (maxCells := 1)
      (lower := 6578109) (upper := 6610998) (N := N)
      (bound := 4639)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0056One :
    TailDiagonalCellRatioRange 1 6610999 6644053
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6644052 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6644052 (tailEnvelope0056CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0056CountsOne
      (maxCells := 1)
      (lower := 6610999) (upper := 6644052) (N := N)
      (bound := 4675)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6644052 (tailEnvelope0056CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0056CountsThree
      (maxCells := 1)
      (lower := 6610999) (upper := 6644052) (N := N)
      (bound := 4660)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0057One :
    TailDiagonalCellRatioRange 1 6644053 6677273
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6677272 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6677272 (tailEnvelope0057CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0057CountsOne
      (maxCells := 1)
      (lower := 6644053) (upper := 6677272) (N := N)
      (bound := 4696)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6677272 (tailEnvelope0057CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0057CountsThree
      (maxCells := 1)
      (lower := 6644053) (upper := 6677272) (N := N)
      (bound := 4683)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0058One :
    TailDiagonalCellRatioRange 1 6677273 6710659
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6710658 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6710658 (tailEnvelope0058CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0058CountsOne
      (maxCells := 1)
      (lower := 6677273) (upper := 6710658) (N := N)
      (bound := 4719)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6710658 (tailEnvelope0058CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0058CountsThree
      (maxCells := 1)
      (lower := 6677273) (upper := 6710658) (N := N)
      (bound := 4708)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0059One :
    TailDiagonalCellRatioRange 1 6710659 6744212
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6744211 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6744211 (tailEnvelope0059CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0059CountsOne
      (maxCells := 1)
      (lower := 6710659) (upper := 6744211) (N := N)
      (bound := 4745)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6744211 (tailEnvelope0059CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0059CountsThree
      (maxCells := 1)
      (lower := 6710659) (upper := 6744211) (N := N)
      (bound := 4730)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0060One :
    TailDiagonalCellRatioRange 1 6744212 6777933
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6777932 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6777932 (tailEnvelope0060CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0060CountsOne
      (maxCells := 1)
      (lower := 6744212) (upper := 6777932) (N := N)
      (bound := 4767)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6777932 (tailEnvelope0060CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0060CountsThree
      (maxCells := 1)
      (lower := 6744212) (upper := 6777932) (N := N)
      (bound := 4755)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0061One :
    TailDiagonalCellRatioRange 1 6777933 6811822
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6811821 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6811821 (tailEnvelope0061CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0061CountsOne
      (maxCells := 1)
      (lower := 6777933) (upper := 6811821) (N := N)
      (bound := 4788)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6811821 (tailEnvelope0061CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0061CountsThree
      (maxCells := 1)
      (lower := 6777933) (upper := 6811821) (N := N)
      (bound := 4778)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0062One :
    TailDiagonalCellRatioRange 1 6811822 6845881
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6845880 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6845880 (tailEnvelope0062CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0062CountsOne
      (maxCells := 1)
      (lower := 6811822) (upper := 6845880) (N := N)
      (bound := 4813)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6845880 (tailEnvelope0062CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0062CountsThree
      (maxCells := 1)
      (lower := 6811822) (upper := 6845880) (N := N)
      (bound := 4801)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0063One :
    TailDiagonalCellRatioRange 1 6845881 6880110
      (708045205594373 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6880109 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6880109 (tailEnvelope0063CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0063CountsOne
      (maxCells := 1)
      (lower := 6845881) (upper := 6880109) (N := N)
      (bound := 4838)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6880109 (tailEnvelope0063CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0063CountsThree
      (maxCells := 1)
      (lower := 6845881) (upper := 6880109) (N := N)
      (bound := 4826)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
