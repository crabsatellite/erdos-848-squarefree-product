import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0016CountsOne : Fin 9 → ℕ := ![3801, 3831, 3779, 3812, 3792, 3804, 3801, 3801, 3813]

def tailEnvelope0016CountsThree : Fin 9 → ℕ := ![3823, 3794, 3806, 3809, 3796, 3808, 3807, 3813, 3796]

theorem tailEnvelope0016 :
    TailDiagonalSevenCellRatioRange 5415347 5442423
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5442422 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5442422 (tailEnvelope0016CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0016CountsOne
      (lower := 5415347) (upper := 5442422) (N := N)
      (bound := 26663)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5442422 (tailEnvelope0016CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0016CountsThree
      (lower := 5415347) (upper := 5442422) (N := N)
      (bound := 26662)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0017CountsOne : Fin 9 → ℕ := ![3820, 3853, 3797, 3831, 3813, 3823, 3818, 3817, 3829]

def tailEnvelope0017CountsThree : Fin 9 → ℕ := ![3843, 3814, 3826, 3826, 3814, 3826, 3828, 3835, 3816]

theorem tailEnvelope0017 :
    TailDiagonalSevenCellRatioRange 5442423 5469635
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5469634 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5469634 (tailEnvelope0017CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0017CountsOne
      (lower := 5442423) (upper := 5469634) (N := N)
      (bound := 26791)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5469634 (tailEnvelope0017CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0017CountsThree
      (lower := 5442423) (upper := 5469634) (N := N)
      (bound := 26800)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0018CountsOne : Fin 9 → ℕ := ![3843, 3871, 3814, 3848, 3832, 3845, 3837, 3834, 3846]

def tailEnvelope0018CountsThree : Fin 9 → ℕ := ![3858, 3830, 3847, 3850, 3834, 3844, 3848, 3854, 3839]

theorem tailEnvelope0018 :
    TailDiagonalSevenCellRatioRange 5469635 5496983
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5496982 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5496982 (tailEnvelope0018CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0018CountsOne
      (lower := 5469635) (upper := 5496982) (N := N)
      (bound := 26924)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5496982 (tailEnvelope0018CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0018CountsThree
      (lower := 5469635) (upper := 5496982) (N := N)
      (bound := 26940)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0019CountsOne : Fin 9 → ℕ := ![3862, 3891, 3837, 3870, 3851, 3864, 3855, 3854, 3868]

def tailEnvelope0019CountsThree : Fin 9 → ℕ := ![3877, 3849, 3868, 3864, 3854, 3862, 3869, 3875, 3855]

theorem tailEnvelope0019 :
    TailDiagonalSevenCellRatioRange 5496983 5524467
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5524466 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5524466 (tailEnvelope0019CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0019CountsOne
      (lower := 5496983) (upper := 5524466) (N := N)
      (bound := 27064)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5524466 (tailEnvelope0019CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0019CountsThree
      (lower := 5496983) (upper := 5524466) (N := N)
      (bound := 27070)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0020CountsOne : Fin 9 → ℕ := ![3880, 3907, 3851, 3888, 3871, 3887, 3871, 3874, 3892]

def tailEnvelope0020CountsThree : Fin 9 → ℕ := ![3897, 3871, 3888, 3883, 3872, 3884, 3888, 3896, 3871]

theorem tailEnvelope0020 :
    TailDiagonalSevenCellRatioRange 5524467 5552089
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5552088 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5552088 (tailEnvelope0020CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0020CountsOne
      (lower := 5524467) (upper := 5552088) (N := N)
      (bound := 27199)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5552088 (tailEnvelope0020CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0020CountsThree
      (lower := 5524467) (upper := 5552088) (N := N)
      (bound := 27208)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0021CountsOne : Fin 9 → ℕ := ![3901, 3926, 3871, 3911, 3891, 3906, 3890, 3890, 3908]

def tailEnvelope0021CountsThree : Fin 9 → ℕ := ![3918, 3894, 3905, 3904, 3891, 3903, 3904, 3916, 3892]

theorem tailEnvelope0021 :
    TailDiagonalSevenCellRatioRange 5552089 5579849
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5579848 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5579848 (tailEnvelope0021CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0021CountsOne
      (lower := 5552089) (upper := 5579848) (N := N)
      (bound := 27333)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5579848 (tailEnvelope0021CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0021CountsThree
      (lower := 5552089) (upper := 5579848) (N := N)
      (bound := 27344)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0022CountsOne : Fin 9 → ℕ := ![3918, 3942, 3893, 3929, 3911, 3922, 3911, 3916, 3926]

def tailEnvelope0022CountsThree : Fin 9 → ℕ := ![3937, 3918, 3929, 3923, 3909, 3924, 3923, 3933, 3913]

theorem tailEnvelope0022 :
    TailDiagonalSevenCellRatioRange 5579849 5607748
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5607747 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5607747 (tailEnvelope0022CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0022CountsOne
      (lower := 5579849) (upper := 5607747) (N := N)
      (bound := 27464)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5607747 (tailEnvelope0022CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0022CountsThree
      (lower := 5579849) (upper := 5607747) (N := N)
      (bound := 27487)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0023CountsOne : Fin 9 → ℕ := ![3939, 3961, 3913, 3956, 3927, 3943, 3926, 3936, 3945]

def tailEnvelope0023CountsThree : Fin 9 → ℕ := ![3956, 3935, 3947, 3942, 3929, 3946, 3944, 3951, 3930]

theorem tailEnvelope0023 :
    TailDiagonalSevenCellRatioRange 5607748 5635786
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5635785 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5635785 (tailEnvelope0023CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0023CountsOne
      (lower := 5607748) (upper := 5635785) (N := N)
      (bound := 27607)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5635785 (tailEnvelope0023CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0023CountsThree
      (lower := 5607748) (upper := 5635785) (N := N)
      (bound := 27621)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0024CountsOne : Fin 9 → ℕ := ![3956, 3984, 3931, 3975, 3947, 3963, 3948, 3954, 3964]

def tailEnvelope0024CountsThree : Fin 9 → ℕ := ![3980, 3953, 3964, 3965, 3953, 3965, 3958, 3969, 3951]

theorem tailEnvelope0024 :
    TailDiagonalSevenCellRatioRange 5635786 5663964
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5663963 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5663963 (tailEnvelope0024CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0024CountsOne
      (lower := 5635786) (upper := 5663963) (N := N)
      (bound := 27744)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5663963 (tailEnvelope0024CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0024CountsThree
      (lower := 5635786) (upper := 5663963) (N := N)
      (bound := 27754)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0025CountsOne : Fin 9 → ℕ := ![3976, 4008, 3950, 3991, 3970, 3984, 3966, 3975, 3986]

def tailEnvelope0025CountsThree : Fin 9 → ℕ := ![4001, 3972, 3980, 3984, 3971, 3986, 3977, 3992, 3970]

theorem tailEnvelope0025 :
    TailDiagonalSevenCellRatioRange 5663964 5692283
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5692282 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5692282 (tailEnvelope0025CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0025CountsOne
      (lower := 5663964) (upper := 5692282) (N := N)
      (bound := 27890)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5692282 (tailEnvelope0025CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0025CountsThree
      (lower := 5663964) (upper := 5692282) (N := N)
      (bound := 27892)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0026CountsOne : Fin 9 → ℕ := ![3997, 4023, 3974, 4010, 3990, 4003, 3991, 3992, 4005]

def tailEnvelope0026CountsThree : Fin 9 → ℕ := ![4022, 3994, 4003, 4003, 3986, 4007, 3997, 4011, 3987]

theorem tailEnvelope0026 :
    TailDiagonalSevenCellRatioRange 5692283 5720744
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5720743 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5720743 (tailEnvelope0026CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0026CountsOne
      (lower := 5692283) (upper := 5720743) (N := N)
      (bound := 28021)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5720743 (tailEnvelope0026CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0026CountsThree
      (lower := 5692283) (upper := 5720743) (N := N)
      (bound := 28037)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0027CountsOne : Fin 9 → ℕ := ![4019, 4041, 3998, 4029, 4011, 4018, 4012, 4013, 4027]

def tailEnvelope0027CountsThree : Fin 9 → ℕ := ![4038, 4013, 4023, 4022, 4007, 4025, 4019, 4030, 4009]

theorem tailEnvelope0027 :
    TailDiagonalSevenCellRatioRange 5720744 5749347
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5749346 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5749346 (tailEnvelope0027CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0027CountsOne
      (lower := 5720744) (upper := 5749346) (N := N)
      (bound := 28159)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5749346 (tailEnvelope0027CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0027CountsThree
      (lower := 5720744) (upper := 5749346) (N := N)
      (bound := 28170)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0028CountsOne : Fin 9 → ℕ := ![4037, 4060, 4017, 4050, 4031, 4042, 4035, 4032, 4046]

def tailEnvelope0028CountsThree : Fin 9 → ℕ := ![4059, 4033, 4044, 4040, 4028, 4043, 4037, 4050, 4035]

theorem tailEnvelope0028 :
    TailDiagonalSevenCellRatioRange 5749347 5778093
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5778092 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5778092 (tailEnvelope0028CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0028CountsOne
      (lower := 5749347) (upper := 5778092) (N := N)
      (bound := 28302)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5778092 (tailEnvelope0028CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0028CountsThree
      (lower := 5749347) (upper := 5778092) (N := N)
      (bound := 28308)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0029CountsOne : Fin 9 → ℕ := ![4060, 4085, 4038, 4070, 4049, 4059, 4054, 4054, 4067]

def tailEnvelope0029CountsThree : Fin 9 → ℕ := ![4079, 4053, 4062, 4066, 4050, 4063, 4056, 4069, 4054]

theorem tailEnvelope0029 :
    TailDiagonalSevenCellRatioRange 5778093 5806983
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5806982 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5806982 (tailEnvelope0029CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0029CountsOne
      (lower := 5778093) (upper := 5806982) (N := N)
      (bound := 28449)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5806982 (tailEnvelope0029CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0029CountsThree
      (lower := 5778093) (upper := 5806982) (N := N)
      (bound := 28449)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0030CountsOne : Fin 9 → ℕ := ![4077, 4102, 4060, 4089, 4070, 4080, 4075, 4071, 4087]

def tailEnvelope0030CountsThree : Fin 9 → ℕ := ![4101, 4076, 4080, 4083, 4071, 4083, 4073, 4089, 4071]

theorem tailEnvelope0030 :
    TailDiagonalSevenCellRatioRange 5806983 5836017
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5836016 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5836016 (tailEnvelope0030CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0030CountsOne
      (lower := 5806983) (upper := 5836016) (N := N)
      (bound := 28581)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5836016 (tailEnvelope0030CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0030CountsThree
      (lower := 5806983) (upper := 5836016) (N := N)
      (bound := 28585)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0031CountsOne : Fin 9 → ℕ := ![4101, 4123, 4076, 4107, 4091, 4097, 4094, 4093, 4108]

def tailEnvelope0031CountsThree : Fin 9 → ℕ := ![4120, 4094, 4101, 4106, 4091, 4107, 4091, 4110, 4095]

theorem tailEnvelope0031 :
    TailDiagonalSevenCellRatioRange 5836017 5865197
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5865196 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5865196 (tailEnvelope0031CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0031CountsOne
      (lower := 5836017) (upper := 5865196) (N := N)
      (bound := 28723)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5865196 (tailEnvelope0031CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0031CountsThree
      (lower := 5836017) (upper := 5865196) (N := N)
      (bound := 28733)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
