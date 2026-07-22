import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0044NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0044TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0044MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0044 : List (List ℕ) :=
  [[7, 13, 47, 67],
    [7, 13, 47, 71],
    [7, 13, 47, 73],
    [7, 13, 47, 79],
    [7, 13, 47, 83],
    [7, 13, 47, 89],
    [7, 13, 53, 59],
    [7, 13, 53, 61],
    [7, 13, 53, 67],
    [7, 13, 53, 71],
    [7, 13, 53, 73],
    [7, 13, 53, 79],
    [7, 13, 53, 83],
    [7, 13, 59, 61],
    [7, 13, 59, 67],
    [7, 13, 59, 71],
    [7, 13, 59, 73],
    [7, 13, 59, 79],
    [7, 13, 59, 83],
    [7, 13, 61, 67],
    [7, 13, 61, 71],
    [7, 13, 61, 73],
    [7, 13, 61, 79],
    [7, 13, 67, 71],
    [7, 13, 67, 73],
    [7, 13, 67, 79],
    [7, 13, 71, 73],
    [7, 17, 19, 23],
    [7, 17, 19, 29],
    [7, 17, 19, 31],
    [7, 17, 19, 37],
    [7, 17, 19, 41],
    [7, 17, 19, 43],
    [7, 17, 19, 47],
    [7, 17, 19, 53],
    [7, 17, 19, 59],
    [7, 17, 19, 61],
    [7, 17, 19, 67],
    [7, 17, 19, 71],
    [7, 17, 19, 73],
    [7, 17, 19, 79],
    [7, 17, 19, 83],
    [7, 17, 19, 89],
    [7, 17, 19, 97],
    [7, 17, 19, 101],
    [7, 17, 19, 103],
    [7, 17, 19, 107],
    [7, 17, 19, 109],
    [7, 17, 19, 113],
    [7, 17, 19, 127],
    [7, 17, 23, 29],
    [7, 17, 23, 31],
    [7, 17, 23, 37],
    [7, 17, 23, 41],
    [7, 17, 23, 43],
    [7, 17, 23, 47],
    [7, 17, 23, 53],
    [7, 17, 23, 59],
    [7, 17, 23, 61],
    [7, 17, 23, 67],
    [7, 17, 23, 71],
    [7, 17, 23, 73],
    [7, 17, 23, 79],
    [7, 17, 23, 83]]

theorem k5PrefixGroup0044_support_covered :
    k5PrefixGroup0044.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0044MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0044_passes :
    k5PrefixGroup0044.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0044NormalLookup
        k5PrefixGroup0044TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0044_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0044NormalLookup
        k5PrefixGroup0044TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0044NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0044TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0044_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0044NormalLookup
        k5PrefixGroup0044TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0044NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0044TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0044_mask_primes_pass :
    k5PrefixGroup0044MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0044NormalLookup
        k5PrefixGroup0044TwistLookup) = true := by
  simp only [k5PrefixGroup0044MaskPrimes, List.all_append]
  rw [k5PrefixGroup0044_mask_group0000_passes]
  rw [k5PrefixGroup0044_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0044_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0044) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0044NormalLookup,
    k5PrefixGroup0044TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0044_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0044_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0044MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0044_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0044_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
