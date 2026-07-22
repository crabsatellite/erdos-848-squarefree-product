import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0010NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0010TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0010MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0010 : List (List ℕ) :=
  [[3, 7, 73, 101],
    [3, 7, 73, 103],
    [3, 7, 73, 107],
    [3, 7, 73, 109],
    [3, 7, 73, 113],
    [3, 7, 73, 127],
    [3, 7, 73, 131],
    [3, 7, 73, 137],
    [3, 7, 73, 139],
    [3, 7, 73, 149],
    [3, 7, 73, 151],
    [3, 7, 73, 157],
    [3, 7, 79, 83],
    [3, 7, 79, 89],
    [3, 7, 79, 97],
    [3, 7, 79, 101],
    [3, 7, 79, 103],
    [3, 7, 79, 107],
    [3, 7, 79, 109],
    [3, 7, 79, 113],
    [3, 7, 79, 127],
    [3, 7, 79, 131],
    [3, 7, 79, 137],
    [3, 7, 79, 139],
    [3, 7, 79, 149],
    [3, 7, 79, 151],
    [3, 7, 83, 89],
    [3, 7, 83, 97],
    [3, 7, 83, 101],
    [3, 7, 83, 103],
    [3, 7, 83, 107],
    [3, 7, 83, 109],
    [3, 7, 83, 113],
    [3, 7, 83, 127],
    [3, 7, 83, 131],
    [3, 7, 83, 137],
    [3, 7, 83, 139],
    [3, 7, 83, 149],
    [3, 7, 89, 97],
    [3, 7, 89, 101],
    [3, 7, 89, 103],
    [3, 7, 89, 107],
    [3, 7, 89, 109],
    [3, 7, 89, 113],
    [3, 7, 89, 127],
    [3, 7, 89, 131],
    [3, 7, 89, 137],
    [3, 7, 89, 139],
    [3, 7, 97, 101],
    [3, 7, 97, 103],
    [3, 7, 97, 107],
    [3, 7, 97, 109],
    [3, 7, 97, 113],
    [3, 7, 97, 127],
    [3, 7, 97, 131],
    [3, 7, 97, 137],
    [3, 7, 101, 103],
    [3, 7, 101, 107],
    [3, 7, 101, 109],
    [3, 7, 101, 113],
    [3, 7, 101, 127],
    [3, 7, 101, 131],
    [3, 7, 103, 107],
    [3, 7, 103, 109]]

theorem k5PrefixGroup0010_support_covered :
    k5PrefixGroup0010.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0010MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0010_passes :
    k5PrefixGroup0010.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0010_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0010_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0010_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0010_mask_primes_pass :
    k5PrefixGroup0010MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  simp only [k5PrefixGroup0010MaskPrimes, List.all_append]
  rw [k5PrefixGroup0010_mask_group0000_passes]
  rw [k5PrefixGroup0010_mask_group0001_passes]
  rw [k5PrefixGroup0010_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0010_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0010) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0010NormalLookup,
    k5PrefixGroup0010TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0010_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0010_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0010MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0010_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0010_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
