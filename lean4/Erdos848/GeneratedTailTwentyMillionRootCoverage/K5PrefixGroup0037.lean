import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0037NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0037TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0037MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0037 : List (List ℕ) :=
  [[3, 41, 53, 67],
    [3, 41, 53, 71],
    [3, 41, 53, 73],
    [3, 41, 59, 61],
    [3, 41, 59, 67],
    [3, 41, 59, 71],
    [3, 41, 61, 67],
    [3, 41, 61, 71],
    [3, 43, 47, 53],
    [3, 43, 47, 59],
    [3, 43, 47, 61],
    [3, 43, 47, 67],
    [3, 43, 47, 71],
    [3, 43, 47, 73],
    [3, 43, 47, 79],
    [3, 43, 53, 59],
    [3, 43, 53, 61],
    [3, 43, 53, 67],
    [3, 43, 53, 71],
    [3, 43, 53, 73],
    [3, 43, 59, 61],
    [3, 43, 59, 67],
    [3, 43, 59, 71],
    [3, 43, 61, 67],
    [3, 47, 53, 59],
    [3, 47, 53, 61],
    [3, 47, 53, 67],
    [3, 47, 53, 71],
    [3, 47, 59, 61],
    [3, 47, 59, 67],
    [3, 53, 59, 61],
    [7, 11, 13, 17],
    [7, 11, 13, 19],
    [7, 11, 13, 23],
    [7, 11, 13, 29],
    [7, 11, 13, 31],
    [7, 11, 13, 37],
    [7, 11, 13, 41],
    [7, 11, 13, 43],
    [7, 11, 13, 47],
    [7, 11, 13, 53],
    [7, 11, 13, 59],
    [7, 11, 13, 61],
    [7, 11, 13, 67],
    [7, 11, 13, 71],
    [7, 11, 13, 73],
    [7, 11, 13, 79],
    [7, 11, 13, 83],
    [7, 11, 13, 89],
    [7, 11, 13, 97],
    [7, 11, 13, 101],
    [7, 11, 13, 103],
    [7, 11, 13, 107],
    [7, 11, 13, 109],
    [7, 11, 13, 113],
    [7, 11, 13, 127],
    [7, 11, 13, 131],
    [7, 11, 13, 137],
    [7, 11, 13, 139],
    [7, 11, 13, 149],
    [7, 11, 13, 151],
    [7, 11, 13, 157],
    [7, 11, 13, 163],
    [7, 11, 13, 167]]

theorem k5PrefixGroup0037_support_covered :
    k5PrefixGroup0037.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0037MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0037_passes :
    k5PrefixGroup0037.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0037NormalLookup
        k5PrefixGroup0037TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0037_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0037NormalLookup
        k5PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0037_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0037NormalLookup
        k5PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0037_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0037NormalLookup
        k5PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0037_mask_primes_pass :
    k5PrefixGroup0037MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0037NormalLookup
        k5PrefixGroup0037TwistLookup) = true := by
  simp only [k5PrefixGroup0037MaskPrimes, List.all_append]
  rw [k5PrefixGroup0037_mask_group0000_passes]
  rw [k5PrefixGroup0037_mask_group0001_passes]
  rw [k5PrefixGroup0037_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0037_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0037) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0037NormalLookup,
    k5PrefixGroup0037TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0037_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0037_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0037MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0037_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0037_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
