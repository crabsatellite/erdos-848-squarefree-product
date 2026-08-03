import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0036NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0036TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0036MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0036 : List (List ℕ) :=
  [[3, 31, 61, 79],
    [3, 31, 67, 71],
    [3, 31, 67, 73],
    [3, 31, 71, 73],
    [3, 37, 41, 43],
    [3, 37, 41, 47],
    [3, 37, 41, 53],
    [3, 37, 41, 59],
    [3, 37, 41, 61],
    [3, 37, 41, 67],
    [3, 37, 41, 71],
    [3, 37, 41, 73],
    [3, 37, 41, 79],
    [3, 37, 41, 83],
    [3, 37, 41, 89],
    [3, 37, 43, 47],
    [3, 37, 43, 53],
    [3, 37, 43, 59],
    [3, 37, 43, 61],
    [3, 37, 43, 67],
    [3, 37, 43, 71],
    [3, 37, 43, 73],
    [3, 37, 43, 79],
    [3, 37, 43, 83],
    [3, 37, 47, 53],
    [3, 37, 47, 59],
    [3, 37, 47, 61],
    [3, 37, 47, 67],
    [3, 37, 47, 71],
    [3, 37, 47, 73],
    [3, 37, 47, 79],
    [3, 37, 47, 83],
    [3, 37, 53, 59],
    [3, 37, 53, 61],
    [3, 37, 53, 67],
    [3, 37, 53, 71],
    [3, 37, 53, 73],
    [3, 37, 53, 79],
    [3, 37, 59, 61],
    [3, 37, 59, 67],
    [3, 37, 59, 71],
    [3, 37, 59, 73],
    [3, 37, 61, 67],
    [3, 37, 61, 71],
    [3, 37, 61, 73],
    [3, 37, 67, 71],
    [3, 41, 43, 47],
    [3, 41, 43, 53],
    [3, 41, 43, 59],
    [3, 41, 43, 61],
    [3, 41, 43, 67],
    [3, 41, 43, 71],
    [3, 41, 43, 73],
    [3, 41, 43, 79],
    [3, 41, 43, 83],
    [3, 41, 47, 53],
    [3, 41, 47, 59],
    [3, 41, 47, 61],
    [3, 41, 47, 67],
    [3, 41, 47, 71],
    [3, 41, 47, 73],
    [3, 41, 47, 79],
    [3, 41, 53, 59],
    [3, 41, 53, 61]]

theorem k5PrefixGroup0036_support_covered :
    k5PrefixGroup0036.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0036MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0036_passes :
    k5PrefixGroup0036.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0036NormalLookup
        k5PrefixGroup0036TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0036_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0036NormalLookup
        k5PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0036_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0036NormalLookup
        k5PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0036_mask_primes_pass :
    k5PrefixGroup0036MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0036NormalLookup
        k5PrefixGroup0036TwistLookup) = true := by
  simp only [k5PrefixGroup0036MaskPrimes, List.all_append]
  rw [k5PrefixGroup0036_mask_group0000_passes]
  rw [k5PrefixGroup0036_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0036_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0036) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0036NormalLookup,
    k5PrefixGroup0036TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0036_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0036_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0036MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0036_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0036_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
