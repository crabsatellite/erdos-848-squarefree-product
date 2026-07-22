import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0033NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0033TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0033MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0033 : List (List ℕ) :=
  [[3, 23, 47, 109],
    [3, 23, 53, 59],
    [3, 23, 53, 61],
    [3, 23, 53, 67],
    [3, 23, 53, 71],
    [3, 23, 53, 73],
    [3, 23, 53, 79],
    [3, 23, 53, 83],
    [3, 23, 53, 89],
    [3, 23, 53, 97],
    [3, 23, 53, 101],
    [3, 23, 59, 61],
    [3, 23, 59, 67],
    [3, 23, 59, 71],
    [3, 23, 59, 73],
    [3, 23, 59, 79],
    [3, 23, 59, 83],
    [3, 23, 59, 89],
    [3, 23, 59, 97],
    [3, 23, 61, 67],
    [3, 23, 61, 71],
    [3, 23, 61, 73],
    [3, 23, 61, 79],
    [3, 23, 61, 83],
    [3, 23, 61, 89],
    [3, 23, 67, 71],
    [3, 23, 67, 73],
    [3, 23, 67, 79],
    [3, 23, 67, 83],
    [3, 23, 67, 89],
    [3, 23, 71, 73],
    [3, 23, 71, 79],
    [3, 23, 71, 83],
    [3, 23, 73, 79],
    [3, 23, 73, 83],
    [3, 29, 31, 37],
    [3, 29, 31, 41],
    [3, 29, 31, 43],
    [3, 29, 31, 47],
    [3, 29, 31, 53],
    [3, 29, 31, 59],
    [3, 29, 31, 61],
    [3, 29, 31, 67],
    [3, 29, 31, 71],
    [3, 29, 31, 73],
    [3, 29, 31, 79],
    [3, 29, 31, 83],
    [3, 29, 31, 89],
    [3, 29, 31, 97],
    [3, 29, 31, 101],
    [3, 29, 31, 103],
    [3, 29, 31, 107],
    [3, 29, 31, 109],
    [3, 29, 31, 113],
    [3, 29, 37, 41],
    [3, 29, 37, 43],
    [3, 29, 37, 47],
    [3, 29, 37, 53],
    [3, 29, 37, 59],
    [3, 29, 37, 61],
    [3, 29, 37, 67],
    [3, 29, 37, 71],
    [3, 29, 37, 73],
    [3, 29, 37, 79]]

theorem k5PrefixGroup0033_support_covered :
    k5PrefixGroup0033.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0033MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0033_passes :
    k5PrefixGroup0033.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0033NormalLookup
        k5PrefixGroup0033TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0033_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0033NormalLookup
        k5PrefixGroup0033TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0033NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0033TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0033_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0033NormalLookup
        k5PrefixGroup0033TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0033NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0033TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0033_mask_primes_pass :
    k5PrefixGroup0033MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0033NormalLookup
        k5PrefixGroup0033TwistLookup) = true := by
  simp only [k5PrefixGroup0033MaskPrimes, List.all_append]
  rw [k5PrefixGroup0033_mask_group0000_passes]
  rw [k5PrefixGroup0033_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0033_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0033) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0033NormalLookup,
    k5PrefixGroup0033TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0033_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0033_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0033MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0033_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0033_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
