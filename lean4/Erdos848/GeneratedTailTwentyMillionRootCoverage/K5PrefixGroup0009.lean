import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0009NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0009TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0009MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0009 : List (List ℕ) :=
  [[3, 7, 59, 167],
    [3, 7, 59, 173],
    [3, 7, 61, 67],
    [3, 7, 61, 71],
    [3, 7, 61, 73],
    [3, 7, 61, 79],
    [3, 7, 61, 83],
    [3, 7, 61, 89],
    [3, 7, 61, 97],
    [3, 7, 61, 101],
    [3, 7, 61, 103],
    [3, 7, 61, 107],
    [3, 7, 61, 109],
    [3, 7, 61, 113],
    [3, 7, 61, 127],
    [3, 7, 61, 131],
    [3, 7, 61, 137],
    [3, 7, 61, 139],
    [3, 7, 61, 149],
    [3, 7, 61, 151],
    [3, 7, 61, 157],
    [3, 7, 61, 163],
    [3, 7, 61, 167],
    [3, 7, 61, 173],
    [3, 7, 67, 71],
    [3, 7, 67, 73],
    [3, 7, 67, 79],
    [3, 7, 67, 83],
    [3, 7, 67, 89],
    [3, 7, 67, 97],
    [3, 7, 67, 101],
    [3, 7, 67, 103],
    [3, 7, 67, 107],
    [3, 7, 67, 109],
    [3, 7, 67, 113],
    [3, 7, 67, 127],
    [3, 7, 67, 131],
    [3, 7, 67, 137],
    [3, 7, 67, 139],
    [3, 7, 67, 149],
    [3, 7, 67, 151],
    [3, 7, 67, 157],
    [3, 7, 67, 163],
    [3, 7, 71, 73],
    [3, 7, 71, 79],
    [3, 7, 71, 83],
    [3, 7, 71, 89],
    [3, 7, 71, 97],
    [3, 7, 71, 101],
    [3, 7, 71, 103],
    [3, 7, 71, 107],
    [3, 7, 71, 109],
    [3, 7, 71, 113],
    [3, 7, 71, 127],
    [3, 7, 71, 131],
    [3, 7, 71, 137],
    [3, 7, 71, 139],
    [3, 7, 71, 149],
    [3, 7, 71, 151],
    [3, 7, 71, 157],
    [3, 7, 73, 79],
    [3, 7, 73, 83],
    [3, 7, 73, 89],
    [3, 7, 73, 97]]

theorem k5PrefixGroup0009_support_covered :
    k5PrefixGroup0009.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0009MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0009_passes :
    k5PrefixGroup0009.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0009NormalLookup
        k5PrefixGroup0009TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0009_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0009NormalLookup
        k5PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0009_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0009NormalLookup
        k5PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0009_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0009NormalLookup
        k5PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0009_mask_primes_pass :
    k5PrefixGroup0009MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0009NormalLookup
        k5PrefixGroup0009TwistLookup) = true := by
  simp only [k5PrefixGroup0009MaskPrimes, List.all_append]
  rw [k5PrefixGroup0009_mask_group0000_passes]
  rw [k5PrefixGroup0009_mask_group0001_passes]
  rw [k5PrefixGroup0009_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0009_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0009) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0009NormalLookup,
    k5PrefixGroup0009TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0009_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0009_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0009MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0009_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0009_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
