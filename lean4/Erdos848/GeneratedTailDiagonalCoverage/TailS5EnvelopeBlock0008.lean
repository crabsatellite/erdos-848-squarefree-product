import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0008

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem tailEnvelope0128Five :
    TailDiagonalCellRatioRange 5 9467195 9514530
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9514529 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9514529 (tailEnvelope0128CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0128CountsOne
      (maxCells := 5)
      (lower := 9467195) (upper := 9514529) (N := N)
      (bound := 33291)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9514529 (tailEnvelope0128CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0128CountsThree
      (maxCells := 5)
      (lower := 9467195) (upper := 9514529) (N := N)
      (bound := 33297)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0129Five :
    TailDiagonalCellRatioRange 5 9514530 9562102
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9562101 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9562101 (tailEnvelope0129CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0129CountsOne
      (maxCells := 5)
      (lower := 9514530) (upper := 9562101) (N := N)
      (bound := 33448)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9562101 (tailEnvelope0129CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0129CountsThree
      (maxCells := 5)
      (lower := 9514530) (upper := 9562101) (N := N)
      (bound := 33456)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0130Five :
    TailDiagonalCellRatioRange 5 9562102 9609912
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9609911 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9609911 (tailEnvelope0130CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0130CountsOne
      (maxCells := 5)
      (lower := 9562102) (upper := 9609911) (N := N)
      (bound := 33621)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9609911 (tailEnvelope0130CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0130CountsThree
      (maxCells := 5)
      (lower := 9562102) (upper := 9609911) (N := N)
      (bound := 33625)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0131Five :
    TailDiagonalCellRatioRange 5 9609912 9657961
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9657960 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9657960 (tailEnvelope0131CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0131CountsOne
      (maxCells := 5)
      (lower := 9609912) (upper := 9657960) (N := N)
      (bound := 33794)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9657960 (tailEnvelope0131CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0131CountsThree
      (maxCells := 5)
      (lower := 9609912) (upper := 9657960) (N := N)
      (bound := 33791)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0132Five :
    TailDiagonalCellRatioRange 5 9657961 9706250
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9706249 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9706249 (tailEnvelope0132CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0132CountsOne
      (maxCells := 5)
      (lower := 9657961) (upper := 9706249) (N := N)
      (bound := 33968)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9706249 (tailEnvelope0132CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0132CountsThree
      (maxCells := 5)
      (lower := 9657961) (upper := 9706249) (N := N)
      (bound := 33964)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0133Five :
    TailDiagonalCellRatioRange 5 9706250 9754781
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9754780 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9754780 (tailEnvelope0133CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0133CountsOne
      (maxCells := 5)
      (lower := 9706250) (upper := 9754780) (N := N)
      (bound := 34137)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9754780 (tailEnvelope0133CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0133CountsThree
      (maxCells := 5)
      (lower := 9706250) (upper := 9754780) (N := N)
      (bound := 34128)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0134Five :
    TailDiagonalCellRatioRange 5 9754781 9803554
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9803553 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9803553 (tailEnvelope0134CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0134CountsOne
      (maxCells := 5)
      (lower := 9754781) (upper := 9803553) (N := N)
      (bound := 34304)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9803553 (tailEnvelope0134CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0134CountsThree
      (maxCells := 5)
      (lower := 9754781) (upper := 9803553) (N := N)
      (bound := 34300)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0135Five :
    TailDiagonalCellRatioRange 5 9803554 9852571
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9852570 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9852570 (tailEnvelope0135CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0135CountsOne
      (maxCells := 5)
      (lower := 9803554) (upper := 9852570) (N := N)
      (bound := 34479)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9852570 (tailEnvelope0135CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0135CountsThree
      (maxCells := 5)
      (lower := 9803554) (upper := 9852570) (N := N)
      (bound := 34466)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0136Five :
    TailDiagonalCellRatioRange 5 9852571 9901833
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9901832 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9901832 (tailEnvelope0136CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0136CountsOne
      (maxCells := 5)
      (lower := 9852571) (upper := 9901832) (N := N)
      (bound := 34645)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9901832 (tailEnvelope0136CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0136CountsThree
      (maxCells := 5)
      (lower := 9852571) (upper := 9901832) (N := N)
      (bound := 34637)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0137Five :
    TailDiagonalCellRatioRange 5 9901833 9951342
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9951341 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9951341 (tailEnvelope0137CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0137CountsOne
      (maxCells := 5)
      (lower := 9901833) (upper := 9951341) (N := N)
      (bound := 34817)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9951341 (tailEnvelope0137CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0137CountsThree
      (maxCells := 5)
      (lower := 9901833) (upper := 9951341) (N := N)
      (bound := 34809)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0138Five :
    TailDiagonalCellRatioRange 5 9951342 10000000
      (3523600000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9999999 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9999999 (tailEnvelope0138CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0138CountsOne
      (maxCells := 5)
      (lower := 9951342) (upper := 9999999) (N := N)
      (bound := 34978)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9999999 (tailEnvelope0138CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0138CountsThree
      (maxCells := 5)
      (lower := 9951342) (upper := 9999999) (N := N)
      (bound := 34982)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
