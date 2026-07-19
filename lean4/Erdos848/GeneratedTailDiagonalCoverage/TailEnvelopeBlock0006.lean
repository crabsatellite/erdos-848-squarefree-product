import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0096CountsOne : Fin 9 → ℕ := ![5669, 5686, 5648, 5669, 5662, 5673, 5658, 5666, 5670]

def tailEnvelope0096CountsThree : Fin 9 → ℕ := ![5678, 5665, 5671, 5671, 5663, 5680, 5671, 5682, 5658]

theorem tailEnvelope0096 :
    TailDiagonalSevenCellRatioRange 8070644 8110997
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8110996 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8110996 (tailEnvelope0096CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0096CountsOne
      (lower := 8070644) (upper := 8110996) (N := N)
      (bound := 39695)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8110996 (tailEnvelope0096CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0096CountsThree
      (lower := 8070644) (upper := 8110996) (N := N)
      (bound := 39718)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0097CountsOne : Fin 9 → ℕ := ![5693, 5715, 5675, 5697, 5690, 5702, 5690, 5695, 5699]

def tailEnvelope0097CountsThree : Fin 9 → ℕ := ![5706, 5694, 5699, 5701, 5693, 5704, 5701, 5707, 5686]

theorem tailEnvelope0097 :
    TailDiagonalSevenCellRatioRange 8110997 8151551
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8151550 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8151550 (tailEnvelope0097CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0097CountsOne
      (lower := 8110997) (upper := 8151550) (N := N)
      (bound := 39891)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8151550 (tailEnvelope0097CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0097CountsThree
      (lower := 8110997) (upper := 8151550) (N := N)
      (bound := 39912)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0098CountsOne : Fin 9 → ℕ := ![5727, 5745, 5703, 5727, 5720, 5732, 5720, 5722, 5725]

def tailEnvelope0098CountsThree : Fin 9 → ℕ := ![5736, 5722, 5724, 5729, 5721, 5734, 5730, 5735, 5717]

theorem tailEnvelope0098 :
    TailDiagonalSevenCellRatioRange 8151551 8192308
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8192307 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8192307 (tailEnvelope0098CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0098CountsOne
      (lower := 8151551) (upper := 8192307) (N := N)
      (bound := 40098)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8192307 (tailEnvelope0098CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0098CountsThree
      (lower := 8151551) (upper := 8192307) (N := N)
      (bound := 40110)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0099CountsOne : Fin 9 → ℕ := ![5757, 5774, 5730, 5754, 5746, 5762, 5747, 5753, 5754]

def tailEnvelope0099CountsThree : Fin 9 → ℕ := ![5765, 5750, 5754, 5759, 5747, 5764, 5760, 5764, 5746]

theorem tailEnvelope0099 :
    TailDiagonalSevenCellRatioRange 8192308 8233269
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8233268 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8233268 (tailEnvelope0099CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0099CountsOne
      (lower := 8192308) (upper := 8233268) (N := N)
      (bound := 40301)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8233268 (tailEnvelope0099CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0099CountsThree
      (lower := 8192308) (upper := 8233268) (N := N)
      (bound := 40316)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0100CountsOne : Fin 9 → ℕ := ![5784, 5801, 5760, 5788, 5776, 5790, 5776, 5783, 5788]

def tailEnvelope0100CountsThree : Fin 9 → ℕ := ![5796, 5779, 5782, 5788, 5778, 5793, 5786, 5791, 5773]

theorem tailEnvelope0100 :
    TailDiagonalSevenCellRatioRange 8233269 8274435
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8274434 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8274434 (tailEnvelope0100CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0100CountsOne
      (lower := 8233269) (upper := 8274434) (N := N)
      (bound := 40510)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8274434 (tailEnvelope0100CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0100CountsThree
      (lower := 8233269) (upper := 8274434) (N := N)
      (bound := 40515)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0101CountsOne : Fin 9 → ℕ := ![5812, 5828, 5792, 5817, 5805, 5818, 5807, 5809, 5812]

def tailEnvelope0101CountsThree : Fin 9 → ℕ := ![5824, 5806, 5810, 5818, 5804, 5825, 5814, 5823, 5806]

theorem tailEnvelope0101 :
    TailDiagonalSevenCellRatioRange 8274435 8315807
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8315806 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8315806 (tailEnvelope0101CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0101CountsOne
      (lower := 8274435) (upper := 8315806) (N := N)
      (bound := 40703)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8315806 (tailEnvelope0101CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0101CountsThree
      (lower := 8274435) (upper := 8315806) (N := N)
      (bound := 40720)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0102CountsOne : Fin 9 → ℕ := ![5840, 5866, 5819, 5846, 5830, 5846, 5836, 5841, 5841]

def tailEnvelope0102CountsThree : Fin 9 → ℕ := ![5852, 5833, 5837, 5845, 5833, 5854, 5844, 5853, 5840]

theorem tailEnvelope0102 :
    TailDiagonalSevenCellRatioRange 8315807 8357386
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8357385 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8357385 (tailEnvelope0102CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0102CountsOne
      (lower := 8315807) (upper := 8357385) (N := N)
      (bound := 40916)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8357385 (tailEnvelope0102CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0102CountsThree
      (lower := 8315807) (upper := 8357385) (N := N)
      (bound := 40925)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0103CountsOne : Fin 9 → ℕ := ![5868, 5893, 5845, 5874, 5862, 5877, 5865, 5870, 5871]

def tailEnvelope0103CountsThree : Fin 9 → ℕ := ![5885, 5860, 5868, 5877, 5863, 5883, 5872, 5880, 5870]

theorem tailEnvelope0103 :
    TailDiagonalSevenCellRatioRange 8357386 8399172
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8399171 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8399171 (tailEnvelope0103CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0103CountsOne
      (lower := 8357386) (upper := 8399171) (N := N)
      (bound := 41118)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8399171 (tailEnvelope0103CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0103CountsThree
      (lower := 8357386) (upper := 8399171) (N := N)
      (bound := 41135)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0104CountsOne : Fin 9 → ℕ := ![5900, 5923, 5875, 5903, 5894, 5907, 5893, 5896, 5899]

def tailEnvelope0104CountsThree : Fin 9 → ℕ := ![5913, 5891, 5900, 5905, 5889, 5910, 5902, 5911, 5899]

theorem tailEnvelope0104 :
    TailDiagonalSevenCellRatioRange 8399172 8441167
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8441166 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8441166 (tailEnvelope0104CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0104CountsOne
      (lower := 8399172) (upper := 8441166) (N := N)
      (bound := 41322)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8441166 (tailEnvelope0104CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0104CountsThree
      (lower := 8399172) (upper := 8441166) (N := N)
      (bound := 41340)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0105CountsOne : Fin 9 → ℕ := ![5926, 5953, 5903, 5935, 5921, 5935, 5923, 5926, 5928]

def tailEnvelope0105CountsThree : Fin 9 → ℕ := ![5942, 5920, 5930, 5935, 5922, 5939, 5933, 5939, 5929]

theorem tailEnvelope0105 :
    TailDiagonalSevenCellRatioRange 8441167 8483372
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8483371 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8483371 (tailEnvelope0105CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0105CountsOne
      (lower := 8441167) (upper := 8483371) (N := N)
      (bound := 41526)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8483371 (tailEnvelope0105CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0105CountsThree
      (lower := 8441167) (upper := 8483371) (N := N)
      (bound := 41547)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0106CountsOne : Fin 9 → ℕ := ![5955, 5985, 5928, 5961, 5955, 5966, 5954, 5956, 5963]

def tailEnvelope0106CountsThree : Fin 9 → ℕ := ![5968, 5953, 5959, 5964, 5952, 5973, 5961, 5966, 5954]

theorem tailEnvelope0106 :
    TailDiagonalSevenCellRatioRange 8483372 8525788
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8525787 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8525787 (tailEnvelope0106CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0106CountsOne
      (lower := 8483372) (upper := 8525787) (N := N)
      (bound := 41741)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8525787 (tailEnvelope0106CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0106CountsThree
      (lower := 8483372) (upper := 8525787) (N := N)
      (bound := 41745)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0107CountsOne : Fin 9 → ℕ := ![5983, 6015, 5962, 5991, 5981, 5995, 5983, 5987, 5993]

def tailEnvelope0107CountsThree : Fin 9 → ℕ := ![5998, 5985, 5990, 5998, 5979, 5997, 5996, 5996, 5985]

theorem tailEnvelope0107 :
    TailDiagonalSevenCellRatioRange 8525788 8568416
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8568415 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8568415 (tailEnvelope0107CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0107CountsOne
      (lower := 8525788) (upper := 8568415) (N := N)
      (bound := 41947)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8568415 (tailEnvelope0107CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0107CountsThree
      (lower := 8525788) (upper := 8568415) (N := N)
      (bound := 41960)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0108CountsOne : Fin 9 → ℕ := ![6012, 6044, 5990, 6023, 6010, 6021, 6014, 6015, 6024]

def tailEnvelope0108CountsThree : Fin 9 → ℕ := ![6030, 6011, 6021, 6025, 6011, 6028, 6026, 6029, 6012]

theorem tailEnvelope0108 :
    TailDiagonalSevenCellRatioRange 8568416 8611258
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8611257 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8611257 (tailEnvelope0108CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0108CountsOne
      (lower := 8568416) (upper := 8611257) (N := N)
      (bound := 42153)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8611257 (tailEnvelope0108CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0108CountsThree
      (lower := 8568416) (upper := 8611257) (N := N)
      (bound := 42171)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0109CountsOne : Fin 9 → ℕ := ![6044, 6073, 6022, 6051, 6039, 6049, 6041, 6049, 6054]

def tailEnvelope0109CountsThree : Fin 9 → ℕ := ![6059, 6044, 6050, 6056, 6037, 6059, 6056, 6057, 6042]

theorem tailEnvelope0109 :
    TailDiagonalSevenCellRatioRange 8611258 8654314
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8654313 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8654313 (tailEnvelope0109CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0109CountsOne
      (lower := 8611258) (upper := 8654313) (N := N)
      (bound := 42361)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8654313 (tailEnvelope0109CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0109CountsThree
      (lower := 8611258) (upper := 8654313) (N := N)
      (bound := 42381)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0110CountsOne : Fin 9 → ℕ := ![6071, 6102, 6053, 6084, 6067, 6084, 6074, 6081, 6081]

def tailEnvelope0110CountsThree : Fin 9 → ℕ := ![6094, 6077, 6078, 6085, 6071, 6089, 6085, 6085, 6073]

theorem tailEnvelope0110 :
    TailDiagonalSevenCellRatioRange 8654314 8697585
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8697584 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8697584 (tailEnvelope0110CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0110CountsOne
      (lower := 8654314) (upper := 8697584) (N := N)
      (bound := 42577)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8697584 (tailEnvelope0110CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0110CountsThree
      (lower := 8654314) (upper := 8697584) (N := N)
      (bound := 42593)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0111CountsOne : Fin 9 → ℕ := ![6097, 6134, 6084, 6114, 6098, 6114, 6109, 6108, 6111]

def tailEnvelope0111CountsThree : Fin 9 → ℕ := ![6123, 6105, 6109, 6116, 6101, 6117, 6116, 6118, 6103]

theorem tailEnvelope0111 :
    TailDiagonalSevenCellRatioRange 8697585 8741072
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 8741071 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          8741071 (tailEnvelope0111CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0111CountsOne
      (lower := 8697585) (upper := 8741071) (N := N)
      (bound := 42788)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          8741071 (tailEnvelope0111CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0111CountsThree
      (lower := 8697585) (upper := 8741071) (N := N)
      (bound := 42804)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
