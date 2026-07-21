import Erdos848.TailTenMillionKernelRootProfileDescent
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.Certificate
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.LowerEndpoint62
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.LowerEndpoint70
import Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.LowerEndpoint78
import Erdos848.TailRootEnvelope

namespace Erdos848

/-!
# Uniform close of all eight twenty-million root rows

Every row is checked at the lower endpoint and at each prime jump.  The
predecessor-descent theorem fills every integer between those candidates.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionKernelRootSmoothProfile_lower_le
    (row : TenMillionKernelRootRow) (supportLength : Nat)
    (hLength : supportLength < 7) :
    tenMillionKernelRootSmoothProfile row supportLength tenMillionLower ≤
      row.envelope := by
  have hpi7 : Nat.primeCounting 7 = 4 := by decide
  cases row <;>
    interval_cases supportLength <;>
    norm_num [tenMillionKernelRootSmoothProfile,
      TenMillionKernelRootRow.split, TenMillionKernelRootRow.rootFactor,
      TenMillionKernelRootRow.cutoff, TenMillionKernelRootRow.survivorCeiling,
      TenMillionKernelRootRow.envelope, tenMillionLower,
      tenMillionKernelRootV1, tenMillionKernelRootV2,
      tenMillionKernelRootV3, tenMillionKernelRootOdd7,
      tenMillionRootV1, tenMillionRootV2,
      tenMillionRootV3, tenMillionRootOdd7,
      hpi7,
      GeneratedTailTenMillionKernelRootJumpCoverage.primeCounting_128205,
      GeneratedTailTenMillionKernelRootJumpCoverage.primeCounting_142857,
      GeneratedTailTenMillionKernelRootJumpCoverage.primeCounting_161290]

theorem tenMillionKernelRootSmoothProfile_candidate_le
    {row : TenMillionKernelRootRow} {supportLength N : Nat}
    (hrow : row ∈ tenMillionKernelRootProfileRows)
    (hLength : supportLength < 7)
    (hLower : tenMillionLower < N)
    (hUpper : N < tenMillionUpper)
    (hcandidate : TenMillionRootJumpCandidate row N) :
    tenMillionKernelRootSmoothProfile row supportLength N ≤
      row.envelope := by
  rcases hcandidate with ⟨hdiv, hp⟩
  have hmul : row.split * (N / row.split) = N := by
    simpa [Nat.mul_comm] using Nat.div_mul_cancel hdiv
  have hjump :=
    Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage.tenMillionKernelRoot_all_prime_jumps_le
        (N / row.split) hp row
        hrow
        supportLength hLength
        (by simpa [hmul] using hLower.le)
        (by simpa [hmul] using hUpper)
  simpa [tenMillionKernelRootSmoothProfile,
    tenMillionKernelRootSmoothProfileAt, hmul] using hjump

theorem tenMillionKernelRootSmoothProfile_all_N_le
    (row : TenMillionKernelRootRow) (supportLength N : Nat)
    (hrow : row ∈ tenMillionKernelRootProfileRows)
    (hLength : supportLength < 7)
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper) :
    tenMillionKernelRootSmoothProfile row supportLength N ≤
      row.envelope := by
  classical
  exact interval_bound_of_predecessor_descent
    (value := fun M =>
      tenMillionKernelRootSmoothProfile row supportLength M)
    (candidate := TenMillionRootJumpCandidate row)
    (tenMillionKernelRootSmoothProfile_lower_le row supportLength hLength)
    (fun M hMLower hMUpper hcandidate =>
      tenMillionKernelRootSmoothProfile_candidate_le
        hrow hLength hMLower hMUpper hcandidate)
    (fun M hMLower _hMUpper hnotCandidate =>
      tenMillionKernelRootSmoothProfile_descent_of_not_candidate
        hMLower hnotCandidate)
    N hLower hUpper

theorem tenMillionKernelRootActualProfile_all_N_le
    (row : TenMillionKernelRootRow) (supportLength N : Nat)
    (hLength : supportLength < 7)
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper) :
    tenMillionKernelRootActualProfile row supportLength N ≤
      row.envelope := by
  calc
    tenMillionKernelRootActualProfile row supportLength N ≤
        tenMillionKernelRootSmoothProfile row supportLength N :=
      tenMillionKernelRootActualProfile_le_smooth
        (row := row) (supportLength := supportLength) (N := N)
        (by simpa [tenMillionLower] using hLower)
    _ ≤ tenMillionKernelRootSmoothProfile
        row.controllingNormal supportLength N :=
      tenMillionKernelRootSmoothProfile_le_controllingNormal
        row supportLength N hLength
    _ ≤ row.controllingNormal.envelope :=
      tenMillionKernelRootSmoothProfile_all_N_le
        row.controllingNormal supportLength N
        (TenMillionKernelRootRow.controllingNormal_mem_profileRows row)
        hLength hLower hUpper
    _ = row.envelope :=
      TenMillionKernelRootRow.controllingNormal_envelope row

end Erdos848
