import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0108NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0108TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0108MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0108 : List (List ℕ) :=
  [[19, 59, 137],
    [19, 59, 139],
    [19, 59, 149],
    [19, 59, 151],
    [19, 59, 157],
    [19, 59, 163],
    [19, 59, 167],
    [19, 59, 173],
    [19, 59, 179],
    [19, 59, 181],
    [19, 61, 67],
    [19, 61, 71],
    [19, 61, 73],
    [19, 61, 79],
    [19, 61, 83],
    [19, 61, 89],
    [19, 61, 97],
    [19, 61, 101],
    [19, 61, 103],
    [19, 61, 107],
    [19, 61, 109],
    [19, 61, 113],
    [19, 61, 127],
    [19, 61, 131],
    [19, 61, 137],
    [19, 61, 139],
    [19, 61, 149],
    [19, 61, 151],
    [19, 61, 157],
    [19, 61, 163],
    [19, 61, 167],
    [19, 61, 173],
    [19, 61, 179],
    [19, 67, 71],
    [19, 67, 73],
    [19, 67, 79],
    [19, 67, 83],
    [19, 67, 89],
    [19, 67, 97],
    [19, 67, 101],
    [19, 67, 103],
    [19, 67, 107],
    [19, 67, 109],
    [19, 67, 113],
    [19, 67, 127],
    [19, 67, 131],
    [19, 67, 137],
    [19, 67, 139],
    [19, 67, 149],
    [19, 67, 151],
    [19, 67, 157],
    [19, 67, 163],
    [19, 67, 167],
    [19, 67, 173],
    [19, 71, 73],
    [19, 71, 79],
    [19, 71, 83],
    [19, 71, 89],
    [19, 71, 97],
    [19, 71, 101],
    [19, 71, 103],
    [19, 71, 107],
    [19, 71, 109],
    [19, 71, 113]]

theorem k4PrefixGroup0108_support_covered :
    k4PrefixGroup0108.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0108MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0108_passes :
    k4PrefixGroup0108.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0108NormalLookup
        k4PrefixGroup0108TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0108_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0108NormalLookup
        k4PrefixGroup0108TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0108NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0108TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0108_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0108NormalLookup
        k4PrefixGroup0108TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0108NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0108TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0108_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0108NormalLookup
        k4PrefixGroup0108TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0108NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0108TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0108_mask_primes_pass :
    k4PrefixGroup0108MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0108NormalLookup
        k4PrefixGroup0108TwistLookup) = true := by
  simp only [k4PrefixGroup0108MaskPrimes, List.all_append]
  rw [k4PrefixGroup0108_mask_group0000_passes]
  rw [k4PrefixGroup0108_mask_group0001_passes]
  rw [k4PrefixGroup0108_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0108_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0108) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0108NormalLookup,
    k4PrefixGroup0108TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0108_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0108_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0108MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0108_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0108_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
