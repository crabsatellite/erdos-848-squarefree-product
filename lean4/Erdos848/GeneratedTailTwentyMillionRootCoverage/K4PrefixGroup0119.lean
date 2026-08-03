import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0119NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0119TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0119MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0119 : List (List ℕ) :=
  [[29, 59, 71],
    [29, 59, 73],
    [29, 59, 79],
    [29, 59, 83],
    [29, 59, 89],
    [29, 59, 97],
    [29, 59, 101],
    [29, 59, 103],
    [29, 59, 107],
    [29, 59, 109],
    [29, 59, 113],
    [29, 59, 127],
    [29, 59, 131],
    [29, 59, 137],
    [29, 59, 139],
    [29, 59, 149],
    [29, 61, 67],
    [29, 61, 71],
    [29, 61, 73],
    [29, 61, 79],
    [29, 61, 83],
    [29, 61, 89],
    [29, 61, 97],
    [29, 61, 101],
    [29, 61, 103],
    [29, 61, 107],
    [29, 61, 109],
    [29, 61, 113],
    [29, 61, 127],
    [29, 61, 131],
    [29, 61, 137],
    [29, 61, 139],
    [29, 61, 149],
    [29, 67, 71],
    [29, 67, 73],
    [29, 67, 79],
    [29, 67, 83],
    [29, 67, 89],
    [29, 67, 97],
    [29, 67, 101],
    [29, 67, 103],
    [29, 67, 107],
    [29, 67, 109],
    [29, 67, 113],
    [29, 67, 127],
    [29, 67, 131],
    [29, 67, 137],
    [29, 71, 73],
    [29, 71, 79],
    [29, 71, 83],
    [29, 71, 89],
    [29, 71, 97],
    [29, 71, 101],
    [29, 71, 103],
    [29, 71, 107],
    [29, 71, 109],
    [29, 71, 113],
    [29, 71, 127],
    [29, 71, 131],
    [29, 71, 137],
    [29, 73, 79],
    [29, 73, 83],
    [29, 73, 89],
    [29, 73, 97]]

theorem k4PrefixGroup0119_support_covered :
    k4PrefixGroup0119.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0119MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0119_passes :
    k4PrefixGroup0119.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0119NormalLookup
        k4PrefixGroup0119TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0119_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0119NormalLookup
        k4PrefixGroup0119TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0119NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0119TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0119_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0119NormalLookup
        k4PrefixGroup0119TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0119NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0119TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0119_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0119NormalLookup
        k4PrefixGroup0119TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0119NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0119TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0119_mask_primes_pass :
    k4PrefixGroup0119MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0119NormalLookup
        k4PrefixGroup0119TwistLookup) = true := by
  simp only [k4PrefixGroup0119MaskPrimes, List.all_append]
  rw [k4PrefixGroup0119_mask_group0000_passes]
  rw [k4PrefixGroup0119_mask_group0001_passes]
  rw [k4PrefixGroup0119_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0119_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0119) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0119NormalLookup,
    k4PrefixGroup0119TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0119_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0119_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0119MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0119_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0119_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
