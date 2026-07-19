import Erdos848.GeneratedTailDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0000CountsOne : Fin 9 → ℕ := ![3516, 3539, 3492, 3525, 3499, 3515, 3499, 3506, 3523]

def tailEnvelope0000CountsThree : Fin 9 → ℕ := ![3525, 3503, 3516, 3515, 3507, 3518, 3514, 3521, 3499]

theorem tailEnvelope0000 :
    TailDiagonalSevenCellRatioRange 5000000 5025000
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5024999 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5024999 (tailEnvelope0000CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0000CountsOne
      (lower := 5000000) (upper := 5024999) (N := N)
      (bound := 24623)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5024999 (tailEnvelope0000CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0000CountsThree
      (lower := 5000000) (upper := 5024999) (N := N)
      (bound := 24616)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0001CountsOne : Fin 9 → ℕ := ![3534, 3554, 3510, 3542, 3518, 3533, 3519, 3523, 3541]

def tailEnvelope0001CountsThree : Fin 9 → ℕ := ![3548, 3520, 3535, 3533, 3524, 3536, 3527, 3538, 3516]

theorem tailEnvelope0001 :
    TailDiagonalSevenCellRatioRange 5025000 5050125
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5050124 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5050124 (tailEnvelope0001CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0001CountsOne
      (lower := 5025000) (upper := 5050124) (N := N)
      (bound := 24746)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5050124 (tailEnvelope0001CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0001CountsThree
      (lower := 5025000) (upper := 5050124) (N := N)
      (bound := 24741)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0002CountsOne : Fin 9 → ℕ := ![3550, 3574, 3529, 3558, 3534, 3550, 3537, 3542, 3559]

def tailEnvelope0002CountsThree : Fin 9 → ℕ := ![3563, 3539, 3553, 3549, 3542, 3553, 3544, 3553, 3534]

theorem tailEnvelope0002 :
    TailDiagonalSevenCellRatioRange 5050125 5075375
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5075374 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5075374 (tailEnvelope0002CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0002CountsOne
      (lower := 5050125) (upper := 5075374) (N := N)
      (bound := 24870)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5075374 (tailEnvelope0002CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0002CountsThree
      (lower := 5050125) (upper := 5075374) (N := N)
      (bound := 24857)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0003CountsOne : Fin 9 → ℕ := ![3566, 3593, 3545, 3579, 3553, 3570, 3559, 3559, 3575]

def tailEnvelope0003CountsThree : Fin 9 → ℕ := ![3578, 3555, 3570, 3568, 3558, 3567, 3565, 3575, 3556]

theorem tailEnvelope0003 :
    TailDiagonalSevenCellRatioRange 5075375 5100751
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5100750 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5100750 (tailEnvelope0003CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0003CountsOne
      (lower := 5075375) (upper := 5100750) (N := N)
      (bound := 25001)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5100750 (tailEnvelope0003CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0003CountsThree
      (lower := 5075375) (upper := 5100750) (N := N)
      (bound := 24981)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0004CountsOne : Fin 9 → ℕ := ![3584, 3607, 3561, 3596, 3572, 3588, 3573, 3577, 3593]

def tailEnvelope0004CountsThree : Fin 9 → ℕ := ![3596, 3575, 3587, 3586, 3577, 3584, 3581, 3593, 3574]

theorem tailEnvelope0004 :
    TailDiagonalSevenCellRatioRange 5100751 5126254
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5126253 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5126253 (tailEnvelope0004CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0004CountsOne
      (lower := 5100751) (upper := 5126253) (N := N)
      (bound := 25118)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5126253 (tailEnvelope0004CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0004CountsThree
      (lower := 5100751) (upper := 5126253) (N := N)
      (bound := 25104)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0005CountsOne : Fin 9 → ℕ := ![3603, 3628, 3579, 3615, 3588, 3602, 3593, 3594, 3609]

def tailEnvelope0005CountsThree : Fin 9 → ℕ := ![3612, 3592, 3604, 3603, 3594, 3602, 3600, 3612, 3593]

theorem tailEnvelope0005 :
    TailDiagonalSevenCellRatioRange 5126254 5151885
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5151884 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5151884 (tailEnvelope0005CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0005CountsOne
      (lower := 5126254) (upper := 5151884) (N := N)
      (bound := 25244)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5151884 (tailEnvelope0005CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0005CountsThree
      (lower := 5126254) (upper := 5151884) (N := N)
      (bound := 25227)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0006CountsOne : Fin 9 → ℕ := ![3622, 3645, 3595, 3630, 3613, 3620, 3611, 3613, 3626]

def tailEnvelope0006CountsThree : Fin 9 → ℕ := ![3629, 3611, 3623, 3621, 3613, 3621, 3620, 3632, 3613]

theorem tailEnvelope0006 :
    TailDiagonalSevenCellRatioRange 5151885 5177644
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5177643 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5177643 (tailEnvelope0006CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0006CountsOne
      (lower := 5151885) (upper := 5177643) (N := N)
      (bound := 25369)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5177643 (tailEnvelope0006CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0006CountsThree
      (lower := 5151885) (upper := 5177643) (N := N)
      (bound := 25359)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0007CountsOne : Fin 9 → ℕ := ![3639, 3665, 3612, 3648, 3625, 3638, 3626, 3628, 3646]

def tailEnvelope0007CountsThree : Fin 9 → ℕ := ![3648, 3629, 3641, 3639, 3629, 3641, 3640, 3650, 3632]

theorem tailEnvelope0007 :
    TailDiagonalSevenCellRatioRange 5177644 5203532
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5203531 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5203531 (tailEnvelope0007CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0007CountsOne
      (lower := 5177644) (upper := 5203531) (N := N)
      (bound := 25490)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5203531 (tailEnvelope0007CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0007CountsThree
      (lower := 5177644) (upper := 5203531) (N := N)
      (bound := 25491)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0008CountsOne : Fin 9 → ℕ := ![3657, 3680, 3628, 3672, 3646, 3657, 3642, 3647, 3664]

def tailEnvelope0008CountsThree : Fin 9 → ℕ := ![3669, 3650, 3658, 3655, 3647, 3658, 3659, 3669, 3650]

theorem tailEnvelope0008 :
    TailDiagonalSevenCellRatioRange 5203532 5229549
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5229548 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5229548 (tailEnvelope0008CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0008CountsOne
      (lower := 5203532) (upper := 5229548) (N := N)
      (bound := 25623)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5229548 (tailEnvelope0008CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0008CountsThree
      (lower := 5203532) (upper := 5229548) (N := N)
      (bound := 25618)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0009CountsOne : Fin 9 → ℕ := ![3671, 3699, 3644, 3690, 3662, 3675, 3666, 3668, 3681]

def tailEnvelope0009CountsThree : Fin 9 → ℕ := ![3689, 3662, 3677, 3674, 3666, 3679, 3671, 3687, 3666]

theorem tailEnvelope0009 :
    TailDiagonalSevenCellRatioRange 5229549 5255696
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5255695 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5255695 (tailEnvelope0009CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0009CountsOne
      (lower := 5229549) (upper := 5255695) (N := N)
      (bound := 25750)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5255695 (tailEnvelope0009CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0009CountsThree
      (lower := 5229549) (upper := 5255695) (N := N)
      (bound := 25743)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0010CountsOne : Fin 9 → ℕ := ![3689, 3719, 3663, 3705, 3682, 3691, 3683, 3684, 3697]

def tailEnvelope0010CountsThree : Fin 9 → ℕ := ![3708, 3681, 3695, 3691, 3682, 3696, 3692, 3706, 3686]

theorem tailEnvelope0010 :
    TailDiagonalSevenCellRatioRange 5255696 5281974
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5281973 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5281973 (tailEnvelope0010CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0010CountsOne
      (lower := 5255696) (upper := 5281973) (N := N)
      (bound := 25868)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5281973 (tailEnvelope0010CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0010CountsThree
      (lower := 5255696) (upper := 5281973) (N := N)
      (bound := 25874)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0011CountsOne : Fin 9 → ℕ := ![3706, 3736, 3680, 3721, 3701, 3713, 3702, 3706, 3716]

def tailEnvelope0011CountsThree : Fin 9 → ℕ := ![3727, 3701, 3716, 3712, 3703, 3709, 3708, 3724, 3706]

theorem tailEnvelope0011 :
    TailDiagonalSevenCellRatioRange 5281974 5308383
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5308382 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5308382 (tailEnvelope0011CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0011CountsOne
      (lower := 5281974) (upper := 5308382) (N := N)
      (bound := 26000)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5308382 (tailEnvelope0011CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0011CountsThree
      (lower := 5281974) (upper := 5308382) (N := N)
      (bound := 26002)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0012CountsOne : Fin 9 → ℕ := ![3726, 3751, 3701, 3742, 3718, 3730, 3720, 3726, 3734]

def tailEnvelope0012CountsThree : Fin 9 → ℕ := ![3739, 3719, 3734, 3729, 3721, 3731, 3731, 3741, 3723]

theorem tailEnvelope0012 :
    TailDiagonalSevenCellRatioRange 5308383 5334924
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5334923 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5334923 (tailEnvelope0012CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0012CountsOne
      (lower := 5308383) (upper := 5334923) (N := N)
      (bound := 26129)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5334923 (tailEnvelope0012CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0012CountsThree
      (lower := 5308383) (upper := 5334923) (N := N)
      (bound := 26128)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0013CountsOne : Fin 9 → ℕ := ![3745, 3774, 3719, 3758, 3738, 3750, 3743, 3744, 3753]

def tailEnvelope0013CountsThree : Fin 9 → ℕ := ![3761, 3739, 3752, 3749, 3740, 3744, 3750, 3757, 3744]

theorem tailEnvelope0013 :
    TailDiagonalSevenCellRatioRange 5334924 5361598
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5361597 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5361597 (tailEnvelope0013CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0013CountsOne
      (lower := 5334924) (upper := 5361597) (N := N)
      (bound := 26267)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5361597 (tailEnvelope0013CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0013CountsThree
      (lower := 5334924) (upper := 5361597) (N := N)
      (bound := 26257)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0014CountsOne : Fin 9 → ℕ := ![3763, 3794, 3738, 3775, 3757, 3769, 3760, 3762, 3774]

def tailEnvelope0014CountsThree : Fin 9 → ℕ := ![3783, 3757, 3768, 3768, 3760, 3768, 3769, 3776, 3763]

theorem tailEnvelope0014 :
    TailDiagonalSevenCellRatioRange 5361598 5388405
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5388404 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5388404 (tailEnvelope0014CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0014CountsOne
      (lower := 5361598) (upper := 5388404) (N := N)
      (bound := 26397)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5388404 (tailEnvelope0014CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0014CountsThree
      (lower := 5361598) (upper := 5388404) (N := N)
      (bound := 26395)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

def tailEnvelope0015CountsOne : Fin 9 → ℕ := ![3783, 3812, 3754, 3795, 3777, 3787, 3780, 3779, 3795]

def tailEnvelope0015CountsThree : Fin 9 → ℕ := ![3803, 3775, 3790, 3788, 3776, 3785, 3786, 3796, 3781]

theorem tailEnvelope0015 :
    TailDiagonalSevenCellRatioRange 5388405 5415347
      (492664032616705 / 100000000000000000) := by
  intro N hLower hStop parity cells hcard
  have hNUpper : N ≤ 5415346 := by omega
  cases parity
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := false, residue := residue }).Cutoff
          5415346 (tailEnvelope0015CountsOne residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells false
      tailEnvelope0015CountsOne
      (lower := 5388405) (upper := 5415346) (N := N)
      (bound := 26531)
      (fun residue => cellTargetsOrdered
        { parity := false, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)
  · have hcutoff : ∀ residue : Fin 9,
        (cellTargets { parity := true, residue := residue }).Cutoff
          5415346 (tailEnvelope0015CountsThree residue) := by
      intro residue
      fin_cases residue <;> decide
    have hratio := tailDiagonalSevenCells_ratio_le
      certificate cellTargets projectsOddCells true
      tailEnvelope0015CountsThree
      (lower := 5388405) (upper := 5415346) (N := N)
      (bound := 26529)
      (fun residue => cellTargetsOrdered
        { parity := true, residue := residue })
      hcutoff (by decide) (by decide) hLower hNUpper
      (by decide) cells hcard
    exact hratio.trans (by norm_num)

end Erdos848.GeneratedTailDiagonalCoverage
