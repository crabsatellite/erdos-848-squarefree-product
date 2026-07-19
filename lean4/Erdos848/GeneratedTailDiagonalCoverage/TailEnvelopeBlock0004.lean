import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0064CountsOne : Fin 9 → ℕ := ![4832, 4861, 4813, 4842, 4831, 4841, 4818, 4833, 4841]

def tailEnvelope0064CountsThree : Fin 9 → ℕ := ![4847, 4829, 4833, 4833, 4817, 4841, 4838, 4854, 4817]

theorem tailEnvelope0064 :
    TailDiagonalSevenCellRatioRange 6880110 6914510
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6914509 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6914509 (tailEnvelope0064CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0064CountsOne
      (lower := 6880110) (upper := 6914509) (N := N)
      (bound := 33881)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6914509 (tailEnvelope0064CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0064CountsThree
      (lower := 6880110) (upper := 6914509) (N := N)
      (bound := 33875)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0065CountsOne : Fin 9 → ℕ := ![4857, 4880, 4838, 4866, 4853, 4864, 4846, 4861, 4865]

def tailEnvelope0065CountsThree : Fin 9 → ℕ := ![4870, 4858, 4854, 4858, 4842, 4869, 4858, 4874, 4839]

theorem tailEnvelope0065 :
    TailDiagonalSevenCellRatioRange 6914510 6949082
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6949081 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6949081 (tailEnvelope0065CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0065CountsOne
      (lower := 6914510) (upper := 6949081) (N := N)
      (bound := 34046)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6949081 (tailEnvelope0065CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0065CountsThree
      (lower := 6914510) (upper := 6949081) (N := N)
      (bound := 34041)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0066CountsOne : Fin 9 → ℕ := ![4879, 4904, 4865, 4889, 4877, 4887, 4869, 4885, 4884]

def tailEnvelope0066CountsThree : Fin 9 → ℕ := ![4894, 4882, 4877, 4882, 4871, 4891, 4883, 4898, 4868]

theorem tailEnvelope0066 :
    TailDiagonalSevenCellRatioRange 6949082 6983827
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6983826 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6983826 (tailEnvelope0066CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0066CountsOne
      (lower := 6949082) (upper := 6983826) (N := N)
      (bound := 34205)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6983826 (tailEnvelope0066CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0066CountsThree
      (lower := 6949082) (upper := 6983826) (N := N)
      (bound := 34207)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0067CountsOne : Fin 9 → ℕ := ![4905, 4932, 4887, 4913, 4900, 4909, 4893, 4906, 4910]

def tailEnvelope0067CountsThree : Fin 9 → ℕ := ![4919, 4904, 4904, 4906, 4895, 4916, 4909, 4919, 4893]

theorem tailEnvelope0067 :
    TailDiagonalSevenCellRatioRange 6983827 7018746
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7018745 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7018745 (tailEnvelope0067CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0067CountsOne
      (lower := 6983827) (upper := 7018745) (N := N)
      (bound := 34375)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7018745 (tailEnvelope0067CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0067CountsThree
      (lower := 6983827) (upper := 7018745) (N := N)
      (bound := 34377)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0068CountsOne : Fin 9 → ℕ := ![4925, 4954, 4910, 4939, 4926, 4933, 4919, 4933, 4934]

def tailEnvelope0068CountsThree : Fin 9 → ℕ := ![4944, 4927, 4929, 4927, 4920, 4936, 4933, 4946, 4919]

theorem tailEnvelope0068 :
    TailDiagonalSevenCellRatioRange 7018746 7053839
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7053838 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7053838 (tailEnvelope0068CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0068CountsOne
      (lower := 7018746) (upper := 7053838) (N := N)
      (bound := 34544)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7053838 (tailEnvelope0068CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0068CountsThree
      (lower := 7018746) (upper := 7053838) (N := N)
      (bound := 34542)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0069CountsOne : Fin 9 → ℕ := ![4951, 4980, 4933, 4964, 4954, 4958, 4947, 4954, 4958]

def tailEnvelope0069CountsThree : Fin 9 → ℕ := ![4969, 4953, 4951, 4956, 4945, 4959, 4955, 4967, 4945]

theorem tailEnvelope0069 :
    TailDiagonalSevenCellRatioRange 7053839 7089108
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7089107 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7089107 (tailEnvelope0069CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0069CountsOne
      (lower := 7053839) (upper := 7089107) (N := N)
      (bound := 34719)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7089107 (tailEnvelope0069CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0069CountsThree
      (lower := 7053839) (upper := 7089107) (N := N)
      (bound := 34710)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0070CountsOne : Fin 9 → ℕ := ![4976, 5003, 4956, 4989, 4980, 4986, 4967, 4980, 4984]

def tailEnvelope0070CountsThree : Fin 9 → ℕ := ![4997, 4981, 4978, 4980, 4968, 4983, 4979, 4993, 4968]

theorem tailEnvelope0070 :
    TailDiagonalSevenCellRatioRange 7089108 7124553
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7124552 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7124552 (tailEnvelope0070CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0070CountsOne
      (lower := 7089108) (upper := 7124552) (N := N)
      (bound := 34898)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7124552 (tailEnvelope0070CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0070CountsThree
      (lower := 7089108) (upper := 7124552) (N := N)
      (bound := 34891)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0071CountsOne : Fin 9 → ℕ := ![5002, 5028, 4981, 5013, 5005, 5009, 4994, 5008, 5008]

def tailEnvelope0071CountsThree : Fin 9 → ℕ := ![5022, 5004, 5001, 5003, 4994, 5009, 5005, 5020, 4993]

theorem tailEnvelope0071 :
    TailDiagonalSevenCellRatioRange 7124553 7160175
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7160174 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7160174 (tailEnvelope0071CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0071CountsOne
      (lower := 7124553) (upper := 7160174) (N := N)
      (bound := 35073)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7160174 (tailEnvelope0071CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0071CountsThree
      (lower := 7124553) (upper := 7160174) (N := N)
      (bound := 35064)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0072CountsOne : Fin 9 → ℕ := ![5028, 5055, 5006, 5033, 5031, 5033, 5022, 5033, 5033]

def tailEnvelope0072CountsThree : Fin 9 → ℕ := ![5046, 5028, 5025, 5033, 5021, 5034, 5026, 5042, 5015]

theorem tailEnvelope0072 :
    TailDiagonalSevenCellRatioRange 7160175 7195975
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7195974 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7195974 (tailEnvelope0072CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0072CountsOne
      (lower := 7160175) (upper := 7195974) (N := N)
      (bound := 35246)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7195974 (tailEnvelope0072CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0072CountsThree
      (lower := 7160175) (upper := 7195974) (N := N)
      (bound := 35234)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0073CountsOne : Fin 9 → ℕ := ![5055, 5078, 5029, 5056, 5057, 5062, 5048, 5055, 5056]

def tailEnvelope0073CountsThree : Fin 9 → ℕ := ![5070, 5055, 5049, 5057, 5047, 5056, 5054, 5066, 5046]

theorem tailEnvelope0073 :
    TailDiagonalSevenCellRatioRange 7195975 7231954
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7231953 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7231953 (tailEnvelope0073CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0073CountsOne
      (lower := 7195975) (upper := 7231953) (N := N)
      (bound := 35419)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7231953 (tailEnvelope0073CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0073CountsThree
      (lower := 7195975) (upper := 7231953) (N := N)
      (bound := 35407)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0074CountsOne : Fin 9 → ℕ := ![5085, 5100, 5056, 5083, 5080, 5086, 5068, 5083, 5082]

def tailEnvelope0074CountsThree : Fin 9 → ℕ := ![5092, 5081, 5076, 5085, 5071, 5086, 5084, 5095, 5067]

theorem tailEnvelope0074 :
    TailDiagonalSevenCellRatioRange 7231954 7268113
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7268112 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7268112 (tailEnvelope0074CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0074CountsOne
      (lower := 7231954) (upper := 7268112) (N := N)
      (bound := 35599)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7268112 (tailEnvelope0074CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0074CountsThree
      (lower := 7231954) (upper := 7268112) (N := N)
      (bound := 35599)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0075CountsOne : Fin 9 → ℕ := ![5107, 5128, 5083, 5107, 5104, 5113, 5095, 5107, 5107]

def tailEnvelope0075CountsThree : Fin 9 → ℕ := ![5118, 5109, 5104, 5108, 5098, 5108, 5109, 5117, 5093]

theorem tailEnvelope0075 :
    TailDiagonalSevenCellRatioRange 7268113 7304453
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7304452 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7304452 (tailEnvelope0075CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0075CountsOne
      (lower := 7268113) (upper := 7304452) (N := N)
      (bound := 35773)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7304452 (tailEnvelope0075CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0075CountsThree
      (lower := 7268113) (upper := 7304452) (N := N)
      (bound := 35773)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0076CountsOne : Fin 9 → ℕ := ![5132, 5153, 5107, 5135, 5132, 5139, 5119, 5129, 5135]

def tailEnvelope0076CountsThree : Fin 9 → ℕ := ![5143, 5136, 5129, 5129, 5120, 5137, 5135, 5144, 5117]

theorem tailEnvelope0076 :
    TailDiagonalSevenCellRatioRange 7304453 7340975
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7340974 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7340974 (tailEnvelope0076CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0076CountsOne
      (lower := 7304453) (upper := 7340974) (N := N)
      (bound := 35955)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7340974 (tailEnvelope0076CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0076CountsThree
      (lower := 7304453) (upper := 7340974) (N := N)
      (bound := 35953)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0077CountsOne : Fin 9 → ℕ := ![5156, 5182, 5136, 5161, 5155, 5164, 5147, 5155, 5159]

def tailEnvelope0077CountsThree : Fin 9 → ℕ := ![5169, 5163, 5156, 5155, 5150, 5163, 5159, 5169, 5142]

theorem tailEnvelope0077 :
    TailDiagonalSevenCellRatioRange 7340975 7377679
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7377678 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7377678 (tailEnvelope0077CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0077CountsOne
      (lower := 7340975) (upper := 7377678) (N := N)
      (bound := 36132)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7377678 (tailEnvelope0077CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0077CountsThree
      (lower := 7340975) (upper := 7377678) (N := N)
      (bound := 36134)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0078CountsOne : Fin 9 → ℕ := ![5179, 5209, 5160, 5188, 5177, 5193, 5173, 5181, 5183]

def tailEnvelope0078CountsThree : Fin 9 → ℕ := ![5197, 5189, 5182, 5181, 5173, 5187, 5183, 5198, 5170]

theorem tailEnvelope0078 :
    TailDiagonalSevenCellRatioRange 7377679 7414567
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7414566 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7414566 (tailEnvelope0078CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0078CountsOne
      (lower := 7377679) (upper := 7414566) (N := N)
      (bound := 36310)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7414566 (tailEnvelope0078CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0078CountsThree
      (lower := 7377679) (upper := 7414566) (N := N)
      (bound := 36317)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0079CountsOne : Fin 9 → ℕ := ![5207, 5232, 5188, 5214, 5206, 5218, 5199, 5209, 5207]

def tailEnvelope0079CountsThree : Fin 9 → ℕ := ![5221, 5212, 5206, 5209, 5198, 5213, 5209, 5223, 5196]

theorem tailEnvelope0079 :
    TailDiagonalSevenCellRatioRange 7414567 7451639
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7451638 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7451638 (tailEnvelope0079CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0079CountsOne
      (lower := 7414567) (upper := 7451638) (N := N)
      (bound := 36493)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7451638 (tailEnvelope0079CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0079CountsThree
      (lower := 7414567) (upper := 7451638) (N := N)
      (bound := 36493)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
