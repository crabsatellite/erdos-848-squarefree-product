import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0130NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0130TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0130MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0130 : List (List ℕ) :=
  [[43, 83, 103],
    [43, 89, 97],
    [43, 89, 101],
    [47, 53, 59],
    [47, 53, 61],
    [47, 53, 67],
    [47, 53, 71],
    [47, 53, 73],
    [47, 53, 79],
    [47, 53, 83],
    [47, 53, 89],
    [47, 53, 97],
    [47, 53, 101],
    [47, 53, 103],
    [47, 53, 107],
    [47, 53, 109],
    [47, 53, 113],
    [47, 59, 61],
    [47, 59, 67],
    [47, 59, 71],
    [47, 59, 73],
    [47, 59, 79],
    [47, 59, 83],
    [47, 59, 89],
    [47, 59, 97],
    [47, 59, 101],
    [47, 59, 103],
    [47, 59, 107],
    [47, 59, 109],
    [47, 59, 113],
    [47, 61, 67],
    [47, 61, 71],
    [47, 61, 73],
    [47, 61, 79],
    [47, 61, 83],
    [47, 61, 89],
    [47, 61, 97],
    [47, 61, 101],
    [47, 61, 103],
    [47, 61, 107],
    [47, 61, 109],
    [47, 67, 71],
    [47, 67, 73],
    [47, 67, 79],
    [47, 67, 83],
    [47, 67, 89],
    [47, 67, 97],
    [47, 67, 101],
    [47, 67, 103],
    [47, 67, 107],
    [47, 67, 109],
    [47, 71, 73],
    [47, 71, 79],
    [47, 71, 83],
    [47, 71, 89],
    [47, 71, 97],
    [47, 71, 101],
    [47, 71, 103],
    [47, 71, 107],
    [47, 73, 79],
    [47, 73, 83],
    [47, 73, 89],
    [47, 73, 97],
    [47, 73, 101]]

theorem k4PrefixGroup0130_support_covered :
    k4PrefixGroup0130.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0130MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0130_passes :
    k4PrefixGroup0130.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0130NormalLookup
        k4PrefixGroup0130TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0130_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0130NormalLookup
        k4PrefixGroup0130TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0130NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0130TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0130_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0130NormalLookup
        k4PrefixGroup0130TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0130NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0130TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0130_mask_primes_pass :
    k4PrefixGroup0130MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0130NormalLookup
        k4PrefixGroup0130TwistLookup) = true := by
  simp only [k4PrefixGroup0130MaskPrimes, List.all_append]
  rw [k4PrefixGroup0130_mask_group0000_passes]
  rw [k4PrefixGroup0130_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0130_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0130) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0130NormalLookup,
    k4PrefixGroup0130TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0130_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0130_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0130MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0130_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0130_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
