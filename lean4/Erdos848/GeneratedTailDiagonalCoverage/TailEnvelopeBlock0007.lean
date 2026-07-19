import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0112CountsOne : Fin 9 → ℕ := ![6131, 6164, 6117, 6146, 6127, 6142, 6136, 6140, 6144]

def tailEnvelope0112CountsThree : Fin 9 → ℕ := ![6150, 6131, 6138, 6145, 6131, 6148, 6146, 6153, 6136]

theorem tailEnvelope0112 :
    TailDiagonalSevenCellRatioRange 8741072 8784777
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8784776 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8784776 (tailEnvelope0112CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0112CountsOne
      (lower := 8741072) (upper := 8784776) (N := N)
      (bound := 43003)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8784776 (tailEnvelope0112CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0112CountsThree
      (lower := 8741072) (upper := 8784776) (N := N)
      (bound := 43016)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0113CountsOne : Fin 9 → ℕ := ![6165, 6198, 6144, 6173, 6165, 6175, 6165, 6171, 6174]

def tailEnvelope0113CountsThree : Fin 9 → ℕ := ![6178, 6164, 6169, 6177, 6160, 6179, 6177, 6183, 6166]

theorem tailEnvelope0113 :
    TailDiagonalSevenCellRatioRange 8784777 8828700
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8828699 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8828699 (tailEnvelope0113CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0113CountsOne
      (lower := 8784777) (upper := 8828699) (N := N)
      (bound := 43221)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8828699 (tailEnvelope0113CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0113CountsThree
      (lower := 8784777) (upper := 8828699) (N := N)
      (bound := 43229)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0114CountsOne : Fin 9 → ℕ := ![6197, 6228, 6176, 6207, 6192, 6209, 6193, 6203, 6202]

def tailEnvelope0114CountsThree : Fin 9 → ℕ := ![6213, 6195, 6199, 6206, 6193, 6208, 6210, 6211, 6199]

theorem tailEnvelope0114 :
    TailDiagonalSevenCellRatioRange 8828700 8872843
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8872842 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8872842 (tailEnvelope0114CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0114CountsOne
      (lower := 8828700) (upper := 8872842) (N := N)
      (bound := 43439)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8872842 (tailEnvelope0114CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0114CountsThree
      (lower := 8828700) (upper := 8872842) (N := N)
      (bound := 43446)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0115CountsOne : Fin 9 → ℕ := ![6222, 6260, 6207, 6236, 6225, 6238, 6231, 6228, 6234]

def tailEnvelope0115CountsThree : Fin 9 → ℕ := ![6247, 6225, 6228, 6235, 6226, 6239, 6238, 6241, 6230]

theorem tailEnvelope0115 :
    TailDiagonalSevenCellRatioRange 8872843 8917207
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8917206 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8917206 (tailEnvelope0115CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0115CountsOne
      (lower := 8872843) (upper := 8917206) (N := N)
      (bound := 43652)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8917206 (tailEnvelope0115CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0115CountsThree
      (lower := 8872843) (upper := 8917206) (N := N)
      (bound := 43658)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0116CountsOne : Fin 9 → ℕ := ![6260, 6292, 6239, 6261, 6254, 6271, 6262, 6260, 6262]

def tailEnvelope0116CountsThree : Fin 9 → ℕ := ![6271, 6259, 6263, 6270, 6253, 6267, 6273, 6275, 6260]

theorem tailEnvelope0116 :
    TailDiagonalSevenCellRatioRange 8917207 8961793
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8961792 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8961792 (tailEnvelope0116CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0116CountsOne
      (lower := 8917207) (upper := 8961792) (N := N)
      (bound := 43868)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8961792 (tailEnvelope0116CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0116CountsThree
      (lower := 8917207) (upper := 8961792) (N := N)
      (bound := 43879)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0117CountsOne : Fin 9 → ℕ := ![6287, 6322, 6269, 6298, 6282, 6306, 6294, 6296, 6294]

def tailEnvelope0117CountsThree : Fin 9 → ℕ := ![6308, 6287, 6297, 6300, 6285, 6297, 6305, 6305, 6286]

theorem tailEnvelope0117 :
    TailDiagonalSevenCellRatioRange 8961793 9006601
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9006600 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9006600 (tailEnvelope0117CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0117CountsOne
      (lower := 8961793) (upper := 9006600) (N := N)
      (bound := 44097)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9006600 (tailEnvelope0117CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0117CountsThree
      (lower := 8961793) (upper := 9006600) (N := N)
      (bound := 44099)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0118CountsOne : Fin 9 → ℕ := ![6320, 6351, 6301, 6329, 6315, 6335, 6327, 6327, 6330]

def tailEnvelope0118CountsThree : Fin 9 → ℕ := ![6339, 6318, 6327, 6331, 6315, 6329, 6336, 6336, 6312]

theorem tailEnvelope0118 :
    TailDiagonalSevenCellRatioRange 9006601 9051634
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9051633 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9051633 (tailEnvelope0118CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0118CountsOne
      (lower := 9006601) (upper := 9051633) (N := N)
      (bound := 44319)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9051633 (tailEnvelope0118CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0118CountsThree
      (lower := 9006601) (upper := 9051633) (N := N)
      (bound := 44316)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0119CountsOne : Fin 9 → ℕ := ![6350, 6383, 6338, 6361, 6344, 6366, 6356, 6357, 6359]

def tailEnvelope0119CountsThree : Fin 9 → ℕ := ![6375, 6349, 6355, 6366, 6348, 6365, 6366, 6368, 6344]

theorem tailEnvelope0119 :
    TailDiagonalSevenCellRatioRange 9051634 9096892
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9096891 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9096891 (tailEnvelope0119CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0119CountsOne
      (lower := 9051634) (upper := 9096891) (N := N)
      (bound := 44532)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9096891 (tailEnvelope0119CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0119CountsThree
      (lower := 9051634) (upper := 9096891) (N := N)
      (bound := 44544)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0120CountsOne : Fin 9 → ℕ := ![6384, 6416, 6368, 6392, 6372, 6399, 6385, 6391, 6390]

def tailEnvelope0120CountsThree : Fin 9 → ℕ := ![6404, 6380, 6386, 6399, 6384, 6397, 6400, 6402, 6375]

theorem tailEnvelope0120 :
    TailDiagonalSevenCellRatioRange 9096892 9142376
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9142375 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9142375 (tailEnvelope0120CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0120CountsOne
      (lower := 9096892) (upper := 9142375) (N := N)
      (bound := 44757)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9142375 (tailEnvelope0120CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0120CountsThree
      (lower := 9096892) (upper := 9142375) (N := N)
      (bound := 44772)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0121CountsOne : Fin 9 → ℕ := ![6412, 6446, 6400, 6420, 6403, 6430, 6423, 6423, 6422]

def tailEnvelope0121CountsThree : Fin 9 → ℕ := ![6437, 6416, 6422, 6428, 6418, 6428, 6430, 6431, 6412]

theorem tailEnvelope0121 :
    TailDiagonalSevenCellRatioRange 9142376 9188087
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9188086 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9188086 (tailEnvelope0121CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0121CountsOne
      (lower := 9142376) (upper := 9188086) (N := N)
      (bound := 44976)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9188086 (tailEnvelope0121CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0121CountsThree
      (lower := 9142376) (upper := 9188086) (N := N)
      (bound := 44994)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0122CountsOne : Fin 9 → ℕ := ![6446, 6476, 6431, 6454, 6439, 6462, 6452, 6450, 6452]

def tailEnvelope0122CountsThree : Fin 9 → ℕ := ![6467, 6450, 6455, 6463, 6446, 6456, 6464, 6464, 6445]

theorem tailEnvelope0122 :
    TailDiagonalSevenCellRatioRange 9188087 9234027
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9234026 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9234026 (tailEnvelope0122CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0122CountsOne
      (lower := 9188087) (upper := 9234026) (N := N)
      (bound := 45192)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9234026 (tailEnvelope0122CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0122CountsThree
      (lower := 9188087) (upper := 9234026) (N := N)
      (bound := 45219)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0123CountsOne : Fin 9 → ℕ := ![6478, 6506, 6466, 6487, 6468, 6495, 6484, 6487, 6487]

def tailEnvelope0123CountsThree : Fin 9 → ℕ := ![6500, 6479, 6485, 6490, 6481, 6492, 6496, 6494, 6477]

theorem tailEnvelope0123 :
    TailDiagonalSevenCellRatioRange 9234027 9280197
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9280196 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9280196 (tailEnvelope0123CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0123CountsOne
      (lower := 9234027) (upper := 9280196) (N := N)
      (bound := 45424)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9280196 (tailEnvelope0123CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0123CountsThree
      (lower := 9234027) (upper := 9280196) (N := N)
      (bound := 45438)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0124CountsOne : Fin 9 → ℕ := ![6514, 6542, 6496, 6518, 6501, 6525, 6517, 6517, 6518]

def tailEnvelope0124CountsThree : Fin 9 → ℕ := ![6533, 6508, 6519, 6526, 6518, 6522, 6525, 6526, 6512]

theorem tailEnvelope0124 :
    TailDiagonalSevenCellRatioRange 9280197 9326597
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9326596 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9326596 (tailEnvelope0124CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0124CountsOne
      (lower := 9280197) (upper := 9326596) (N := N)
      (bound := 45651)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9326596 (tailEnvelope0124CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0124CountsThree
      (lower := 9280197) (upper := 9326596) (N := N)
      (bound := 45669)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0125CountsOne : Fin 9 → ℕ := ![6547, 6575, 6528, 6549, 6538, 6560, 6549, 6549, 6553]

def tailEnvelope0125CountsThree : Fin 9 → ℕ := ![6567, 6543, 6550, 6556, 6549, 6557, 6556, 6559, 6542]

theorem tailEnvelope0125 :
    TailDiagonalSevenCellRatioRange 9326597 9373229
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9373228 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9373228 (tailEnvelope0125CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0125CountsOne
      (lower := 9326597) (upper := 9373228) (N := N)
      (bound := 45882)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9373228 (tailEnvelope0125CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0125CountsThree
      (lower := 9326597) (upper := 9373228) (N := N)
      (bound := 45894)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0126CountsOne : Fin 9 → ℕ := ![6581, 6609, 6561, 6586, 6567, 6595, 6581, 6582, 6584]

def tailEnvelope0126CountsThree : Fin 9 → ℕ := ![6597, 6576, 6584, 6587, 6579, 6587, 6591, 6597, 6576]

theorem tailEnvelope0126 :
    TailDiagonalSevenCellRatioRange 9373229 9420095
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9420094 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9420094 (tailEnvelope0126CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0126CountsOne
      (lower := 9373229) (upper := 9420094) (N := N)
      (bound := 46118)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9420094 (tailEnvelope0126CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0126CountsThree
      (lower := 9373229) (upper := 9420094) (N := N)
      (bound := 46122)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0127CountsOne : Fin 9 → ℕ := ![6610, 6641, 6594, 6621, 6602, 6625, 6616, 6618, 6618]

def tailEnvelope0127CountsThree : Fin 9 → ℕ := ![6636, 6606, 6615, 6619, 6612, 6622, 6621, 6626, 6606]

theorem tailEnvelope0127 :
    TailDiagonalSevenCellRatioRange 9420095 9467195
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 9467194 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          9467194 (tailEnvelope0127CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0127CountsOne
      (lower := 9420095) (upper := 9467194) (N := N)
      (bound := 46349)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          9467194 (tailEnvelope0127CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0127CountsThree
      (lower := 9420095) (upper := 9467194) (N := N)
      (bound := 46351)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
