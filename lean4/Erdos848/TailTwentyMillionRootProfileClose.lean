import Erdos848.TailTwentyMillionRootProfileDescent
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.Certificate
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.Certificate
import Erdos848.TailRootEnvelope

namespace Erdos848

/-!
# Uniform close of all eight twenty-million root rows

Every row is checked at the lower endpoint and at each prime jump.  The
predecessor-descent theorem fills every integer between those candidates.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem twentyMillionRootSmoothProfile_lower_le
    (row : TwentyMillionRootRow) (supportLength : Nat)
    (hrow : row ∈ twentyMillionRootProfileRows)
    (hLength : supportLength < 8) :
    twentyMillionRootSmoothProfile row supportLength twentyMillionLower ≤
      row.envelope := by
  exact GeneratedTailTwentyMillionRootLowerCoverage.lower_profile_le
    row supportLength hrow hLength

theorem twentyMillionRootSmoothProfile_candidate_le
    {row : TwentyMillionRootRow} {supportLength N : Nat}
    (hrow : row ∈ twentyMillionRootProfileRows)
    (hLength : supportLength < 8)
    (hLower : twentyMillionLower < N)
    (hUpper : N < twentyMillionUpper)
    (hcandidate : TwentyMillionRootJumpCandidate row N) :
    twentyMillionRootSmoothProfile row supportLength N ≤
      row.envelope := by
  rcases hcandidate with ⟨hdiv, hp⟩
  have hmul : row.split * (N / row.split) = N := by
    simpa [Nat.mul_comm] using Nat.div_mul_cancel hdiv
  have hjump :=
    GeneratedTailTwentyMillionRootJumpCoverage.twentyMillionRoot_all_prime_jumps_le
      (N / row.split) hp row
      hrow
      supportLength hLength
      (by simpa [hmul] using hLower.le)
      (by simpa [hmul] using hUpper)
  simpa [twentyMillionRootSmoothProfile,
    twentyMillionRootSmoothProfileAt, hmul] using hjump

theorem twentyMillionRootSmoothProfile_all_N_le
    (row : TwentyMillionRootRow) (supportLength N : Nat)
    (hrow : row ∈ twentyMillionRootProfileRows)
    (hLength : supportLength < 8)
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper) :
    twentyMillionRootSmoothProfile row supportLength N ≤
      row.envelope := by
  classical
  exact interval_bound_of_predecessor_descent
    (value := fun M =>
      twentyMillionRootSmoothProfile row supportLength M)
    (candidate := TwentyMillionRootJumpCandidate row)
    (twentyMillionRootSmoothProfile_lower_le row supportLength hrow hLength)
    (fun M hMLower hMUpper hcandidate =>
      twentyMillionRootSmoothProfile_candidate_le
        hrow hLength hMLower hMUpper hcandidate)
    (fun M hMLower _hMUpper hnotCandidate =>
      twentyMillionRootSmoothProfile_descent_of_not_candidate
        hMLower hnotCandidate)
    N hLower hUpper

theorem twentyMillionRootActualProfile_all_N_le
    (row : TwentyMillionRootRow) (supportLength N : Nat)
    (hLength : supportLength < 8)
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper) :
    twentyMillionRootActualProfile row supportLength N ≤
      row.envelope := by
  calc
    twentyMillionRootActualProfile row supportLength N ≤
        twentyMillionRootSmoothProfile row supportLength N :=
      twentyMillionRootActualProfile_le_smooth
        (row := row) (supportLength := supportLength) (N := N)
        (by simpa [twentyMillionLower] using hLower)
    _ ≤ twentyMillionRootSmoothProfile
        row.controllingNormal supportLength N :=
      twentyMillionRootSmoothProfile_le_controllingNormal
        row supportLength N hLength
    _ ≤ row.controllingNormal.envelope :=
      twentyMillionRootSmoothProfile_all_N_le
        row.controllingNormal supportLength N
        (TwentyMillionRootRow.controllingNormal_mem_profileRows row)
        hLength hLower hUpper
    _ = row.envelope :=
      TwentyMillionRootRow.controllingNormal_envelope row

#print axioms twentyMillionRootSmoothProfile_lower_le
#print axioms twentyMillionRootSmoothProfile_candidate_le
#print axioms twentyMillionRootSmoothProfile_all_N_le
#print axioms twentyMillionRootActualProfile_all_N_le

end Erdos848
