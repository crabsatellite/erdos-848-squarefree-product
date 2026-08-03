import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0021NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0021TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0021MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0021 : List (List ℕ) :=
  [[3, 13, 31, 61],
    [3, 13, 31, 67],
    [3, 13, 31, 71],
    [3, 13, 31, 73],
    [3, 13, 31, 79],
    [3, 13, 31, 83],
    [3, 13, 31, 89],
    [3, 13, 31, 97],
    [3, 13, 31, 101],
    [3, 13, 31, 103],
    [3, 13, 31, 107],
    [3, 13, 31, 109],
    [3, 13, 31, 113],
    [3, 13, 31, 127],
    [3, 13, 31, 131],
    [3, 13, 31, 137],
    [3, 13, 31, 139],
    [3, 13, 31, 149],
    [3, 13, 31, 151],
    [3, 13, 31, 157],
    [3, 13, 31, 163],
    [3, 13, 31, 167],
    [3, 13, 31, 173],
    [3, 13, 31, 179],
    [3, 13, 37, 41],
    [3, 13, 37, 43],
    [3, 13, 37, 47],
    [3, 13, 37, 53],
    [3, 13, 37, 59],
    [3, 13, 37, 61],
    [3, 13, 37, 67],
    [3, 13, 37, 71],
    [3, 13, 37, 73],
    [3, 13, 37, 79],
    [3, 13, 37, 83],
    [3, 13, 37, 89],
    [3, 13, 37, 97],
    [3, 13, 37, 101],
    [3, 13, 37, 103],
    [3, 13, 37, 107],
    [3, 13, 37, 109],
    [3, 13, 37, 113],
    [3, 13, 37, 127],
    [3, 13, 37, 131],
    [3, 13, 37, 137],
    [3, 13, 37, 139],
    [3, 13, 37, 149],
    [3, 13, 37, 151],
    [3, 13, 37, 157],
    [3, 13, 37, 163],
    [3, 13, 41, 43],
    [3, 13, 41, 47],
    [3, 13, 41, 53],
    [3, 13, 41, 59],
    [3, 13, 41, 61],
    [3, 13, 41, 67],
    [3, 13, 41, 71],
    [3, 13, 41, 73],
    [3, 13, 41, 79],
    [3, 13, 41, 83],
    [3, 13, 41, 89],
    [3, 13, 41, 97],
    [3, 13, 41, 101],
    [3, 13, 41, 103]]

theorem k5PrefixGroup0021_support_covered :
    k5PrefixGroup0021.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0021MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0021_passes :
    k5PrefixGroup0021.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0021_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0021_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0021_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0021_mask_primes_pass :
    k5PrefixGroup0021MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  simp only [k5PrefixGroup0021MaskPrimes, List.all_append]
  rw [k5PrefixGroup0021_mask_group0000_passes]
  rw [k5PrefixGroup0021_mask_group0001_passes]
  rw [k5PrefixGroup0021_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0021_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0021) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0021NormalLookup,
    k5PrefixGroup0021TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0021_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0021_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0021MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0021_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0021_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
