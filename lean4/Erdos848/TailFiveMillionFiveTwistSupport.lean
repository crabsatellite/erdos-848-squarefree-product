import Erdos848.TailFiveMillionRootProfileComplete
import Erdos848.GeneratedTailFiveTwistSupportCoverage.Certificate

namespace Erdos848

theorem fiveMillionOddRootK3_fiveTwist_support_pass :
    fiveMillionOddRootK3FeasiblePrefixes.all
      (fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  exact GeneratedTailFiveTwistSupportCoverage.k3FeasiblePrefixes_pass

theorem fiveMillionOddRootK4_fiveTwist_support_pass :
    fiveMillionOddRootK4FeasiblePrefixes.all
      (fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  exact GeneratedTailFiveTwistSupportCoverage.k4FeasiblePrefixes_pass

theorem fiveMillionOddRootK5_fiveTwist_support_pass :
    fiveMillionOddRootFeasiblePrefixes.all
      (fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  exact GeneratedTailFiveTwistSupportCoverage.k5FeasiblePrefixes_pass

theorem fiveMillionOddRootK6_fiveTwist_support_pass :
    fiveMillionOddRootK6FeasiblePrefixes.all
      (fiveMillionOddRootFiveTwistProfilePasses 30) = true := by
  exact GeneratedTailFiveTwistSupportCoverage.k6FeasiblePrefixes_pass

theorem fiveMillionOddRootK3_fiveTwist_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK3FeasiblePrefixes) :
    oddRootFiveTwistSurvivorCount support true ≤ 278 ∧
      oddRootFiveTwistSurvivorCount support false ≤ 278 := by
  have hpass := (List.all_eq_true.mp
    fiveMillionOddRootK3_fiveTwist_support_pass) support hSupport
  simpa [fiveMillionOddRootFiveTwistProfilePasses] using hpass

theorem fiveMillionOddRootK4_fiveTwist_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK4FeasiblePrefixes) :
    oddRootFiveTwistSurvivorCount support true ≤ 143 ∧
      oddRootFiveTwistSurvivorCount support false ≤ 143 := by
  have hpass := (List.all_eq_true.mp
    fiveMillionOddRootK4_fiveTwist_support_pass) support hSupport
  simpa [fiveMillionOddRootFiveTwistProfilePasses] using hpass

theorem fiveMillionOddRootK5_fiveTwist_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootFeasiblePrefixes) :
    oddRootFiveTwistSurvivorCount support true ≤ 70 ∧
      oddRootFiveTwistSurvivorCount support false ≤ 70 := by
  have hpass := (List.all_eq_true.mp
    fiveMillionOddRootK5_fiveTwist_support_pass) support hSupport
  simpa [fiveMillionOddRootFiveTwistProfilePasses] using hpass

theorem fiveMillionOddRootK6_fiveTwist_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK6FeasiblePrefixes) :
    oddRootFiveTwistSurvivorCount support true ≤ 30 ∧
      oddRootFiveTwistSurvivorCount support false ≤ 30 := by
  have hpass := (List.all_eq_true.mp
    fiveMillionOddRootK6_fiveTwist_support_pass) support hSupport
  simpa [fiveMillionOddRootFiveTwistProfilePasses] using hpass

private theorem fiveTwistSurvivor_bound_of_coset
    {support : List ℕ} {bound : ℕ} {squareCoset : Bool}
    (hBound : oddRootFiveTwistSurvivorCount support true ≤ bound ∧
      oddRootFiveTwistSurvivorCount support false ≤ bound) :
    oddRootFiveTwistSurvivorCount support squareCoset ≤ bound := by
  cases squareCoset <;> simp_all

theorem fiveMillionOddRootFiveTwistProfile_kernel_close
    (N k : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hCase : FiveMillionOddRootProfileCase k support) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) (2 ^ (k + 1))
        (oddRootFiveTwistSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  cases hCase with
  | k0 =>
      have hs : oddRootFiveTwistSurvivorCount [] squareCoset ≤ 961 :=
        (oddRootFiveTwistSurvivorCount_le_480 _ _).trans (by norm_num)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        ((fiveMillionOddRootK0_le_controlling N hLower).trans
          (fiveMillionOddRoot7_all_N_le N hLower hUpper))
  | k1 =>
      have hs : oddRootFiveTwistSurvivorCount [] squareCoset ≤ 961 :=
        (oddRootFiveTwistSurvivorCount_le_480 _ _).trans (by norm_num)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        ((fiveMillionOddRootK1_le_controlling N hLower).trans
          (fiveMillionOddRoot7_all_N_le N hLower hUpper))
  | k2 h =>
      have hs : oddRootFiveTwistSurvivorCount support squareCoset ≤ 522 :=
        (oddRootFiveTwistSurvivorCount_le_480 _ _).trans (by norm_num)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        ((fiveMillionOddRootK2_le_controlling N hLower).trans
          (fiveMillionOddRoot7_all_N_le N hLower hUpper))
  | k3 h =>
      have hs : oddRootFiveTwistSurvivorCount support squareCoset ≤ 278 :=
        fiveTwistSurvivor_bound_of_coset
          (fiveMillionOddRootK3_fiveTwist_support_bound h)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        ((fiveMillionOddRootK3_le_controlling N hLower).trans
          (fiveMillionOddRoot7_all_N_le N hLower hUpper))
  | k4 h =>
      have hs : oddRootFiveTwistSurvivorCount support squareCoset ≤ 143 :=
        fiveTwistSurvivor_bound_of_coset
          (fiveMillionOddRootK4_fiveTwist_support_bound h)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        ((fiveMillionOddRootK4_le_controlling N hLower).trans
          (fiveMillionOddRoot7_all_N_le N hLower hUpper))
  | k5 h =>
      have hs : oddRootFiveTwistSurvivorCount support squareCoset ≤ 70 :=
        fiveTwistSurvivor_bound_of_coset
          (fiveMillionOddRootK5_fiveTwist_support_bound h)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        (by simpa [fiveMillionOddRoot7Value] using
          fiveMillionOddRoot7_all_N_le N hLower hUpper)
  | k6 h =>
      have hs : oddRootFiveTwistSurvivorCount support squareCoset ≤ 30 :=
        fiveTwistSurvivor_bound_of_coset
          (fiveMillionOddRootK6_fiveTwist_support_bound h)
      exact (transformedRootRow_mono_survivors (by omega) hs).trans
        ((fiveMillionOddRootK6_le_controlling N hLower).trans
          (fiveMillionOddRoot7_all_N_le N hLower hUpper))

#print axioms fiveMillionOddRootK3_fiveTwist_support_pass
#print axioms fiveMillionOddRootK4_fiveTwist_support_pass
#print axioms fiveMillionOddRootK5_fiveTwist_support_pass
#print axioms fiveMillionOddRootK6_fiveTwist_support_pass
#print axioms fiveMillionOddRootFiveTwistProfile_kernel_close

end Erdos848
