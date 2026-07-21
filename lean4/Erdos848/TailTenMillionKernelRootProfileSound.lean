import Erdos848.TailTenMillionKernelRootProfileChecker

namespace Erdos848

/-!
# Soundness and predecessor descent for the twenty-million root profile

The first theorem pays for replacing the floor quotient in the actual
coefficient by a rational upper bound.  The remaining lemmas show that the
resulting smooth profile can increase only at a certified prime jump.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionKernelRootActualProfile_le_smooth
    {row : TenMillionKernelRootRow} {supportLength N : Nat}
    (hLower : 10_000_000 ≤ N) :
    tenMillionKernelRootActualProfile row supportLength N ≤
      tenMillionKernelRootSmoothProfile row supportLength N := by
  let p := N / row.split
  let height : Rat :=
    (row.rootFactor * 2 ^ (supportLength + 1) : Nat)
  let survivors : Rat := row.survivorCeiling supportLength
  let primeDelta : Rat :=
    (Nat.primeCounting p -
      Nat.primeCounting row.cutoff : Nat)
  let X : Rat := (N / 25 + 2 : Nat)
  let C : Rat := 4 + survivors / 3026
  have hNpos : (0 : Rat) < N := by positivity
  have hpNat : 0 < p := by
    dsimp [p]
    cases row <;>
      norm_num [TenMillionKernelRootRow.split] at * <;> omega
  have hpPos : (0 : Rat) < p := by exact_mod_cast hpNat
  have hdiv :
      (((N / 25 : Nat) : Rat) ≤ (N : Rat) / 25) :=
    Nat.cast_div_le
  have hX :
      X / (N : Rat) ≤ 1 / 25 + 2 / (N : Rat) := by
    calc
      X / (N : Rat) ≤ ((N : Rat) / 25 + 2) / N := by
        apply div_le_div_of_nonneg_right
        · dsimp [X]
          push_cast
          linarith
        · exact hNpos.le
      _ = 1 / 25 + 2 / (N : Rat) := by
        field_simp [ne_of_gt hNpos]
  change
    6 * (primeDelta +
      height * (survivors + X / (2 * (p : Rat)) * C)) / N ≤
    6 * (primeDelta + height * survivors) / N +
      3 * height * C * (1 / 25 + 2 / (N : Rat)) / p
  calc
    6 * (primeDelta +
        height * (survivors + X / (2 * (p : Rat)) * C)) / N =
      6 * (primeDelta + height * survivors) / N +
        3 * height * C * (X / (N : Rat)) / p := by ring
    _ ≤ 6 * (primeDelta + height * survivors) / N +
        3 * height * C * (1 / 25 + 2 / (N : Rat)) / p := by
      gcongr

def TenMillionKernelRootRow.controllingNormal :
    TenMillionKernelRootRow → TenMillionKernelRootRow
  | .v1Twist => .v1
  | .v2Twist => .v2
  | .v3Twist => .v3
  | row => row

theorem tenMillionKernelRootSmoothProfile_le_controllingNormal
    (row : TenMillionKernelRootRow) (supportLength N : Nat)
    (hLength : supportLength < 7) :
    tenMillionKernelRootSmoothProfile row supportLength N ≤
      tenMillionKernelRootSmoothProfile
        row.controllingNormal supportLength N := by
  cases row with
  | v1 | v2 | v3 | odd7 | odd7Twist => rfl
  | v1Twist =>
      interval_cases supportLength <;>
        simp only [tenMillionKernelRootSmoothProfile,
          TenMillionKernelRootRow.controllingNormal,
          TenMillionKernelRootRow.split, TenMillionKernelRootRow.rootFactor,
          TenMillionKernelRootRow.cutoff,
          TenMillionKernelRootRow.survivorCeiling] <;>
        gcongr <;> norm_num
  | v2Twist =>
      interval_cases supportLength <;>
        simp only [tenMillionKernelRootSmoothProfile,
          TenMillionKernelRootRow.controllingNormal,
          TenMillionKernelRootRow.split, TenMillionKernelRootRow.rootFactor,
          TenMillionKernelRootRow.cutoff,
          TenMillionKernelRootRow.survivorCeiling] <;>
        gcongr <;> norm_num
  | v3Twist =>
      interval_cases supportLength <;>
        simp only [tenMillionKernelRootSmoothProfile,
          TenMillionKernelRootRow.controllingNormal,
          TenMillionKernelRootRow.split, TenMillionKernelRootRow.rootFactor,
          TenMillionKernelRootRow.cutoff,
          TenMillionKernelRootRow.survivorCeiling] <;>
        gcongr <;> norm_num

theorem TenMillionKernelRootRow.controllingNormal_mem_profileRows
    (row : TenMillionKernelRootRow) :
    row.controllingNormal ∈ tenMillionKernelRootProfileRows := by
  cases row <;> simp [TenMillionKernelRootRow.controllingNormal,
    tenMillionKernelRootProfileRows]

theorem TenMillionKernelRootRow.controllingNormal_envelope
    (row : TenMillionKernelRootRow) :
    row.controllingNormal.envelope = row.envelope := by
  cases row <;> rfl

end Erdos848
