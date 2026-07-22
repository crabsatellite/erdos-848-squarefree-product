import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0026NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0026TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0026MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0026 : List (List ℕ) :=
  [[3, 17, 31, 131],
    [3, 17, 31, 137],
    [3, 17, 31, 139],
    [3, 17, 31, 149],
    [3, 17, 31, 151],
    [3, 17, 37, 41],
    [3, 17, 37, 43],
    [3, 17, 37, 47],
    [3, 17, 37, 53],
    [3, 17, 37, 59],
    [3, 17, 37, 61],
    [3, 17, 37, 67],
    [3, 17, 37, 71],
    [3, 17, 37, 73],
    [3, 17, 37, 79],
    [3, 17, 37, 83],
    [3, 17, 37, 89],
    [3, 17, 37, 97],
    [3, 17, 37, 101],
    [3, 17, 37, 103],
    [3, 17, 37, 107],
    [3, 17, 37, 109],
    [3, 17, 37, 113],
    [3, 17, 37, 127],
    [3, 17, 37, 131],
    [3, 17, 37, 137],
    [3, 17, 37, 139],
    [3, 17, 41, 43],
    [3, 17, 41, 47],
    [3, 17, 41, 53],
    [3, 17, 41, 59],
    [3, 17, 41, 61],
    [3, 17, 41, 67],
    [3, 17, 41, 71],
    [3, 17, 41, 73],
    [3, 17, 41, 79],
    [3, 17, 41, 83],
    [3, 17, 41, 89],
    [3, 17, 41, 97],
    [3, 17, 41, 101],
    [3, 17, 41, 103],
    [3, 17, 41, 107],
    [3, 17, 41, 109],
    [3, 17, 41, 113],
    [3, 17, 41, 127],
    [3, 17, 41, 131],
    [3, 17, 41, 137],
    [3, 17, 43, 47],
    [3, 17, 43, 53],
    [3, 17, 43, 59],
    [3, 17, 43, 61],
    [3, 17, 43, 67],
    [3, 17, 43, 71],
    [3, 17, 43, 73],
    [3, 17, 43, 79],
    [3, 17, 43, 83],
    [3, 17, 43, 89],
    [3, 17, 43, 97],
    [3, 17, 43, 101],
    [3, 17, 43, 103],
    [3, 17, 43, 107],
    [3, 17, 43, 109],
    [3, 17, 43, 113],
    [3, 17, 43, 127]]

theorem k5PrefixGroup0026_support_covered :
    k5PrefixGroup0026.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0026MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0026_passes :
    k5PrefixGroup0026.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0026NormalLookup
        k5PrefixGroup0026TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0026_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0026NormalLookup
        k5PrefixGroup0026TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0026NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0026TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0026_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0026NormalLookup
        k5PrefixGroup0026TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0026NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0026TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0026_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0026NormalLookup
        k5PrefixGroup0026TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0026NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0026TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0026_mask_primes_pass :
    k5PrefixGroup0026MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0026NormalLookup
        k5PrefixGroup0026TwistLookup) = true := by
  simp only [k5PrefixGroup0026MaskPrimes, List.all_append]
  rw [k5PrefixGroup0026_mask_group0000_passes]
  rw [k5PrefixGroup0026_mask_group0001_passes]
  rw [k5PrefixGroup0026_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0026_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0026) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0026NormalLookup,
    k5PrefixGroup0026TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0026_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0026_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0026MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0026_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0026_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
