import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0091NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0091TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0091MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0091 : List (List ℕ) :=
  [[13, 71, 191],
    [13, 71, 193],
    [13, 71, 197],
    [13, 71, 199],
    [13, 73, 79],
    [13, 73, 83],
    [13, 73, 89],
    [13, 73, 97],
    [13, 73, 101],
    [13, 73, 103],
    [13, 73, 107],
    [13, 73, 109],
    [13, 73, 113],
    [13, 73, 127],
    [13, 73, 131],
    [13, 73, 137],
    [13, 73, 139],
    [13, 73, 149],
    [13, 73, 151],
    [13, 73, 157],
    [13, 73, 163],
    [13, 73, 167],
    [13, 73, 173],
    [13, 73, 179],
    [13, 73, 181],
    [13, 73, 191],
    [13, 73, 193],
    [13, 73, 197],
    [13, 73, 199],
    [13, 79, 83],
    [13, 79, 89],
    [13, 79, 97],
    [13, 79, 101],
    [13, 79, 103],
    [13, 79, 107],
    [13, 79, 109],
    [13, 79, 113],
    [13, 79, 127],
    [13, 79, 131],
    [13, 79, 137],
    [13, 79, 139],
    [13, 79, 149],
    [13, 79, 151],
    [13, 79, 157],
    [13, 79, 163],
    [13, 79, 167],
    [13, 79, 173],
    [13, 79, 179],
    [13, 79, 181],
    [13, 79, 191],
    [13, 79, 193],
    [13, 83, 89],
    [13, 83, 97],
    [13, 83, 101],
    [13, 83, 103],
    [13, 83, 107],
    [13, 83, 109],
    [13, 83, 113],
    [13, 83, 127],
    [13, 83, 131],
    [13, 83, 137],
    [13, 83, 139],
    [13, 83, 149],
    [13, 83, 151]]

theorem k4PrefixGroup0091_support_covered :
    k4PrefixGroup0091.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0091MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0091_passes :
    k4PrefixGroup0091.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0091NormalLookup
        k4PrefixGroup0091TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0091_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0091NormalLookup
        k4PrefixGroup0091TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0091NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0091TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0091_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0091NormalLookup
        k4PrefixGroup0091TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0091NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0091TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0091_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0091NormalLookup
        k4PrefixGroup0091TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0091NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0091TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0091_mask_primes_pass :
    k4PrefixGroup0091MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0091NormalLookup
        k4PrefixGroup0091TwistLookup) = true := by
  simp only [k4PrefixGroup0091MaskPrimes, List.all_append]
  rw [k4PrefixGroup0091_mask_group0000_passes]
  rw [k4PrefixGroup0091_mask_group0001_passes]
  rw [k4PrefixGroup0091_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0091_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0091) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0091NormalLookup,
    k4PrefixGroup0091TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0091_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0091_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0091MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0091_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0091_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
