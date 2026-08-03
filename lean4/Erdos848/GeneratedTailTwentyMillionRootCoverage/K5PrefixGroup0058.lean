import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0058NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  []

def k5PrefixGroup0058TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  []

def k5PrefixGroup0058MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000

def k5PrefixGroup0058 : List (List ℕ) :=
  [[19, 23, 37, 41],
    [19, 23, 37, 43],
    [19, 23, 41, 43],
    [19, 29, 31, 37],
    [19, 29, 31, 41],
    [19, 29, 31, 43],
    [19, 29, 37, 41],
    [19, 31, 37, 41],
    [23, 29, 31, 37],
    [23, 29, 31, 41]]

theorem k5PrefixGroup0058_support_covered :
    k5PrefixGroup0058.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0058MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0058_passes :
    k5PrefixGroup0058.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0058NormalLookup
        k5PrefixGroup0058TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0058_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0058NormalLookup
        k5PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0058TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0058_mask_primes_pass :
    k5PrefixGroup0058MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0058NormalLookup
        k5PrefixGroup0058TwistLookup) = true := by
  simpa only [k5PrefixGroup0058MaskPrimes] using
    k5PrefixGroup0058_mask_group0000_passes

theorem k5PrefixGroup0058_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0058) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0058NormalLookup,
    k5PrefixGroup0058TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0058_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0058_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0058MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0058_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0058_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
