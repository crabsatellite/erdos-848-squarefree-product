import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0128NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0128TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0128MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0128 : List (List ℕ) :=
  [[41, 67, 107],
    [41, 67, 109],
    [41, 67, 113],
    [41, 71, 73],
    [41, 71, 79],
    [41, 71, 83],
    [41, 71, 89],
    [41, 71, 97],
    [41, 71, 101],
    [41, 71, 103],
    [41, 71, 107],
    [41, 71, 109],
    [41, 73, 79],
    [41, 73, 83],
    [41, 73, 89],
    [41, 73, 97],
    [41, 73, 101],
    [41, 73, 103],
    [41, 73, 107],
    [41, 73, 109],
    [41, 79, 83],
    [41, 79, 89],
    [41, 79, 97],
    [41, 79, 101],
    [41, 79, 103],
    [41, 79, 107],
    [41, 79, 109],
    [41, 83, 89],
    [41, 83, 97],
    [41, 83, 101],
    [41, 83, 103],
    [41, 83, 107],
    [41, 89, 97],
    [41, 89, 101],
    [43, 47, 53],
    [43, 47, 59],
    [43, 47, 61],
    [43, 47, 67],
    [43, 47, 71],
    [43, 47, 73],
    [43, 47, 79],
    [43, 47, 83],
    [43, 47, 89],
    [43, 47, 97],
    [43, 47, 101],
    [43, 47, 103],
    [43, 47, 107],
    [43, 47, 109],
    [43, 47, 113],
    [43, 47, 127],
    [43, 47, 131],
    [43, 47, 137],
    [43, 53, 59],
    [43, 53, 61],
    [43, 53, 67],
    [43, 53, 71],
    [43, 53, 73],
    [43, 53, 79],
    [43, 53, 83],
    [43, 53, 89],
    [43, 53, 97],
    [43, 53, 101],
    [43, 53, 103],
    [43, 53, 107]]

theorem k4PrefixGroup0128_support_covered :
    k4PrefixGroup0128.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0128MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0128_passes :
    k4PrefixGroup0128.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0128NormalLookup
        k4PrefixGroup0128TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0128_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0128NormalLookup
        k4PrefixGroup0128TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0128NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0128TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0128_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0128NormalLookup
        k4PrefixGroup0128TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0128NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0128TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0128_mask_primes_pass :
    k4PrefixGroup0128MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0128NormalLookup
        k4PrefixGroup0128TwistLookup) = true := by
  simp only [k4PrefixGroup0128MaskPrimes, List.all_append]
  rw [k4PrefixGroup0128_mask_group0000_passes]
  rw [k4PrefixGroup0128_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0128_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0128) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0128NormalLookup,
    k4PrefixGroup0128TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0128_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0128_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0128MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0128_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0128_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
