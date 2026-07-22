import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0057NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0057TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0057MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0057 : List (List ℕ) :=
  [[17, 19, 23, 37],
    [17, 19, 23, 41],
    [17, 19, 23, 43],
    [17, 19, 23, 47],
    [17, 19, 23, 53],
    [17, 19, 23, 59],
    [17, 19, 23, 61],
    [17, 19, 23, 67],
    [17, 19, 23, 71],
    [17, 19, 29, 31],
    [17, 19, 29, 37],
    [17, 19, 29, 41],
    [17, 19, 29, 43],
    [17, 19, 29, 47],
    [17, 19, 29, 53],
    [17, 19, 29, 59],
    [17, 19, 29, 61],
    [17, 19, 31, 37],
    [17, 19, 31, 41],
    [17, 19, 31, 43],
    [17, 19, 31, 47],
    [17, 19, 31, 53],
    [17, 19, 31, 59],
    [17, 19, 37, 41],
    [17, 19, 37, 43],
    [17, 19, 37, 47],
    [17, 19, 37, 53],
    [17, 19, 41, 43],
    [17, 19, 41, 47],
    [17, 19, 43, 47],
    [17, 23, 29, 31],
    [17, 23, 29, 37],
    [17, 23, 29, 41],
    [17, 23, 29, 43],
    [17, 23, 29, 47],
    [17, 23, 29, 53],
    [17, 23, 31, 37],
    [17, 23, 31, 41],
    [17, 23, 31, 43],
    [17, 23, 31, 47],
    [17, 23, 31, 53],
    [17, 23, 37, 41],
    [17, 23, 37, 43],
    [17, 23, 37, 47],
    [17, 23, 41, 43],
    [17, 23, 41, 47],
    [17, 29, 31, 37],
    [17, 29, 31, 41],
    [17, 29, 31, 43],
    [17, 29, 31, 47],
    [17, 29, 37, 41],
    [17, 29, 37, 43],
    [17, 31, 37, 41],
    [17, 31, 37, 43],
    [19, 23, 29, 31],
    [19, 23, 29, 37],
    [19, 23, 29, 41],
    [19, 23, 29, 43],
    [19, 23, 29, 47],
    [19, 23, 29, 53],
    [19, 23, 31, 37],
    [19, 23, 31, 41],
    [19, 23, 31, 43],
    [19, 23, 31, 47]]

theorem k5PrefixGroup0057_support_covered :
    k5PrefixGroup0057.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0057MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0057_passes :
    k5PrefixGroup0057.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0057NormalLookup
        k5PrefixGroup0057TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0057_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0057NormalLookup
        k5PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0057TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0057_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0057NormalLookup
        k5PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0057TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0057_mask_primes_pass :
    k5PrefixGroup0057MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0057NormalLookup
        k5PrefixGroup0057TwistLookup) = true := by
  simp only [k5PrefixGroup0057MaskPrimes, List.all_append]
  rw [k5PrefixGroup0057_mask_group0000_passes]
  rw [k5PrefixGroup0057_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0057_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0057) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0057NormalLookup,
    k5PrefixGroup0057TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0057_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0057_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0057MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0057_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0057_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
