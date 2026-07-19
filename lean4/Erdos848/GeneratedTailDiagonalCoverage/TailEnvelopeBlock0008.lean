import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0128CountsOne : Fin 9 → ℕ := ![6641, 6678, 6625, 6653, 6631, 6658, 6651, 6651, 6647]

def tailEnvelope0128CountsThree : Fin 9 → ℕ := ![6667, 6638, 6650, 6660, 6645, 6654, 6655, 6661, 6642]

theorem tailEnvelope0128 :
    TailDiagonalSevenCellRatioRange 9467195 9514530
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9514529 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9514529 (tailEnvelope0128CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0128CountsOne
      (lower := 9467195) (upper := 9514529) (N := N)
      (bound := 46579)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0128CountsThree
      (lower := 9467195) (upper := 9514529) (N := N)
      (bound := 46592)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0129CountsOne : Fin 9 → ℕ := ![6680, 6710, 6659, 6682, 6665, 6691, 6682, 6683, 6682]

def tailEnvelope0129CountsThree : Fin 9 → ℕ := ![6700, 6670, 6683, 6692, 6679, 6689, 6682, 6692, 6674]

theorem tailEnvelope0129 :
    TailDiagonalSevenCellRatioRange 9514530 9562102
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9562101 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9562101 (tailEnvelope0129CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0129CountsOne
      (lower := 9514530) (upper := 9562101) (N := N)
      (bound := 46810)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0129CountsThree
      (lower := 9514530) (upper := 9562101) (N := N)
      (bound := 46817)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0130CountsOne : Fin 9 → ℕ := ![6710, 6744, 6689, 6716, 6698, 6726, 6713, 6717, 6718]

def tailEnvelope0130CountsThree : Fin 9 → ℕ := ![6734, 6703, 6716, 6722, 6717, 6724, 6719, 6726, 6703]

theorem tailEnvelope0130 :
    TailDiagonalSevenCellRatioRange 9562102 9609912
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9609911 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9609911 (tailEnvelope0130CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0130CountsOne
      (lower := 9562102) (upper := 9609911) (N := N)
      (bound := 47044)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0130CountsThree
      (lower := 9562102) (upper := 9609911) (N := N)
      (bound := 47058)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0131CountsOne : Fin 9 → ℕ := ![6743, 6780, 6725, 6752, 6731, 6759, 6747, 6752, 6751]

def tailEnvelope0131CountsThree : Fin 9 → ℕ := ![6764, 6736, 6745, 6756, 6746, 6756, 6755, 6760, 6740]

theorem tailEnvelope0131 :
    TailDiagonalSevenCellRatioRange 9609912 9657961
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9657960 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9657960 (tailEnvelope0131CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0131CountsOne
      (lower := 9609912) (upper := 9657960) (N := N)
      (bound := 47284)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0131CountsThree
      (lower := 9609912) (upper := 9657960) (N := N)
      (bound := 47282)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0132CountsOne : Fin 9 → ℕ := ![6773, 6817, 6760, 6787, 6766, 6795, 6783, 6783, 6786]

def tailEnvelope0132CountsThree : Fin 9 → ℕ := ![6801, 6769, 6773, 6787, 6783, 6794, 6787, 6795, 6774]

theorem tailEnvelope0132 :
    TailDiagonalSevenCellRatioRange 9657961 9706250
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9706249 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9706249 (tailEnvelope0132CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0132CountsOne
      (lower := 9657961) (upper := 9706249) (N := N)
      (bound := 47524)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0132CountsThree
      (lower := 9657961) (upper := 9706249) (N := N)
      (bound := 47521)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0133CountsOne : Fin 9 → ℕ := ![6813, 6848, 6795, 6819, 6800, 6832, 6819, 6814, 6819]

def tailEnvelope0133CountsThree : Fin 9 → ℕ := ![6827, 6805, 6814, 6823, 6814, 6825, 6822, 6831, 6809]

theorem tailEnvelope0133 :
    TailDiagonalSevenCellRatioRange 9706250 9754781
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9754780 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9754780 (tailEnvelope0133CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0133CountsOne
      (lower := 9706250) (upper := 9754780) (N := N)
      (bound := 47764)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0133CountsThree
      (lower := 9706250) (upper := 9754780) (N := N)
      (bound := 47756)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0134CountsOne : Fin 9 → ℕ := ![6848, 6883, 6832, 6850, 6835, 6864, 6852, 6848, 6855]

def tailEnvelope0134CountsThree : Fin 9 → ℕ := ![6867, 6839, 6848, 6856, 6845, 6860, 6854, 6863, 6838]

theorem tailEnvelope0134 :
    TailDiagonalSevenCellRatioRange 9754781 9803554
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9803553 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9803553 (tailEnvelope0134CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0134CountsOne
      (lower := 9754781) (upper := 9803553) (N := N)
      (bound := 48000)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0134CountsThree
      (lower := 9754781) (upper := 9803553) (N := N)
      (bound := 47993)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0135CountsOne : Fin 9 → ℕ := ![6885, 6917, 6866, 6882, 6869, 6898, 6890, 6883, 6889]

def tailEnvelope0135CountsThree : Fin 9 → ℕ := ![6900, 6874, 6886, 6889, 6881, 6892, 6886, 6899, 6873]

theorem tailEnvelope0135 :
    TailDiagonalSevenCellRatioRange 9803554 9852571
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9852570 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9852570 (tailEnvelope0135CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0135CountsOne
      (lower := 9803554) (upper := 9852570) (N := N)
      (bound := 48244)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0135CountsThree
      (lower := 9803554) (upper := 9852570) (N := N)
      (bound := 48233)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0136CountsOne : Fin 9 → ℕ := ![6919, 6949, 6900, 6920, 6907, 6934, 6923, 6919, 6919]

def tailEnvelope0136CountsThree : Fin 9 → ℕ := ![6931, 6906, 6918, 6922, 6914, 6929, 6925, 6930, 6909]

theorem tailEnvelope0136 :
    TailDiagonalSevenCellRatioRange 9852571 9901833
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9901832 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9901832 (tailEnvelope0136CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0136CountsOne
      (lower := 9852571) (upper := 9901832) (N := N)
      (bound := 48483)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0136CountsThree
      (lower := 9852571) (upper := 9901832) (N := N)
      (bound := 48469)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0137CountsOne : Fin 9 → ℕ := ![6953, 6983, 6936, 6953, 6943, 6970, 6958, 6952, 6953]

def tailEnvelope0137CountsThree : Fin 9 → ℕ := ![6965, 6941, 6954, 6957, 6946, 6962, 6958, 6967, 6944]

theorem tailEnvelope0137 :
    TailDiagonalSevenCellRatioRange 9901833 9951342
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9951341 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9951341 (tailEnvelope0137CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0137CountsOne
      (lower := 9901833) (upper := 9951341) (N := N)
      (bound := 48722)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0137CountsThree
      (lower := 9901833) (upper := 9951341) (N := N)
      (bound := 48709)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0138CountsOne : Fin 9 → ℕ := ![6986, 7014, 6973, 6989, 6978, 6999, 6989, 6984, 6987]

def tailEnvelope0138CountsThree : Fin 9 → ℕ := ![7003, 6976, 6989, 6991, 6987, 6997, 6991, 7000, 6978]

theorem tailEnvelope0138 :
    TailDiagonalSevenCellRatioRange 9951342 10000000
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9999999 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9999999 (tailEnvelope0138CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0138CountsOne
      (lower := 9951342) (upper := 9999999) (N := N)
      (bound := 48948)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0138CountsThree
      (lower := 9951342) (upper := 9999999) (N := N)
      (bound := 48958)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
