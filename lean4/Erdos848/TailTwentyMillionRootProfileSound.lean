import Erdos848.TailTwentyMillionRootProfileChecker

namespace Erdos848

/-!
# Soundness and predecessor descent for the twenty-million root profile

The first theorem pays for replacing the floor quotient in the actual
coefficient by a rational upper bound.  The remaining lemmas show that the
resulting smooth profile can increase only at a certified prime jump.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem twentyMillionRootActualProfile_le_smooth
    {row : TwentyMillionRootRow} {supportLength N : Nat}
    (hLower : 20_000_000 ≤ N) :
    twentyMillionRootActualProfile row supportLength N ≤
      twentyMillionRootSmoothProfile row supportLength N := by
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
      norm_num [TwentyMillionRootRow.split] at * <;> omega
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

def TwentyMillionRootRow.controllingNormal :
    TwentyMillionRootRow → TwentyMillionRootRow
  | .evenOneTwist => .evenOne
  | .evenTwoTwist => .evenTwo
  | .evenThreeTwist => .evenThree
  | .oddTwist => .odd
  | row => row

theorem twentyMillionRootSmoothProfile_le_controllingNormal
    (row : TwentyMillionRootRow) (supportLength N : Nat)
    (hLength : supportLength < 8) :
    twentyMillionRootSmoothProfile row supportLength N ≤
      twentyMillionRootSmoothProfile
        row.controllingNormal supportLength N := by
  cases row with
  | evenOne | evenTwo | evenThree | odd => rfl
  | evenOneTwist =>
      interval_cases supportLength <;>
        simp only [twentyMillionRootSmoothProfile,
          TwentyMillionRootRow.controllingNormal,
          TwentyMillionRootRow.split, TwentyMillionRootRow.rootFactor,
          TwentyMillionRootRow.cutoff,
          TwentyMillionRootRow.survivorCeiling] <;>
        gcongr <;> norm_num
  | evenTwoTwist =>
      interval_cases supportLength <;>
        simp only [twentyMillionRootSmoothProfile,
          TwentyMillionRootRow.controllingNormal,
          TwentyMillionRootRow.split, TwentyMillionRootRow.rootFactor,
          TwentyMillionRootRow.cutoff,
          TwentyMillionRootRow.survivorCeiling] <;>
        gcongr <;> norm_num
  | evenThreeTwist =>
      interval_cases supportLength <;>
        simp only [twentyMillionRootSmoothProfile,
          TwentyMillionRootRow.controllingNormal,
          TwentyMillionRootRow.split, TwentyMillionRootRow.rootFactor,
          TwentyMillionRootRow.cutoff,
          TwentyMillionRootRow.survivorCeiling] <;>
        gcongr <;> norm_num
  | oddTwist =>
      interval_cases supportLength <;>
        simp only [twentyMillionRootSmoothProfile,
          TwentyMillionRootRow.controllingNormal,
          TwentyMillionRootRow.split, TwentyMillionRootRow.rootFactor,
          TwentyMillionRootRow.cutoff,
          TwentyMillionRootRow.survivorCeiling] <;>
        gcongr <;> norm_num

theorem TwentyMillionRootRow.controllingNormal_mem_profileRows
    (row : TwentyMillionRootRow) :
    row.controllingNormal ∈ twentyMillionRootProfileRows := by
  cases row <;> simp [TwentyMillionRootRow.controllingNormal,
    twentyMillionRootProfileRows]

theorem TwentyMillionRootRow.controllingNormal_envelope
    (row : TwentyMillionRootRow) :
    row.controllingNormal.envelope = row.envelope := by
  cases row <;> rfl

#print axioms twentyMillionRootActualProfile_le_smooth
#print axioms twentyMillionRootSmoothProfile_le_controllingNormal
#print axioms TwentyMillionRootRow.controllingNormal_mem_profileRows

end Erdos848
