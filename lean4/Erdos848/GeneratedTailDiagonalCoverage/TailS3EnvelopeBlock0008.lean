import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0008

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem tailEnvelope0128Three :
    TailDiagonalCellRatioRange 3 9467195 9514530
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9467195) (upper := 9514529) (N := N)
      (bound := 19989)
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
      (maxCells := 3)
      (lower := 9467195) (upper := 9514529) (N := N)
      (bound := 19988)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0129Three :
    TailDiagonalCellRatioRange 3 9514530 9562102
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9514530) (upper := 9562101) (N := N)
      (bound := 20084)
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
      (maxCells := 3)
      (lower := 9514530) (upper := 9562101) (N := N)
      (bound := 20084)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0130Three :
    TailDiagonalCellRatioRange 3 9562102 9609912
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9562102) (upper := 9609911) (N := N)
      (bound := 20188)
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
      (maxCells := 3)
      (lower := 9562102) (upper := 9609911) (N := N)
      (bound := 20184)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0131Three :
    TailDiagonalCellRatioRange 3 9609912 9657961
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9609912) (upper := 9657960) (N := N)
      (bound := 20291)
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
      (maxCells := 3)
      (lower := 9609912) (upper := 9657960) (N := N)
      (bound := 20280)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0132Three :
    TailDiagonalCellRatioRange 3 9657961 9706250
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9657961) (upper := 9706249) (N := N)
      (bound := 20399)
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
      (maxCells := 3)
      (lower := 9657961) (upper := 9706249) (N := N)
      (bound := 20390)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0133Three :
    TailDiagonalCellRatioRange 3 9706250 9754781
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9706250) (upper := 9754780) (N := N)
      (bound := 20499)
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
      (maxCells := 3)
      (lower := 9706250) (upper := 9754780) (N := N)
      (bound := 20483)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0134Three :
    TailDiagonalCellRatioRange 3 9754781 9803554
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9754781) (upper := 9803553) (N := N)
      (bound := 20602)
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
      (maxCells := 3)
      (lower := 9754781) (upper := 9803553) (N := N)
      (bound := 20590)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0135Three :
    TailDiagonalCellRatioRange 3 9803554 9852571
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9803554) (upper := 9852570) (N := N)
      (bound := 20705)
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
      (maxCells := 3)
      (lower := 9803554) (upper := 9852570) (N := N)
      (bound := 20691)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0136Three :
    TailDiagonalCellRatioRange 3 9852571 9901833
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9852571) (upper := 9901832) (N := N)
      (bound := 20806)
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
      (maxCells := 3)
      (lower := 9852571) (upper := 9901832) (N := N)
      (bound := 20790)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0137Three :
    TailDiagonalCellRatioRange 3 9901833 9951342
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9901833) (upper := 9951341) (N := N)
      (bound := 20911)
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
      (maxCells := 3)
      (lower := 9901833) (upper := 9951341) (N := N)
      (bound := 20894)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

theorem tailEnvelope0138Three :
    TailDiagonalCellRatioRange 3 9951342 10000000
      (2117479004014482 / 1000000000000000000) := by
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
      (maxCells := 3)
      (lower := 9951342) (upper := 9999999) (N := N)
      (bound := 21002)
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
      (maxCells := 3)
      (lower := 9951342) (upper := 9999999) (N := N)
      (bound := 21000)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
