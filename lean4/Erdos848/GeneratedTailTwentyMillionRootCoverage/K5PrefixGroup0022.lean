import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0022NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0022TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0022MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0022 : List (List ℕ) :=
  [[3, 13, 41, 107],
    [3, 13, 41, 109],
    [3, 13, 41, 113],
    [3, 13, 41, 127],
    [3, 13, 41, 131],
    [3, 13, 41, 137],
    [3, 13, 41, 139],
    [3, 13, 41, 149],
    [3, 13, 41, 151],
    [3, 13, 43, 47],
    [3, 13, 43, 53],
    [3, 13, 43, 59],
    [3, 13, 43, 61],
    [3, 13, 43, 67],
    [3, 13, 43, 71],
    [3, 13, 43, 73],
    [3, 13, 43, 79],
    [3, 13, 43, 83],
    [3, 13, 43, 89],
    [3, 13, 43, 97],
    [3, 13, 43, 101],
    [3, 13, 43, 103],
    [3, 13, 43, 107],
    [3, 13, 43, 109],
    [3, 13, 43, 113],
    [3, 13, 43, 127],
    [3, 13, 43, 131],
    [3, 13, 43, 137],
    [3, 13, 43, 139],
    [3, 13, 43, 149],
    [3, 13, 43, 151],
    [3, 13, 47, 53],
    [3, 13, 47, 59],
    [3, 13, 47, 61],
    [3, 13, 47, 67],
    [3, 13, 47, 71],
    [3, 13, 47, 73],
    [3, 13, 47, 79],
    [3, 13, 47, 83],
    [3, 13, 47, 89],
    [3, 13, 47, 97],
    [3, 13, 47, 101],
    [3, 13, 47, 103],
    [3, 13, 47, 107],
    [3, 13, 47, 109],
    [3, 13, 47, 113],
    [3, 13, 47, 127],
    [3, 13, 47, 131],
    [3, 13, 47, 137],
    [3, 13, 47, 139],
    [3, 13, 53, 59],
    [3, 13, 53, 61],
    [3, 13, 53, 67],
    [3, 13, 53, 71],
    [3, 13, 53, 73],
    [3, 13, 53, 79],
    [3, 13, 53, 83],
    [3, 13, 53, 89],
    [3, 13, 53, 97],
    [3, 13, 53, 101],
    [3, 13, 53, 103],
    [3, 13, 53, 107],
    [3, 13, 53, 109],
    [3, 13, 53, 113]]

theorem k5PrefixGroup0022_support_covered :
    k5PrefixGroup0022.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0022MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0022_passes :
    k5PrefixGroup0022.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0022_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0022NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0022TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0022_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0022NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0022TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0022_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0022NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0022TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0022_mask_primes_pass :
    k5PrefixGroup0022MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  simp only [k5PrefixGroup0022MaskPrimes, List.all_append]
  rw [k5PrefixGroup0022_mask_group0000_passes]
  rw [k5PrefixGroup0022_mask_group0001_passes]
  rw [k5PrefixGroup0022_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0022_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0022) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0022NormalLookup,
    k5PrefixGroup0022TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0022_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0022_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0022MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0022_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0022_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
