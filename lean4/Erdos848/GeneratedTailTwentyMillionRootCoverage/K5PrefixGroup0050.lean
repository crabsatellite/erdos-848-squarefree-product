import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0050NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0050TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0050MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0050 : List (List ℕ) :=
  [[11, 13, 19, 41],
    [11, 13, 19, 43],
    [11, 13, 19, 47],
    [11, 13, 19, 53],
    [11, 13, 19, 59],
    [11, 13, 19, 61],
    [11, 13, 19, 67],
    [11, 13, 19, 71],
    [11, 13, 19, 73],
    [11, 13, 19, 79],
    [11, 13, 19, 83],
    [11, 13, 19, 89],
    [11, 13, 19, 97],
    [11, 13, 19, 101],
    [11, 13, 19, 103],
    [11, 13, 19, 107],
    [11, 13, 19, 109],
    [11, 13, 19, 113],
    [11, 13, 23, 29],
    [11, 13, 23, 31],
    [11, 13, 23, 37],
    [11, 13, 23, 41],
    [11, 13, 23, 43],
    [11, 13, 23, 47],
    [11, 13, 23, 53],
    [11, 13, 23, 59],
    [11, 13, 23, 61],
    [11, 13, 23, 67],
    [11, 13, 23, 71],
    [11, 13, 23, 73],
    [11, 13, 23, 79],
    [11, 13, 23, 83],
    [11, 13, 23, 89],
    [11, 13, 23, 97],
    [11, 13, 23, 101],
    [11, 13, 23, 103],
    [11, 13, 23, 107],
    [11, 13, 29, 31],
    [11, 13, 29, 37],
    [11, 13, 29, 41],
    [11, 13, 29, 43],
    [11, 13, 29, 47],
    [11, 13, 29, 53],
    [11, 13, 29, 59],
    [11, 13, 29, 61],
    [11, 13, 29, 67],
    [11, 13, 29, 71],
    [11, 13, 29, 73],
    [11, 13, 29, 79],
    [11, 13, 29, 83],
    [11, 13, 29, 89],
    [11, 13, 31, 37],
    [11, 13, 31, 41],
    [11, 13, 31, 43],
    [11, 13, 31, 47],
    [11, 13, 31, 53],
    [11, 13, 31, 59],
    [11, 13, 31, 61],
    [11, 13, 31, 67],
    [11, 13, 31, 71],
    [11, 13, 31, 73],
    [11, 13, 31, 79],
    [11, 13, 31, 83],
    [11, 13, 31, 89]]

theorem k5PrefixGroup0050_support_covered :
    k5PrefixGroup0050.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0050MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0050_passes :
    k5PrefixGroup0050.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0050NormalLookup
        k5PrefixGroup0050TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0050_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0050NormalLookup
        k5PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0050_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0050NormalLookup
        k5PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0050_mask_primes_pass :
    k5PrefixGroup0050MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0050NormalLookup
        k5PrefixGroup0050TwistLookup) = true := by
  simp only [k5PrefixGroup0050MaskPrimes, List.all_append]
  rw [k5PrefixGroup0050_mask_group0000_passes]
  rw [k5PrefixGroup0050_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0050_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0050) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0050NormalLookup,
    k5PrefixGroup0050TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0050_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0050_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0050MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0050_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0050_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
