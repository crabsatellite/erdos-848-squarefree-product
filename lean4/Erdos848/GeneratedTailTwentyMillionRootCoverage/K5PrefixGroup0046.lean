import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0046NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0046TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0046MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0046 : List (List ℕ) :=
  [[7, 17, 43, 61],
    [7, 17, 43, 67],
    [7, 17, 43, 71],
    [7, 17, 43, 73],
    [7, 17, 43, 79],
    [7, 17, 43, 83],
    [7, 17, 47, 53],
    [7, 17, 47, 59],
    [7, 17, 47, 61],
    [7, 17, 47, 67],
    [7, 17, 47, 71],
    [7, 17, 47, 73],
    [7, 17, 47, 79],
    [7, 17, 53, 59],
    [7, 17, 53, 61],
    [7, 17, 53, 67],
    [7, 17, 53, 71],
    [7, 17, 53, 73],
    [7, 17, 59, 61],
    [7, 17, 59, 67],
    [7, 17, 59, 71],
    [7, 17, 61, 67],
    [7, 17, 61, 71],
    [7, 19, 23, 29],
    [7, 19, 23, 31],
    [7, 19, 23, 37],
    [7, 19, 23, 41],
    [7, 19, 23, 43],
    [7, 19, 23, 47],
    [7, 19, 23, 53],
    [7, 19, 23, 59],
    [7, 19, 23, 61],
    [7, 19, 23, 67],
    [7, 19, 23, 71],
    [7, 19, 23, 73],
    [7, 19, 23, 79],
    [7, 19, 23, 83],
    [7, 19, 23, 89],
    [7, 19, 23, 97],
    [7, 19, 23, 101],
    [7, 19, 23, 103],
    [7, 19, 23, 107],
    [7, 19, 23, 109],
    [7, 19, 29, 31],
    [7, 19, 29, 37],
    [7, 19, 29, 41],
    [7, 19, 29, 43],
    [7, 19, 29, 47],
    [7, 19, 29, 53],
    [7, 19, 29, 59],
    [7, 19, 29, 61],
    [7, 19, 29, 67],
    [7, 19, 29, 71],
    [7, 19, 29, 73],
    [7, 19, 29, 79],
    [7, 19, 29, 83],
    [7, 19, 29, 89],
    [7, 19, 29, 97],
    [7, 19, 31, 37],
    [7, 19, 31, 41],
    [7, 19, 31, 43],
    [7, 19, 31, 47],
    [7, 19, 31, 53],
    [7, 19, 31, 59]]

theorem k5PrefixGroup0046_support_covered :
    k5PrefixGroup0046.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0046MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0046_passes :
    k5PrefixGroup0046.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0046NormalLookup
        k5PrefixGroup0046TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0046_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0046NormalLookup
        k5PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0046_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0046NormalLookup
        k5PrefixGroup0046TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0046NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0046TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0046_mask_primes_pass :
    k5PrefixGroup0046MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0046NormalLookup
        k5PrefixGroup0046TwistLookup) = true := by
  simp only [k5PrefixGroup0046MaskPrimes, List.all_append]
  rw [k5PrefixGroup0046_mask_group0000_passes]
  rw [k5PrefixGroup0046_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0046_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0046) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0046NormalLookup,
    k5PrefixGroup0046TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0046_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0046_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0046MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0046_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0046_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
