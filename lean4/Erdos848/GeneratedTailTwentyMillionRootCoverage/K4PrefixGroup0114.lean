import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0114NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0114TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0114MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0114 : List (List ℕ) :=
  [[23, 53, 113],
    [23, 53, 127],
    [23, 53, 131],
    [23, 53, 137],
    [23, 53, 139],
    [23, 53, 149],
    [23, 53, 151],
    [23, 53, 157],
    [23, 53, 163],
    [23, 53, 167],
    [23, 53, 173],
    [23, 53, 179],
    [23, 59, 61],
    [23, 59, 67],
    [23, 59, 71],
    [23, 59, 73],
    [23, 59, 79],
    [23, 59, 83],
    [23, 59, 89],
    [23, 59, 97],
    [23, 59, 101],
    [23, 59, 103],
    [23, 59, 107],
    [23, 59, 109],
    [23, 59, 113],
    [23, 59, 127],
    [23, 59, 131],
    [23, 59, 137],
    [23, 59, 139],
    [23, 59, 149],
    [23, 59, 151],
    [23, 59, 157],
    [23, 59, 163],
    [23, 59, 167],
    [23, 61, 67],
    [23, 61, 71],
    [23, 61, 73],
    [23, 61, 79],
    [23, 61, 83],
    [23, 61, 89],
    [23, 61, 97],
    [23, 61, 101],
    [23, 61, 103],
    [23, 61, 107],
    [23, 61, 109],
    [23, 61, 113],
    [23, 61, 127],
    [23, 61, 131],
    [23, 61, 137],
    [23, 61, 139],
    [23, 61, 149],
    [23, 61, 151],
    [23, 61, 157],
    [23, 61, 163],
    [23, 67, 71],
    [23, 67, 73],
    [23, 67, 79],
    [23, 67, 83],
    [23, 67, 89],
    [23, 67, 97],
    [23, 67, 101],
    [23, 67, 103],
    [23, 67, 107],
    [23, 67, 109]]

theorem k4PrefixGroup0114_support_covered :
    k4PrefixGroup0114.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0114MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0114_passes :
    k4PrefixGroup0114.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0114NormalLookup
        k4PrefixGroup0114TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0114_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0114NormalLookup
        k4PrefixGroup0114TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0114NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0114TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0114_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0114NormalLookup
        k4PrefixGroup0114TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0114NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0114TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0114_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0114NormalLookup
        k4PrefixGroup0114TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0114NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0114TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0114_mask_primes_pass :
    k4PrefixGroup0114MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0114NormalLookup
        k4PrefixGroup0114TwistLookup) = true := by
  simp only [k4PrefixGroup0114MaskPrimes, List.all_append]
  rw [k4PrefixGroup0114_mask_group0000_passes]
  rw [k4PrefixGroup0114_mask_group0001_passes]
  rw [k4PrefixGroup0114_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0114_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0114) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0114NormalLookup,
    k4PrefixGroup0114TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0114_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0114_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0114MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0114_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0114_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
