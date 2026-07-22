import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0031NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0031TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0031MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0031 : List (List ℕ) :=
  [[3, 19, 61, 83],
    [3, 19, 61, 89],
    [3, 19, 61, 97],
    [3, 19, 61, 101],
    [3, 19, 61, 103],
    [3, 19, 67, 71],
    [3, 19, 67, 73],
    [3, 19, 67, 79],
    [3, 19, 67, 83],
    [3, 19, 67, 89],
    [3, 19, 67, 97],
    [3, 19, 67, 101],
    [3, 19, 71, 73],
    [3, 19, 71, 79],
    [3, 19, 71, 83],
    [3, 19, 71, 89],
    [3, 19, 71, 97],
    [3, 19, 73, 79],
    [3, 19, 73, 83],
    [3, 19, 73, 89],
    [3, 19, 79, 83],
    [3, 19, 79, 89],
    [3, 23, 29, 31],
    [3, 23, 29, 37],
    [3, 23, 29, 41],
    [3, 23, 29, 43],
    [3, 23, 29, 47],
    [3, 23, 29, 53],
    [3, 23, 29, 59],
    [3, 23, 29, 61],
    [3, 23, 29, 67],
    [3, 23, 29, 71],
    [3, 23, 29, 73],
    [3, 23, 29, 79],
    [3, 23, 29, 83],
    [3, 23, 29, 89],
    [3, 23, 29, 97],
    [3, 23, 29, 101],
    [3, 23, 29, 103],
    [3, 23, 29, 107],
    [3, 23, 29, 109],
    [3, 23, 29, 113],
    [3, 23, 29, 127],
    [3, 23, 29, 131],
    [3, 23, 29, 137],
    [3, 23, 31, 37],
    [3, 23, 31, 41],
    [3, 23, 31, 43],
    [3, 23, 31, 47],
    [3, 23, 31, 53],
    [3, 23, 31, 59],
    [3, 23, 31, 61],
    [3, 23, 31, 67],
    [3, 23, 31, 71],
    [3, 23, 31, 73],
    [3, 23, 31, 79],
    [3, 23, 31, 83],
    [3, 23, 31, 89],
    [3, 23, 31, 97],
    [3, 23, 31, 101],
    [3, 23, 31, 103],
    [3, 23, 31, 107],
    [3, 23, 31, 109],
    [3, 23, 31, 113]]

theorem k5PrefixGroup0031_support_covered :
    k5PrefixGroup0031.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0031MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0031_passes :
    k5PrefixGroup0031.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0031NormalLookup
        k5PrefixGroup0031TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0031_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0031NormalLookup
        k5PrefixGroup0031TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0031NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0031TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0031_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0031NormalLookup
        k5PrefixGroup0031TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0031NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0031TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0031_mask_primes_pass :
    k5PrefixGroup0031MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0031NormalLookup
        k5PrefixGroup0031TwistLookup) = true := by
  simp only [k5PrefixGroup0031MaskPrimes, List.all_append]
  rw [k5PrefixGroup0031_mask_group0000_passes]
  rw [k5PrefixGroup0031_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0031_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0031) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0031NormalLookup,
    k5PrefixGroup0031TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0031_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0031_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0031MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0031_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0031_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
