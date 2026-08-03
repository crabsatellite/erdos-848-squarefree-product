import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0045NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0045TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0045MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0045 : List (List ℕ) :=
  [[7, 17, 23, 89],
    [7, 17, 23, 97],
    [7, 17, 23, 101],
    [7, 17, 23, 103],
    [7, 17, 23, 107],
    [7, 17, 23, 109],
    [7, 17, 23, 113],
    [7, 17, 29, 31],
    [7, 17, 29, 37],
    [7, 17, 29, 41],
    [7, 17, 29, 43],
    [7, 17, 29, 47],
    [7, 17, 29, 53],
    [7, 17, 29, 59],
    [7, 17, 29, 61],
    [7, 17, 29, 67],
    [7, 17, 29, 71],
    [7, 17, 29, 73],
    [7, 17, 29, 79],
    [7, 17, 29, 83],
    [7, 17, 29, 89],
    [7, 17, 29, 97],
    [7, 17, 29, 101],
    [7, 17, 29, 103],
    [7, 17, 31, 37],
    [7, 17, 31, 41],
    [7, 17, 31, 43],
    [7, 17, 31, 47],
    [7, 17, 31, 53],
    [7, 17, 31, 59],
    [7, 17, 31, 61],
    [7, 17, 31, 67],
    [7, 17, 31, 71],
    [7, 17, 31, 73],
    [7, 17, 31, 79],
    [7, 17, 31, 83],
    [7, 17, 31, 89],
    [7, 17, 31, 97],
    [7, 17, 31, 101],
    [7, 17, 37, 41],
    [7, 17, 37, 43],
    [7, 17, 37, 47],
    [7, 17, 37, 53],
    [7, 17, 37, 59],
    [7, 17, 37, 61],
    [7, 17, 37, 67],
    [7, 17, 37, 71],
    [7, 17, 37, 73],
    [7, 17, 37, 79],
    [7, 17, 37, 83],
    [7, 17, 37, 89],
    [7, 17, 41, 43],
    [7, 17, 41, 47],
    [7, 17, 41, 53],
    [7, 17, 41, 59],
    [7, 17, 41, 61],
    [7, 17, 41, 67],
    [7, 17, 41, 71],
    [7, 17, 41, 73],
    [7, 17, 41, 79],
    [7, 17, 41, 83],
    [7, 17, 43, 47],
    [7, 17, 43, 53],
    [7, 17, 43, 59]]

theorem k5PrefixGroup0045_support_covered :
    k5PrefixGroup0045.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0045MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0045_passes :
    k5PrefixGroup0045.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0045NormalLookup
        k5PrefixGroup0045TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0045_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0045NormalLookup
        k5PrefixGroup0045TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0045NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0045TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0045_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0045NormalLookup
        k5PrefixGroup0045TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0045NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0045TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0045_mask_primes_pass :
    k5PrefixGroup0045MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0045NormalLookup
        k5PrefixGroup0045TwistLookup) = true := by
  simp only [k5PrefixGroup0045MaskPrimes, List.all_append]
  rw [k5PrefixGroup0045_mask_group0000_passes]
  rw [k5PrefixGroup0045_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0045_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0045) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0045NormalLookup,
    k5PrefixGroup0045TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0045_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0045_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0045MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0045_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0045_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
