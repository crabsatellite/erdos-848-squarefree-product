import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0006NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  []

def k6PrefixGroup0006TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  []

def k6PrefixGroup0006MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000

def k6PrefixGroup0006 : List (List ℕ) :=
  [[7, 11, 13, 17, 37],
    [7, 11, 13, 17, 41],
    [7, 11, 13, 17, 43],
    [7, 11, 13, 19, 23],
    [7, 11, 13, 19, 29],
    [7, 11, 13, 19, 31],
    [7, 11, 13, 19, 37],
    [7, 11, 13, 19, 41],
    [7, 11, 13, 19, 43],
    [7, 11, 13, 23, 29],
    [7, 11, 13, 23, 31],
    [7, 11, 13, 23, 37],
    [7, 11, 13, 29, 31],
    [7, 11, 17, 19, 23],
    [7, 11, 17, 19, 29],
    [7, 11, 17, 19, 31],
    [7, 11, 17, 19, 37],
    [7, 11, 17, 23, 29],
    [7, 11, 17, 23, 31],
    [7, 11, 19, 23, 29],
    [7, 11, 19, 23, 31],
    [7, 13, 17, 19, 23],
    [7, 13, 17, 19, 29],
    [7, 13, 17, 19, 31],
    [7, 13, 17, 23, 29],
    [7, 13, 19, 23, 29],
    [11, 13, 17, 19, 23]]

theorem k6PrefixGroup0006_support_covered :
    k6PrefixGroup0006.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0006MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0006_passes :
    k6PrefixGroup0006.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k6PrefixGroup0006NormalLookup
        k6PrefixGroup0006TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0006_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0006NormalLookup
        k6PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0006_mask_primes_pass :
    k6PrefixGroup0006MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0006NormalLookup
        k6PrefixGroup0006TwistLookup) = true := by
  simpa only [k6PrefixGroup0006MaskPrimes] using
    k6PrefixGroup0006_mask_group0000_passes

theorem k6PrefixGroup0006_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0006) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0006NormalLookup,
    k6PrefixGroup0006TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0006_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0006_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0006MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0006_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0006_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
