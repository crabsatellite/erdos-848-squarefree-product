import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0041NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0041TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0041MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0041 : List (List ℕ) :=
  [[7, 11, 47, 101],
    [7, 11, 47, 103],
    [7, 11, 53, 59],
    [7, 11, 53, 61],
    [7, 11, 53, 67],
    [7, 11, 53, 71],
    [7, 11, 53, 73],
    [7, 11, 53, 79],
    [7, 11, 53, 83],
    [7, 11, 53, 89],
    [7, 11, 53, 97],
    [7, 11, 59, 61],
    [7, 11, 59, 67],
    [7, 11, 59, 71],
    [7, 11, 59, 73],
    [7, 11, 59, 79],
    [7, 11, 59, 83],
    [7, 11, 59, 89],
    [7, 11, 61, 67],
    [7, 11, 61, 71],
    [7, 11, 61, 73],
    [7, 11, 61, 79],
    [7, 11, 61, 83],
    [7, 11, 67, 71],
    [7, 11, 67, 73],
    [7, 11, 67, 79],
    [7, 11, 67, 83],
    [7, 11, 71, 73],
    [7, 11, 71, 79],
    [7, 11, 73, 79],
    [7, 13, 17, 19],
    [7, 13, 17, 23],
    [7, 13, 17, 29],
    [7, 13, 17, 31],
    [7, 13, 17, 37],
    [7, 13, 17, 41],
    [7, 13, 17, 43],
    [7, 13, 17, 47],
    [7, 13, 17, 53],
    [7, 13, 17, 59],
    [7, 13, 17, 61],
    [7, 13, 17, 67],
    [7, 13, 17, 71],
    [7, 13, 17, 73],
    [7, 13, 17, 79],
    [7, 13, 17, 83],
    [7, 13, 17, 89],
    [7, 13, 17, 97],
    [7, 13, 17, 101],
    [7, 13, 17, 103],
    [7, 13, 17, 107],
    [7, 13, 17, 109],
    [7, 13, 17, 113],
    [7, 13, 17, 127],
    [7, 13, 17, 131],
    [7, 13, 17, 137],
    [7, 13, 17, 139],
    [7, 13, 17, 149],
    [7, 13, 17, 151],
    [7, 13, 17, 157],
    [7, 13, 19, 23],
    [7, 13, 19, 29],
    [7, 13, 19, 31],
    [7, 13, 19, 37]]

theorem k5PrefixGroup0041_support_covered :
    k5PrefixGroup0041.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0041MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0041_passes :
    k5PrefixGroup0041.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0041NormalLookup
        k5PrefixGroup0041TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0041_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0041NormalLookup
        k5PrefixGroup0041TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0041NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0041TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0041_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0041NormalLookup
        k5PrefixGroup0041TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0041NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0041TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0041_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0041NormalLookup
        k5PrefixGroup0041TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0041NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0041TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0041_mask_primes_pass :
    k5PrefixGroup0041MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0041NormalLookup
        k5PrefixGroup0041TwistLookup) = true := by
  simp only [k5PrefixGroup0041MaskPrimes, List.all_append]
  rw [k5PrefixGroup0041_mask_group0000_passes]
  rw [k5PrefixGroup0041_mask_group0001_passes]
  rw [k5PrefixGroup0041_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0041_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0041) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0041NormalLookup,
    k5PrefixGroup0041TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0041_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0041_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0041MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0041_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0041_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
