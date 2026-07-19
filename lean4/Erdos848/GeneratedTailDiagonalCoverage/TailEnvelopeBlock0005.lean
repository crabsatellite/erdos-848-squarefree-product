import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0080CountsOne : Fin 9 → ℕ := ![5232, 5260, 5211, 5241, 5229, 5243, 5225, 5234, 5241]

def tailEnvelope0080CountsThree : Fin 9 → ℕ := ![5248, 5236, 5231, 5235, 5225, 5238, 5234, 5248, 5222]

theorem tailEnvelope0080 :
    TailDiagonalSevenCellRatioRange 7451639 7488897
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7488896 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7488896 (tailEnvelope0080CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0080CountsOne
      (lower := 7451639) (upper := 7488896) (N := N)
      (bound := 36680)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7488896 (tailEnvelope0080CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0080CountsThree
      (lower := 7451639) (upper := 7488896) (N := N)
      (bound := 36670)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0081CountsOne : Fin 9 → ℕ := ![5258, 5288, 5235, 5264, 5256, 5270, 5251, 5254, 5262]

def tailEnvelope0081CountsThree : Fin 9 → ℕ := ![5276, 5263, 5256, 5263, 5248, 5266, 5259, 5274, 5249]

theorem tailEnvelope0081 :
    TailDiagonalSevenCellRatioRange 7488897 7526341
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7526340 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7526340 (tailEnvelope0081CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0081CountsOne
      (lower := 7488897) (upper := 7526340) (N := N)
      (bound := 36852)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7526340 (tailEnvelope0081CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0081CountsThree
      (lower := 7488897) (upper := 7526340) (N := N)
      (bound := 36857)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0082CountsOne : Fin 9 → ℕ := ![5282, 5311, 5271, 5291, 5279, 5294, 5280, 5284, 5287]

def tailEnvelope0082CountsThree : Fin 9 → ℕ := ![5301, 5294, 5278, 5289, 5280, 5296, 5286, 5299, 5275]

theorem tailEnvelope0082 :
    TailDiagonalSevenCellRatioRange 7526341 7563972
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7563971 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7563971 (tailEnvelope0082CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0082CountsOne
      (lower := 7526341) (upper := 7563971) (N := N)
      (bound := 37029)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7563971 (tailEnvelope0082CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0082CountsThree
      (lower := 7526341) (upper := 7563971) (N := N)
      (bound := 37045)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0083CountsOne : Fin 9 → ℕ := ![5312, 5336, 5294, 5318, 5309, 5320, 5306, 5312, 5313]

def tailEnvelope0083CountsThree : Fin 9 → ℕ := ![5324, 5317, 5309, 5315, 5307, 5319, 5313, 5328, 5304]

theorem tailEnvelope0083 :
    TailDiagonalSevenCellRatioRange 7563972 7601791
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7601790 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7601790 (tailEnvelope0083CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0083CountsOne
      (lower := 7563972) (upper := 7601790) (N := N)
      (bound := 37220)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7601790 (tailEnvelope0083CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0083CountsThree
      (lower := 7563972) (upper := 7601790) (N := N)
      (bound := 37225)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0084CountsOne : Fin 9 → ℕ := ![5341, 5364, 5319, 5343, 5336, 5347, 5330, 5336, 5341]

def tailEnvelope0084CountsThree : Fin 9 → ℕ := ![5353, 5344, 5340, 5341, 5332, 5346, 5343, 5356, 5327]

theorem tailEnvelope0084 :
    TailDiagonalSevenCellRatioRange 7601791 7639799
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7639798 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7639798 (tailEnvelope0084CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0084CountsOne
      (lower := 7601791) (upper := 7639798) (N := N)
      (bound := 37408)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7639798 (tailEnvelope0084CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0084CountsThree
      (lower := 7601791) (upper := 7639798) (N := N)
      (bound := 37423)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0085CountsOne : Fin 9 → ℕ := ![5365, 5391, 5343, 5366, 5364, 5376, 5361, 5362, 5371]

def tailEnvelope0085CountsThree : Fin 9 → ℕ := ![5379, 5368, 5368, 5366, 5363, 5374, 5370, 5377, 5351]

theorem tailEnvelope0085 :
    TailDiagonalSevenCellRatioRange 7639799 7677997
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7677996 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7677996 (tailEnvelope0085CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0085CountsOne
      (lower := 7639799) (upper := 7677996) (N := N)
      (bound := 37595)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7677996 (tailEnvelope0085CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0085CountsThree
      (lower := 7639799) (upper := 7677996) (N := N)
      (bound := 37602)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0086CountsOne : Fin 9 → ℕ := ![5394, 5413, 5371, 5395, 5392, 5403, 5385, 5391, 5396]

def tailEnvelope0086CountsThree : Fin 9 → ℕ := ![5407, 5397, 5398, 5393, 5384, 5401, 5397, 5406, 5377]

theorem tailEnvelope0086 :
    TailDiagonalSevenCellRatioRange 7677997 7716386
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7716385 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7716385 (tailEnvelope0086CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0086CountsOne
      (lower := 7677997) (upper := 7716385) (N := N)
      (bound := 37784)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7716385 (tailEnvelope0086CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0086CountsThree
      (lower := 7677997) (upper := 7716385) (N := N)
      (bound := 37799)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0087CountsOne : Fin 9 → ℕ := ![5422, 5441, 5399, 5424, 5414, 5428, 5412, 5418, 5424]

def tailEnvelope0087CountsThree : Fin 9 → ℕ := ![5433, 5422, 5420, 5420, 5416, 5430, 5426, 5428, 5407]

theorem tailEnvelope0087 :
    TailDiagonalSevenCellRatioRange 7716386 7754967
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7754966 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7754966 (tailEnvelope0087CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0087CountsOne
      (lower := 7716386) (upper := 7754966) (N := N)
      (bound := 37971)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7754966 (tailEnvelope0087CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0087CountsThree
      (lower := 7716386) (upper := 7754966) (N := N)
      (bound := 37979)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0088CountsOne : Fin 9 → ℕ := ![5446, 5470, 5426, 5450, 5439, 5454, 5437, 5445, 5453]

def tailEnvelope0088CountsThree : Fin 9 → ℕ := ![5461, 5447, 5446, 5449, 5448, 5457, 5451, 5454, 5432]

theorem tailEnvelope0088 :
    TailDiagonalSevenCellRatioRange 7754967 7793741
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7793740 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7793740 (tailEnvelope0088CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0088CountsOne
      (lower := 7754967) (upper := 7793740) (N := N)
      (bound := 38157)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7793740 (tailEnvelope0088CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0088CountsThree
      (lower := 7754967) (upper := 7793740) (N := N)
      (bound := 38167)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0089CountsOne : Fin 9 → ℕ := ![5469, 5494, 5454, 5478, 5466, 5480, 5467, 5470, 5481]

def tailEnvelope0089CountsThree : Fin 9 → ℕ := ![5486, 5476, 5474, 5477, 5468, 5488, 5477, 5492, 5456]

theorem tailEnvelope0089 :
    TailDiagonalSevenCellRatioRange 7793741 7832709
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7832708 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7832708 (tailEnvelope0089CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0089CountsOne
      (lower := 7793741) (upper := 7832708) (N := N)
      (bound := 38339)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7832708 (tailEnvelope0089CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0089CountsThree
      (lower := 7793741) (upper := 7832708) (N := N)
      (bound := 38370)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0090CountsOne : Fin 9 → ℕ := ![5501, 5520, 5483, 5508, 5496, 5504, 5494, 5504, 5506]

def tailEnvelope0090CountsThree : Fin 9 → ℕ := ![5511, 5504, 5498, 5505, 5495, 5516, 5506, 5517, 5485]

theorem tailEnvelope0090 :
    TailDiagonalSevenCellRatioRange 7832709 7871872
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7871871 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7871871 (tailEnvelope0090CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0090CountsOne
      (lower := 7832709) (upper := 7871871) (N := N)
      (bound := 38539)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7871871 (tailEnvelope0090CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0090CountsThree
      (lower := 7832709) (upper := 7871871) (N := N)
      (bound := 38557)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0091CountsOne : Fin 9 → ℕ := ![5524, 5548, 5509, 5537, 5518, 5532, 5520, 5532, 5531]

def tailEnvelope0091CountsThree : Fin 9 → ℕ := ![5542, 5532, 5527, 5532, 5525, 5540, 5532, 5543, 5520]

theorem tailEnvelope0091 :
    TailDiagonalSevenCellRatioRange 7871872 7911231
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7911230 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7911230 (tailEnvelope0091CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0091CountsOne
      (lower := 7871872) (upper := 7911230) (N := N)
      (bound := 38724)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7911230 (tailEnvelope0091CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0091CountsThree
      (lower := 7871872) (upper := 7911230) (N := N)
      (bound := 38748)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0092CountsOne : Fin 9 → ℕ := ![5555, 5577, 5536, 5564, 5551, 5559, 5549, 5558, 5558]

def tailEnvelope0092CountsThree : Fin 9 → ℕ := ![5569, 5560, 5552, 5560, 5552, 5567, 5558, 5572, 5546]

theorem tailEnvelope0092 :
    TailDiagonalSevenCellRatioRange 7911231 7950787
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7950786 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7950786 (tailEnvelope0092CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0092CountsOne
      (lower := 7911231) (upper := 7950786) (N := N)
      (bound := 38922)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7950786 (tailEnvelope0092CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0092CountsThree
      (lower := 7911231) (upper := 7950786) (N := N)
      (bound := 38938)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0093CountsOne : Fin 9 → ℕ := ![5584, 5603, 5569, 5587, 5577, 5588, 5577, 5587, 5584]

def tailEnvelope0093CountsThree : Fin 9 → ℕ := ![5597, 5587, 5578, 5590, 5581, 5595, 5585, 5602, 5573]

theorem tailEnvelope0093 :
    TailDiagonalSevenCellRatioRange 7950787 7990540
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 7990539 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          7990539 (tailEnvelope0093CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0093CountsOne
      (lower := 7950787) (upper := 7990539) (N := N)
      (bound := 39110)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          7990539 (tailEnvelope0093CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0093CountsThree
      (lower := 7950787) (upper := 7990539) (N := N)
      (bound := 39137)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0094CountsOne : Fin 9 → ℕ := ![5614, 5629, 5595, 5616, 5603, 5618, 5605, 5613, 5611]

def tailEnvelope0094CountsThree : Fin 9 → ℕ := ![5623, 5614, 5611, 5618, 5611, 5617, 5614, 5627, 5601]

theorem tailEnvelope0094 :
    TailDiagonalSevenCellRatioRange 7990540 8030492
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8030491 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8030491 (tailEnvelope0094CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0094CountsOne
      (lower := 7990540) (upper := 8030491) (N := N)
      (bound := 39306)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8030491 (tailEnvelope0094CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0094CountsThree
      (lower := 7990540) (upper := 8030491) (N := N)
      (bound := 39324)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0095CountsOne : Fin 9 → ℕ := ![5643, 5655, 5619, 5644, 5637, 5643, 5629, 5638, 5641]

def tailEnvelope0095CountsThree : Fin 9 → ℕ := ![5651, 5640, 5640, 5639, 5638, 5649, 5644, 5656, 5629]

theorem tailEnvelope0095 :
    TailDiagonalSevenCellRatioRange 8030492 8070644
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8070643 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8070643 (tailEnvelope0095CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0095CountsOne
      (lower := 8030492) (upper := 8070643) (N := N)
      (bound := 39501)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8070643 (tailEnvelope0095CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0095CountsThree
      (lower := 8030492) (upper := 8070643) (N := N)
      (bound := 39519)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
