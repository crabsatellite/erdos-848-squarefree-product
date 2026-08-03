import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0113NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0113TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0113MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0113 : List (List ℕ) :=
  [[23, 43, 83],
    [23, 43, 89],
    [23, 43, 97],
    [23, 43, 101],
    [23, 43, 103],
    [23, 43, 107],
    [23, 43, 109],
    [23, 43, 113],
    [23, 43, 127],
    [23, 43, 131],
    [23, 43, 137],
    [23, 43, 139],
    [23, 43, 149],
    [23, 43, 151],
    [23, 43, 157],
    [23, 43, 163],
    [23, 43, 167],
    [23, 43, 173],
    [23, 43, 179],
    [23, 43, 181],
    [23, 43, 191],
    [23, 43, 193],
    [23, 43, 197],
    [23, 47, 53],
    [23, 47, 59],
    [23, 47, 61],
    [23, 47, 67],
    [23, 47, 71],
    [23, 47, 73],
    [23, 47, 79],
    [23, 47, 83],
    [23, 47, 89],
    [23, 47, 97],
    [23, 47, 101],
    [23, 47, 103],
    [23, 47, 107],
    [23, 47, 109],
    [23, 47, 113],
    [23, 47, 127],
    [23, 47, 131],
    [23, 47, 137],
    [23, 47, 139],
    [23, 47, 149],
    [23, 47, 151],
    [23, 47, 157],
    [23, 47, 163],
    [23, 47, 167],
    [23, 47, 173],
    [23, 47, 179],
    [23, 47, 181],
    [23, 47, 191],
    [23, 53, 59],
    [23, 53, 61],
    [23, 53, 67],
    [23, 53, 71],
    [23, 53, 73],
    [23, 53, 79],
    [23, 53, 83],
    [23, 53, 89],
    [23, 53, 97],
    [23, 53, 101],
    [23, 53, 103],
    [23, 53, 107],
    [23, 53, 109]]

theorem k4PrefixGroup0113_support_covered :
    k4PrefixGroup0113.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0113MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0113_passes :
    k4PrefixGroup0113.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0113NormalLookup
        k4PrefixGroup0113TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0113_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0113NormalLookup
        k4PrefixGroup0113TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0113NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0113TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0113_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0113NormalLookup
        k4PrefixGroup0113TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0113NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0113TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0113_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0113NormalLookup
        k4PrefixGroup0113TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0113NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0113TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0113_mask_primes_pass :
    k4PrefixGroup0113MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0113NormalLookup
        k4PrefixGroup0113TwistLookup) = true := by
  simp only [k4PrefixGroup0113MaskPrimes, List.all_append]
  rw [k4PrefixGroup0113_mask_group0000_passes]
  rw [k4PrefixGroup0113_mask_group0001_passes]
  rw [k4PrefixGroup0113_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0113_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0113) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0113NormalLookup,
    k4PrefixGroup0113TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0113_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0113_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0113MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0113_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0113_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
