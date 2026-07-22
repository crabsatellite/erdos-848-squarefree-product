import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0023NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0023TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0023MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0023 : List (List ℕ) :=
  [[3, 13, 53, 127],
    [3, 13, 53, 131],
    [3, 13, 53, 137],
    [3, 13, 59, 61],
    [3, 13, 59, 67],
    [3, 13, 59, 71],
    [3, 13, 59, 73],
    [3, 13, 59, 79],
    [3, 13, 59, 83],
    [3, 13, 59, 89],
    [3, 13, 59, 97],
    [3, 13, 59, 101],
    [3, 13, 59, 103],
    [3, 13, 59, 107],
    [3, 13, 59, 109],
    [3, 13, 59, 113],
    [3, 13, 59, 127],
    [3, 13, 61, 67],
    [3, 13, 61, 71],
    [3, 13, 61, 73],
    [3, 13, 61, 79],
    [3, 13, 61, 83],
    [3, 13, 61, 89],
    [3, 13, 61, 97],
    [3, 13, 61, 101],
    [3, 13, 61, 103],
    [3, 13, 61, 107],
    [3, 13, 61, 109],
    [3, 13, 61, 113],
    [3, 13, 61, 127],
    [3, 13, 67, 71],
    [3, 13, 67, 73],
    [3, 13, 67, 79],
    [3, 13, 67, 83],
    [3, 13, 67, 89],
    [3, 13, 67, 97],
    [3, 13, 67, 101],
    [3, 13, 67, 103],
    [3, 13, 67, 107],
    [3, 13, 67, 109],
    [3, 13, 67, 113],
    [3, 13, 71, 73],
    [3, 13, 71, 79],
    [3, 13, 71, 83],
    [3, 13, 71, 89],
    [3, 13, 71, 97],
    [3, 13, 71, 101],
    [3, 13, 71, 103],
    [3, 13, 71, 107],
    [3, 13, 71, 109],
    [3, 13, 71, 113],
    [3, 13, 73, 79],
    [3, 13, 73, 83],
    [3, 13, 73, 89],
    [3, 13, 73, 97],
    [3, 13, 73, 101],
    [3, 13, 73, 103],
    [3, 13, 73, 107],
    [3, 13, 73, 109],
    [3, 13, 79, 83],
    [3, 13, 79, 89],
    [3, 13, 79, 97],
    [3, 13, 79, 101],
    [3, 13, 79, 103]]

theorem k5PrefixGroup0023_support_covered :
    k5PrefixGroup0023.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0023MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0023_passes :
    k5PrefixGroup0023.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0023_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0023TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0023_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0023TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0023_mask_primes_pass :
    k5PrefixGroup0023MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup) = true := by
  simp only [k5PrefixGroup0023MaskPrimes, List.all_append]
  rw [k5PrefixGroup0023_mask_group0000_passes]
  rw [k5PrefixGroup0023_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0023_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0023) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0023NormalLookup,
    k5PrefixGroup0023TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0023_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0023_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0023MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0023_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0023_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
