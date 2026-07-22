import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0122NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0122TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0122MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0122 : List (List ℕ) :=
  [[31, 47, 83],
    [31, 47, 89],
    [31, 47, 97],
    [31, 47, 101],
    [31, 47, 103],
    [31, 47, 107],
    [31, 47, 109],
    [31, 47, 113],
    [31, 47, 127],
    [31, 47, 131],
    [31, 47, 137],
    [31, 47, 139],
    [31, 47, 149],
    [31, 47, 151],
    [31, 47, 157],
    [31, 47, 163],
    [31, 53, 59],
    [31, 53, 61],
    [31, 53, 67],
    [31, 53, 71],
    [31, 53, 73],
    [31, 53, 79],
    [31, 53, 83],
    [31, 53, 89],
    [31, 53, 97],
    [31, 53, 101],
    [31, 53, 103],
    [31, 53, 107],
    [31, 53, 109],
    [31, 53, 113],
    [31, 53, 127],
    [31, 53, 131],
    [31, 53, 137],
    [31, 53, 139],
    [31, 53, 149],
    [31, 53, 151],
    [31, 59, 61],
    [31, 59, 67],
    [31, 59, 71],
    [31, 59, 73],
    [31, 59, 79],
    [31, 59, 83],
    [31, 59, 89],
    [31, 59, 97],
    [31, 59, 101],
    [31, 59, 103],
    [31, 59, 107],
    [31, 59, 109],
    [31, 59, 113],
    [31, 59, 127],
    [31, 59, 131],
    [31, 59, 137],
    [31, 59, 139],
    [31, 61, 67],
    [31, 61, 71],
    [31, 61, 73],
    [31, 61, 79],
    [31, 61, 83],
    [31, 61, 89],
    [31, 61, 97],
    [31, 61, 101],
    [31, 61, 103],
    [31, 61, 107],
    [31, 61, 109]]

theorem k4PrefixGroup0122_support_covered :
    k4PrefixGroup0122.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0122MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0122_passes :
    k4PrefixGroup0122.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0122NormalLookup
        k4PrefixGroup0122TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0122_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0122NormalLookup
        k4PrefixGroup0122TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0122NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0122TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0122_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0122NormalLookup
        k4PrefixGroup0122TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0122NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0122TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0122_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0122NormalLookup
        k4PrefixGroup0122TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0122NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0122TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0122_mask_primes_pass :
    k4PrefixGroup0122MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0122NormalLookup
        k4PrefixGroup0122TwistLookup) = true := by
  simp only [k4PrefixGroup0122MaskPrimes, List.all_append]
  rw [k4PrefixGroup0122_mask_group0000_passes]
  rw [k4PrefixGroup0122_mask_group0001_passes]
  rw [k4PrefixGroup0122_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0122_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0122) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0122NormalLookup,
    k4PrefixGroup0122TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0122_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0122_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0122MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0122_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0122_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
