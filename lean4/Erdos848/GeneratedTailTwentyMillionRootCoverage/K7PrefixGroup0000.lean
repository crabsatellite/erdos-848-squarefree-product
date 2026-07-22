import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0000NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  []

def k7PrefixGroup0000TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  []

def k7PrefixGroup0000MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000

def k7PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17, 19],
    [3, 7, 11, 13, 17, 23],
    [3, 7, 11, 13, 19, 23]]

theorem k7PrefixGroup0000_support_covered :
    k7PrefixGroup0000.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k7PrefixGroup0000MaskPrimes))) = true := by
  rfl

theorem k7PrefixGroup0000_passes :
    k7PrefixGroup0000.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k7PrefixGroup0000NormalLookup
        k7PrefixGroup0000TwistLookup rootBaseWords 7) = true := by
  rfl

theorem k7PrefixGroup0000_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k7PrefixGroup0000NormalLookup
        k7PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k7PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k7PrefixGroup0000TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k7PrefixGroup0000_mask_primes_pass :
    k7PrefixGroup0000MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k7PrefixGroup0000NormalLookup
        k7PrefixGroup0000TwistLookup) = true := by
  simpa only [k7PrefixGroup0000MaskPrimes] using
    k7PrefixGroup0000_mask_group0000_passes

theorem k7PrefixGroup0000_certified
    {support : List ℕ} (hsupport : support ∈ k7PrefixGroup0000) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 7 support = true := by
  refine ⟨k7PrefixGroup0000NormalLookup,
    k7PrefixGroup0000TwistLookup, ?_,
    (List.all_eq_true.mp
      k7PrefixGroup0000_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k7PrefixGroup0000_support_covered) support hsupport
  have hmem : p ∈
      k7PrefixGroup0000MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k7PrefixGroup0000_mask_primes_pass) p hmem

#print axioms k7PrefixGroup0000_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
