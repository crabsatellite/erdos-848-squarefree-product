import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0032CountsOne : Fin 9 → ℕ := ![4124, 4143, 4097, 4128, 4114, 4122, 4112, 4112, 4126]

def tailEnvelope0032CountsThree : Fin 9 → ℕ := ![4138, 4114, 4124, 4127, 4109, 4124, 4112, 4132, 4115]

theorem tailEnvelope0032 :
    TailDiagonalSevenCellRatioRange 5865197 5894522
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5894521 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5894521 (tailEnvelope0032CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0032CountsOne
      (lower := 5865197) (upper := 5894521) (N := N)
      (bound := 28869)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5894521 (tailEnvelope0032CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0032CountsThree
      (lower := 5865197) (upper := 5894521) (N := N)
      (bound := 28874)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0033CountsOne : Fin 9 → ℕ := ![4147, 4166, 4112, 4148, 4133, 4142, 4135, 4135, 4146]

def tailEnvelope0033CountsThree : Fin 9 → ℕ := ![4156, 4132, 4143, 4148, 4131, 4145, 4135, 4152, 4134]

theorem tailEnvelope0033 :
    TailDiagonalSevenCellRatioRange 5894522 5923994
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5923993 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5923993 (tailEnvelope0033CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0033CountsOne
      (lower := 5894522) (upper := 5923993) (N := N)
      (bound := 29019)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5923993 (tailEnvelope0033CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0033CountsThree
      (lower := 5894522) (upper := 5923993) (N := N)
      (bound := 29013)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0034CountsOne : Fin 9 → ℕ := ![4164, 4188, 4134, 4171, 4154, 4162, 4153, 4154, 4168]

def tailEnvelope0034CountsThree : Fin 9 → ℕ := ![4180, 4151, 4162, 4168, 4153, 4165, 4161, 4170, 4158]

theorem tailEnvelope0034 :
    TailDiagonalSevenCellRatioRange 5923994 5953613
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5953612 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5953612 (tailEnvelope0034CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0034CountsOne
      (lower := 5923994) (upper := 5953612) (N := N)
      (bound := 29161)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5953612 (tailEnvelope0034CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0034CountsThree
      (lower := 5923994) (upper := 5953612) (N := N)
      (bound := 29164)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0035CountsOne : Fin 9 → ℕ := ![4185, 4210, 4156, 4192, 4173, 4183, 4175, 4177, 4190]

def tailEnvelope0035CountsThree : Fin 9 → ℕ := ![4200, 4174, 4183, 4189, 4173, 4189, 4179, 4191, 4178]

theorem tailEnvelope0035 :
    TailDiagonalSevenCellRatioRange 5953613 5983381
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5983380 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5983380 (tailEnvelope0035CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0035CountsOne
      (lower := 5953613) (upper := 5983380) (N := N)
      (bound := 29312)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5983380 (tailEnvelope0035CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0035CountsThree
      (lower := 5953613) (upper := 5983380) (N := N)
      (bound := 29309)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0036CountsOne : Fin 9 → ℕ := ![4206, 4230, 4180, 4215, 4195, 4203, 4192, 4196, 4211]

def tailEnvelope0036CountsThree : Fin 9 → ℕ := ![4221, 4196, 4203, 4207, 4193, 4210, 4199, 4216, 4197]

theorem tailEnvelope0036 :
    TailDiagonalSevenCellRatioRange 5983381 6013297
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6013296 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6013296 (tailEnvelope0036CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0036CountsOne
      (lower := 5983381) (upper := 6013296) (N := N)
      (bound := 29456)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6013296 (tailEnvelope0036CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0036CountsThree
      (lower := 5983381) (upper := 6013296) (N := N)
      (bound := 29453)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0037CountsOne : Fin 9 → ℕ := ![4225, 4250, 4200, 4238, 4218, 4224, 4212, 4218, 4229]

def tailEnvelope0037CountsThree : Fin 9 → ℕ := ![4241, 4217, 4228, 4226, 4217, 4234, 4219, 4234, 4217]

theorem tailEnvelope0037 :
    TailDiagonalSevenCellRatioRange 6013297 6043363
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6043362 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6043362 (tailEnvelope0037CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0037CountsOne
      (lower := 6013297) (upper := 6043362) (N := N)
      (bound := 29602)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6043362 (tailEnvelope0037CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0037CountsThree
      (lower := 6013297) (upper := 6043362) (N := N)
      (bound := 29599)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0038CountsOne : Fin 9 → ℕ := ![4244, 4274, 4221, 4257, 4240, 4249, 4233, 4238, 4250]

def tailEnvelope0038CountsThree : Fin 9 → ℕ := ![4262, 4238, 4246, 4248, 4235, 4255, 4241, 4257, 4244]

theorem tailEnvelope0038 :
    TailDiagonalSevenCellRatioRange 6043363 6073579
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6073578 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6073578 (tailEnvelope0038CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0038CountsOne
      (lower := 6043363) (upper := 6073578) (N := N)
      (bound := 29752)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6073578 (tailEnvelope0038CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0038CountsThree
      (lower := 6043363) (upper := 6073578) (N := N)
      (bound := 29753)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0039CountsOne : Fin 9 → ℕ := ![4268, 4294, 4243, 4279, 4262, 4272, 4254, 4261, 4271]

def tailEnvelope0039CountsThree : Fin 9 → ℕ := ![4283, 4259, 4268, 4271, 4256, 4277, 4260, 4277, 4260]

theorem tailEnvelope0039 :
    TailDiagonalSevenCellRatioRange 6073579 6103946
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6103945 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6103945 (tailEnvelope0039CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0039CountsOne
      (lower := 6073579) (upper := 6103945) (N := N)
      (bound := 29907)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6103945 (tailEnvelope0039CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0039CountsThree
      (lower := 6073579) (upper := 6103945) (N := N)
      (bound := 29896)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0040CountsOne : Fin 9 → ℕ := ![4287, 4314, 4262, 4295, 4285, 4293, 4273, 4284, 4293]

def tailEnvelope0040CountsThree : Fin 9 → ℕ := ![4307, 4282, 4288, 4292, 4276, 4299, 4282, 4300, 4280]

theorem tailEnvelope0040 :
    TailDiagonalSevenCellRatioRange 6103946 6134465
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6134464 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6134464 (tailEnvelope0040CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0040CountsOne
      (lower := 6103946) (upper := 6134464) (N := N)
      (bound := 30051)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6134464 (tailEnvelope0040CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0040CountsThree
      (lower := 6103946) (upper := 6134464) (N := N)
      (bound := 30050)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0041CountsOne : Fin 9 → ℕ := ![4308, 4335, 4285, 4318, 4305, 4314, 4296, 4309, 4313]

def tailEnvelope0041CountsThree : Fin 9 → ℕ := ![4329, 4304, 4308, 4312, 4300, 4315, 4302, 4318, 4300]

theorem tailEnvelope0041 :
    TailDiagonalSevenCellRatioRange 6134465 6165137
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6165136 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6165136 (tailEnvelope0041CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0041CountsOne
      (lower := 6134465) (upper := 6165136) (N := N)
      (bound := 30202)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6165136 (tailEnvelope0041CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0041CountsThree
      (lower := 6134465) (upper := 6165136) (N := N)
      (bound := 30188)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0042CountsOne : Fin 9 → ℕ := ![4330, 4357, 4307, 4339, 4326, 4336, 4320, 4330, 4333]

def tailEnvelope0042CountsThree : Fin 9 → ℕ := ![4351, 4323, 4334, 4337, 4322, 4335, 4324, 4342, 4322]

theorem tailEnvelope0042 :
    TailDiagonalSevenCellRatioRange 6165137 6195962
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6195961 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6195961 (tailEnvelope0042CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0042CountsOne
      (lower := 6165137) (upper := 6195961) (N := N)
      (bound := 30351)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6195961 (tailEnvelope0042CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0042CountsThree
      (lower := 6165137) (upper := 6195961) (N := N)
      (bound := 30346)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0043CountsOne : Fin 9 → ℕ := ![4352, 4381, 4328, 4361, 4347, 4355, 4340, 4347, 4355]

def tailEnvelope0043CountsThree : Fin 9 → ℕ := ![4370, 4345, 4354, 4360, 4345, 4358, 4348, 4364, 4345]

theorem tailEnvelope0043 :
    TailDiagonalSevenCellRatioRange 6195962 6226941
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6226940 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6226940 (tailEnvelope0043CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0043CountsOne
      (lower := 6195962) (upper := 6226940) (N := N)
      (bound := 30498)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6226940 (tailEnvelope0043CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0043CountsThree
      (lower := 6195962) (upper := 6226940) (N := N)
      (bound := 30499)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0044CountsOne : Fin 9 → ℕ := ![4370, 4404, 4350, 4387, 4368, 4378, 4360, 4369, 4375]

def tailEnvelope0044CountsThree : Fin 9 → ℕ := ![4389, 4368, 4372, 4382, 4367, 4379, 4369, 4383, 4368]

theorem tailEnvelope0044 :
    TailDiagonalSevenCellRatioRange 6226941 6258075
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6258074 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6258074 (tailEnvelope0044CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0044CountsOne
      (lower := 6226941) (upper := 6258074) (N := N)
      (bound := 30651)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6258074 (tailEnvelope0044CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0044CountsThree
      (lower := 6226941) (upper := 6258074) (N := N)
      (bound := 30642)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0045CountsOne : Fin 9 → ℕ := ![4393, 4431, 4371, 4406, 4387, 4400, 4383, 4390, 4398]

def tailEnvelope0045CountsThree : Fin 9 → ℕ := ![4411, 4390, 4400, 4404, 4389, 4399, 4391, 4408, 4390]

theorem tailEnvelope0045 :
    TailDiagonalSevenCellRatioRange 6258075 6289365
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6289364 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6289364 (tailEnvelope0045CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0045CountsOne
      (lower := 6258075) (upper := 6289364) (N := N)
      (bound := 30805)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6289364 (tailEnvelope0045CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0045CountsThree
      (lower := 6258075) (upper := 6289364) (N := N)
      (bound := 30803)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0046CountsOne : Fin 9 → ℕ := ![4414, 4452, 4390, 4428, 4413, 4423, 4405, 4410, 4422]

def tailEnvelope0046CountsThree : Fin 9 → ℕ := ![4433, 4414, 4422, 4423, 4411, 4418, 4413, 4431, 4411]

theorem tailEnvelope0046 :
    TailDiagonalSevenCellRatioRange 6289365 6320811
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6320810 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6320810 (tailEnvelope0046CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0046CountsOne
      (lower := 6289365) (upper := 6320810) (N := N)
      (bound := 30962)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6320810 (tailEnvelope0046CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0046CountsThree
      (lower := 6289365) (upper := 6320810) (N := N)
      (bound := 30954)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0047CountsOne : Fin 9 → ℕ := ![4437, 4475, 4410, 4451, 4434, 4443, 4427, 4432, 4449]

def tailEnvelope0047CountsThree : Fin 9 → ℕ := ![4456, 4439, 4444, 4443, 4431, 4446, 4437, 4452, 4430]

theorem tailEnvelope0047 :
    TailDiagonalSevenCellRatioRange 6320811 6352415
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 6352414 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          6352414 (tailEnvelope0047CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0047CountsOne
      (lower := 6320811) (upper := 6352414) (N := N)
      (bound := 31121)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          6352414 (tailEnvelope0047CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0047CountsThree
      (lower := 6320811) (upper := 6352414) (N := N)
      (bound := 31117)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
