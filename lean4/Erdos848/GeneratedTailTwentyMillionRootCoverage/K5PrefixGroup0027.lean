import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0027NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0027TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0027MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0027 : List (List ℕ) :=
  [[3, 17, 43, 131],
    [3, 17, 47, 53],
    [3, 17, 47, 59],
    [3, 17, 47, 61],
    [3, 17, 47, 67],
    [3, 17, 47, 71],
    [3, 17, 47, 73],
    [3, 17, 47, 79],
    [3, 17, 47, 83],
    [3, 17, 47, 89],
    [3, 17, 47, 97],
    [3, 17, 47, 101],
    [3, 17, 47, 103],
    [3, 17, 47, 107],
    [3, 17, 47, 109],
    [3, 17, 47, 113],
    [3, 17, 47, 127],
    [3, 17, 53, 59],
    [3, 17, 53, 61],
    [3, 17, 53, 67],
    [3, 17, 53, 71],
    [3, 17, 53, 73],
    [3, 17, 53, 79],
    [3, 17, 53, 83],
    [3, 17, 53, 89],
    [3, 17, 53, 97],
    [3, 17, 53, 101],
    [3, 17, 53, 103],
    [3, 17, 53, 107],
    [3, 17, 53, 109],
    [3, 17, 53, 113],
    [3, 17, 59, 61],
    [3, 17, 59, 67],
    [3, 17, 59, 71],
    [3, 17, 59, 73],
    [3, 17, 59, 79],
    [3, 17, 59, 83],
    [3, 17, 59, 89],
    [3, 17, 59, 97],
    [3, 17, 59, 101],
    [3, 17, 59, 103],
    [3, 17, 59, 107],
    [3, 17, 59, 109],
    [3, 17, 61, 67],
    [3, 17, 61, 71],
    [3, 17, 61, 73],
    [3, 17, 61, 79],
    [3, 17, 61, 83],
    [3, 17, 61, 89],
    [3, 17, 61, 97],
    [3, 17, 61, 101],
    [3, 17, 61, 103],
    [3, 17, 61, 107],
    [3, 17, 61, 109],
    [3, 17, 67, 71],
    [3, 17, 67, 73],
    [3, 17, 67, 79],
    [3, 17, 67, 83],
    [3, 17, 67, 89],
    [3, 17, 67, 97],
    [3, 17, 67, 101],
    [3, 17, 67, 103],
    [3, 17, 67, 107],
    [3, 17, 71, 73]]

theorem k5PrefixGroup0027_support_covered :
    k5PrefixGroup0027.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0027MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0027_passes :
    k5PrefixGroup0027.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0027_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0027TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0027_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0027TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0027_mask_primes_pass :
    k5PrefixGroup0027MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup) = true := by
  simp only [k5PrefixGroup0027MaskPrimes, List.all_append]
  rw [k5PrefixGroup0027_mask_group0000_passes]
  rw [k5PrefixGroup0027_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0027_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0027) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0027NormalLookup,
    k5PrefixGroup0027TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0027_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0027_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0027MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0027_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0027_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
