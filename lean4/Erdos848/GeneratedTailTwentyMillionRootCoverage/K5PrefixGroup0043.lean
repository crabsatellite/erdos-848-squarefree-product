import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0043NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0043TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0043MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0043 : List (List ℕ) :=
  [[7, 13, 29, 107],
    [7, 13, 29, 109],
    [7, 13, 29, 113],
    [7, 13, 31, 37],
    [7, 13, 31, 41],
    [7, 13, 31, 43],
    [7, 13, 31, 47],
    [7, 13, 31, 53],
    [7, 13, 31, 59],
    [7, 13, 31, 61],
    [7, 13, 31, 67],
    [7, 13, 31, 71],
    [7, 13, 31, 73],
    [7, 13, 31, 79],
    [7, 13, 31, 83],
    [7, 13, 31, 89],
    [7, 13, 31, 97],
    [7, 13, 31, 101],
    [7, 13, 31, 103],
    [7, 13, 31, 107],
    [7, 13, 31, 109],
    [7, 13, 37, 41],
    [7, 13, 37, 43],
    [7, 13, 37, 47],
    [7, 13, 37, 53],
    [7, 13, 37, 59],
    [7, 13, 37, 61],
    [7, 13, 37, 67],
    [7, 13, 37, 71],
    [7, 13, 37, 73],
    [7, 13, 37, 79],
    [7, 13, 37, 83],
    [7, 13, 37, 89],
    [7, 13, 37, 97],
    [7, 13, 37, 101],
    [7, 13, 37, 103],
    [7, 13, 37, 107],
    [7, 13, 41, 43],
    [7, 13, 41, 47],
    [7, 13, 41, 53],
    [7, 13, 41, 59],
    [7, 13, 41, 61],
    [7, 13, 41, 67],
    [7, 13, 41, 71],
    [7, 13, 41, 73],
    [7, 13, 41, 79],
    [7, 13, 41, 83],
    [7, 13, 41, 89],
    [7, 13, 41, 97],
    [7, 13, 41, 101],
    [7, 13, 43, 47],
    [7, 13, 43, 53],
    [7, 13, 43, 59],
    [7, 13, 43, 61],
    [7, 13, 43, 67],
    [7, 13, 43, 71],
    [7, 13, 43, 73],
    [7, 13, 43, 79],
    [7, 13, 43, 83],
    [7, 13, 43, 89],
    [7, 13, 43, 97],
    [7, 13, 47, 53],
    [7, 13, 47, 59],
    [7, 13, 47, 61]]

theorem k5PrefixGroup0043_support_covered :
    k5PrefixGroup0043.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0043MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0043_passes :
    k5PrefixGroup0043.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0043NormalLookup
        k5PrefixGroup0043TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0043_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0043NormalLookup
        k5PrefixGroup0043TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0043NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0043TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0043_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0043NormalLookup
        k5PrefixGroup0043TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0043NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0043TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0043_mask_primes_pass :
    k5PrefixGroup0043MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0043NormalLookup
        k5PrefixGroup0043TwistLookup) = true := by
  simp only [k5PrefixGroup0043MaskPrimes, List.all_append]
  rw [k5PrefixGroup0043_mask_group0000_passes]
  rw [k5PrefixGroup0043_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0043_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0043) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0043NormalLookup,
    k5PrefixGroup0043TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0043_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0043_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0043MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0043_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0043_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
