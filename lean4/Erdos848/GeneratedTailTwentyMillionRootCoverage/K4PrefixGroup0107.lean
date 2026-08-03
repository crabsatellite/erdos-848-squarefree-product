import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0107NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0107TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0107MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0107 : List (List ℕ) :=
  [[19, 47, 103],
    [19, 47, 107],
    [19, 47, 109],
    [19, 47, 113],
    [19, 47, 127],
    [19, 47, 131],
    [19, 47, 137],
    [19, 47, 139],
    [19, 47, 149],
    [19, 47, 151],
    [19, 47, 157],
    [19, 47, 163],
    [19, 47, 167],
    [19, 47, 173],
    [19, 47, 179],
    [19, 47, 181],
    [19, 47, 191],
    [19, 47, 193],
    [19, 47, 197],
    [19, 47, 199],
    [19, 53, 59],
    [19, 53, 61],
    [19, 53, 67],
    [19, 53, 71],
    [19, 53, 73],
    [19, 53, 79],
    [19, 53, 83],
    [19, 53, 89],
    [19, 53, 97],
    [19, 53, 101],
    [19, 53, 103],
    [19, 53, 107],
    [19, 53, 109],
    [19, 53, 113],
    [19, 53, 127],
    [19, 53, 131],
    [19, 53, 137],
    [19, 53, 139],
    [19, 53, 149],
    [19, 53, 151],
    [19, 53, 157],
    [19, 53, 163],
    [19, 53, 167],
    [19, 53, 173],
    [19, 53, 179],
    [19, 53, 181],
    [19, 53, 191],
    [19, 53, 193],
    [19, 53, 197],
    [19, 59, 61],
    [19, 59, 67],
    [19, 59, 71],
    [19, 59, 73],
    [19, 59, 79],
    [19, 59, 83],
    [19, 59, 89],
    [19, 59, 97],
    [19, 59, 101],
    [19, 59, 103],
    [19, 59, 107],
    [19, 59, 109],
    [19, 59, 113],
    [19, 59, 127],
    [19, 59, 131]]

theorem k4PrefixGroup0107_support_covered :
    k4PrefixGroup0107.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0107MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0107_passes :
    k4PrefixGroup0107.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0107NormalLookup
        k4PrefixGroup0107TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0107_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0107NormalLookup
        k4PrefixGroup0107TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0107NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0107TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0107_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0107NormalLookup
        k4PrefixGroup0107TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0107NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0107TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0107_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0107NormalLookup
        k4PrefixGroup0107TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0107NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0107TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0107_mask_primes_pass :
    k4PrefixGroup0107MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0107NormalLookup
        k4PrefixGroup0107TwistLookup) = true := by
  simp only [k4PrefixGroup0107MaskPrimes, List.all_append]
  rw [k4PrefixGroup0107_mask_group0000_passes]
  rw [k4PrefixGroup0107_mask_group0001_passes]
  rw [k4PrefixGroup0107_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0107_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0107) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0107NormalLookup,
    k4PrefixGroup0107TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0107_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0107_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0107MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0107_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0107_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
