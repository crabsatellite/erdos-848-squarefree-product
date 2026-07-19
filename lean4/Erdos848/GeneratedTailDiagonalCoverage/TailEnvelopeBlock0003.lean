import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0048CountsOne : Fin 9 → ℕ := ![4459, 4497, 4433, 4472, 4457, 4465, 4448, 4456, 4465]

def tailEnvelope0048CountsThree : Fin 9 → ℕ := ![4478, 4463, 4466, 4465, 4450, 4470, 4460, 4475, 4454]

theorem tailEnvelope0048 :
    TailDiagonalSevenCellRatioRange 6352415 6384177
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6384176 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6384176 (tailEnvelope0048CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0048CountsOne
      (lower := 6352415) (upper := 6384176) (N := N)
      (bound := 31271)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0048CountsThree
      (lower := 6352415) (upper := 6384176) (N := N)
      (bound := 31277)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0049CountsOne : Fin 9 → ℕ := ![4483, 4517, 4458, 4491, 4480, 4488, 4470, 4481, 4491]

def tailEnvelope0049CountsThree : Fin 9 → ℕ := ![4500, 4482, 4489, 4489, 4476, 4492, 4486, 4496, 4472]

theorem tailEnvelope0049 :
    TailDiagonalSevenCellRatioRange 6384177 6416097
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6416096 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6416096 (tailEnvelope0049CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0049CountsOne
      (lower := 6384177) (upper := 6416096) (N := N)
      (bound := 31431)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0049CountsThree
      (lower := 6384177) (upper := 6416096) (N := N)
      (bound := 31434)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0050CountsOne : Fin 9 → ℕ := ![4505, 4541, 4483, 4517, 4502, 4511, 4493, 4504, 4514]

def tailEnvelope0050CountsThree : Fin 9 → ℕ := ![4523, 4506, 4512, 4510, 4496, 4512, 4506, 4522, 4493]

theorem tailEnvelope0050 :
    TailDiagonalSevenCellRatioRange 6416097 6448177
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6448176 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6448176 (tailEnvelope0050CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0050CountsOne
      (lower := 6416097) (upper := 6448176) (N := N)
      (bound := 31594)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0050CountsThree
      (lower := 6416097) (upper := 6448176) (N := N)
      (bound := 31591)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0051CountsOne : Fin 9 → ℕ := ![4529, 4562, 4507, 4539, 4522, 4533, 4518, 4525, 4536]

def tailEnvelope0051CountsThree : Fin 9 → ℕ := ![4545, 4530, 4531, 4531, 4518, 4539, 4530, 4550, 4511]

theorem tailEnvelope0051 :
    TailDiagonalSevenCellRatioRange 6448177 6480417
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6480416 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6480416 (tailEnvelope0051CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0051CountsOne
      (lower := 6448177) (upper := 6480416) (N := N)
      (bound := 31746)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0051CountsThree
      (lower := 6448177) (upper := 6480416) (N := N)
      (bound := 31756)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0052CountsOne : Fin 9 → ℕ := ![4553, 4584, 4529, 4562, 4548, 4553, 4542, 4549, 4558]

def tailEnvelope0052CountsThree : Fin 9 → ℕ := ![4566, 4550, 4555, 4555, 4538, 4558, 4550, 4571, 4538]

theorem tailEnvelope0052 :
    TailDiagonalSevenCellRatioRange 6480417 6512819
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6512818 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6512818 (tailEnvelope0052CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0052CountsOne
      (lower := 6480417) (upper := 6512818) (N := N)
      (bound := 31907)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0052CountsThree
      (lower := 6480417) (upper := 6512818) (N := N)
      (bound := 31905)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0053CountsOne : Fin 9 → ℕ := ![4575, 4607, 4553, 4585, 4572, 4572, 4562, 4572, 4580]

def tailEnvelope0053CountsThree : Fin 9 → ℕ := ![4585, 4573, 4578, 4577, 4558, 4580, 4578, 4594, 4567]

theorem tailEnvelope0053 :
    TailDiagonalSevenCellRatioRange 6512819 6545383
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6545382 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6545382 (tailEnvelope0053CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0053CountsOne
      (lower := 6512819) (upper := 6545382) (N := N)
      (bound := 32063)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0053CountsThree
      (lower := 6512819) (upper := 6545382) (N := N)
      (bound := 32065)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0054CountsOne : Fin 9 → ℕ := ![4598, 4629, 4574, 4607, 4594, 4602, 4585, 4598, 4600]

def tailEnvelope0054CountsThree : Fin 9 → ℕ := ![4612, 4595, 4601, 4600, 4586, 4601, 4600, 4615, 4587]

theorem tailEnvelope0054 :
    TailDiagonalSevenCellRatioRange 6545383 6578109
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6578108 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6578108 (tailEnvelope0054CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0054CountsOne
      (lower := 6545383) (upper := 6578108) (N := N)
      (bound := 32228)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0054CountsThree
      (lower := 6545383) (upper := 6578108) (N := N)
      (bound := 32224)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0055CountsOne : Fin 9 → ℕ := ![4620, 4651, 4596, 4628, 4619, 4624, 4606, 4618, 4626]

def tailEnvelope0055CountsThree : Fin 9 → ℕ := ![4636, 4617, 4627, 4619, 4610, 4626, 4625, 4639, 4610]

theorem tailEnvelope0055 :
    TailDiagonalSevenCellRatioRange 6578109 6610999
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6610998 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6610998 (tailEnvelope0055CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0055CountsOne
      (lower := 6578109) (upper := 6610998) (N := N)
      (bound := 32386)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0055CountsThree
      (lower := 6578109) (upper := 6610998) (N := N)
      (bound := 32389)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0056CountsOne : Fin 9 → ℕ := ![4639, 4675, 4622, 4650, 4641, 4645, 4636, 4638, 4652]

def tailEnvelope0056CountsThree : Fin 9 → ℕ := ![4658, 4645, 4649, 4643, 4632, 4650, 4648, 4660, 4634]

theorem tailEnvelope0056 :
    TailDiagonalSevenCellRatioRange 6610999 6644053
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6644052 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6644052 (tailEnvelope0056CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0056CountsOne
      (lower := 6610999) (upper := 6644052) (N := N)
      (bound := 32540)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0056CountsThree
      (lower := 6610999) (upper := 6644052) (N := N)
      (bound := 32553)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0057CountsOne : Fin 9 → ℕ := ![4660, 4696, 4643, 4678, 4664, 4674, 4657, 4666, 4675]

def tailEnvelope0057CountsThree : Fin 9 → ℕ := ![4683, 4665, 4669, 4667, 4654, 4675, 4670, 4682, 4657]

theorem tailEnvelope0057 :
    TailDiagonalSevenCellRatioRange 6644053 6677273
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6677272 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6677272 (tailEnvelope0057CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0057CountsOne
      (lower := 6644053) (upper := 6677272) (N := N)
      (bound := 32713)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0057CountsThree
      (lower := 6644053) (upper := 6677272) (N := N)
      (bound := 32711)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0058CountsOne : Fin 9 → ℕ := ![4688, 4719, 4663, 4699, 4687, 4697, 4680, 4689, 4699]

def tailEnvelope0058CountsThree : Fin 9 → ℕ := ![4704, 4686, 4694, 4694, 4679, 4695, 4694, 4708, 4678]

theorem tailEnvelope0058 :
    TailDiagonalSevenCellRatioRange 6677273 6710659
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6710658 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6710658 (tailEnvelope0058CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0058CountsOne
      (lower := 6677273) (upper := 6710658) (N := N)
      (bound := 32878)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0058CountsThree
      (lower := 6677273) (upper := 6710658) (N := N)
      (bound := 32875)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0059CountsOne : Fin 9 → ℕ := ![4710, 4745, 4688, 4726, 4709, 4720, 4703, 4711, 4722]

def tailEnvelope0059CountsThree : Fin 9 → ℕ := ![4730, 4713, 4717, 4715, 4700, 4720, 4716, 4730, 4702]

theorem tailEnvelope0059 :
    TailDiagonalSevenCellRatioRange 6710659 6744212
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6744211 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6744211 (tailEnvelope0059CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0059CountsOne
      (lower := 6710659) (upper := 6744211) (N := N)
      (bound := 33043)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0059CountsThree
      (lower := 6710659) (upper := 6744211) (N := N)
      (bound := 33041)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0060CountsOne : Fin 9 → ℕ := ![4735, 4767, 4713, 4746, 4734, 4741, 4724, 4736, 4749]

def tailEnvelope0060CountsThree : Fin 9 → ℕ := ![4755, 4735, 4739, 4740, 4726, 4747, 4739, 4755, 4724]

theorem tailEnvelope0060 :
    TailDiagonalSevenCellRatioRange 6744212 6777933
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6777932 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6777932 (tailEnvelope0060CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0060CountsOne
      (lower := 6744212) (upper := 6777932) (N := N)
      (bound := 33208)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0060CountsThree
      (lower := 6744212) (upper := 6777932) (N := N)
      (bound := 33210)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0061CountsOne : Fin 9 → ℕ := ![4759, 4788, 4740, 4768, 4760, 4764, 4749, 4761, 4768]

def tailEnvelope0061CountsThree : Fin 9 → ℕ := ![4775, 4762, 4763, 4763, 4745, 4773, 4764, 4778, 4749]

theorem tailEnvelope0061 :
    TailDiagonalSevenCellRatioRange 6777933 6811822
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6811821 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6811821 (tailEnvelope0061CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0061CountsOne
      (lower := 6777933) (upper := 6811821) (N := N)
      (bound := 33368)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0061CountsThree
      (lower := 6777933) (upper := 6811821) (N := N)
      (bound := 33378)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0062CountsOne : Fin 9 → ℕ := ![4784, 4813, 4765, 4794, 4780, 4793, 4771, 4785, 4788]

def tailEnvelope0062CountsThree : Fin 9 → ℕ := ![4800, 4782, 4784, 4786, 4770, 4797, 4791, 4801, 4772]

theorem tailEnvelope0062 :
    TailDiagonalSevenCellRatioRange 6811822 6845881
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6845880 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6845880 (tailEnvelope0062CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0062CountsOne
      (lower := 6811822) (upper := 6845880) (N := N)
      (bound := 33537)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0062CountsThree
      (lower := 6811822) (upper := 6845880) (N := N)
      (bound := 33541)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0063CountsOne : Fin 9 → ℕ := ![4807, 4838, 4787, 4818, 4802, 4819, 4794, 4811, 4809]

def tailEnvelope0063CountsThree : Fin 9 → ℕ := ![4826, 4804, 4812, 4812, 4796, 4816, 4811, 4826, 4794]

theorem tailEnvelope0063 :
    TailDiagonalSevenCellRatioRange 6845881 6880110
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6880109 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6880109 (tailEnvelope0063CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0063CountsOne
      (lower := 6845881) (upper := 6880109) (N := N)
      (bound := 33704)
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
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0063CountsThree
      (lower := 6845881) (upper := 6880109) (N := N)
      (bound := 33707)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
