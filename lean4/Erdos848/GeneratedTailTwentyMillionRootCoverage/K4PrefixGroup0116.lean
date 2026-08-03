import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0116NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0116TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0116MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0116 : List (List ℕ) :=
  [[23, 89, 103],
    [23, 89, 107],
    [23, 89, 109],
    [23, 89, 113],
    [23, 89, 127],
    [23, 89, 131],
    [23, 89, 137],
    [23, 97, 101],
    [23, 97, 103],
    [23, 97, 107],
    [23, 97, 109],
    [23, 97, 113],
    [23, 97, 127],
    [23, 101, 103],
    [23, 101, 107],
    [23, 101, 109],
    [23, 101, 113],
    [23, 101, 127],
    [23, 103, 107],
    [23, 103, 109],
    [23, 103, 113],
    [23, 103, 127],
    [23, 107, 109],
    [23, 107, 113],
    [23, 109, 113],
    [29, 31, 37],
    [29, 31, 41],
    [29, 31, 43],
    [29, 31, 47],
    [29, 31, 53],
    [29, 31, 59],
    [29, 31, 61],
    [29, 31, 67],
    [29, 31, 71],
    [29, 31, 73],
    [29, 31, 79],
    [29, 31, 83],
    [29, 31, 89],
    [29, 31, 97],
    [29, 31, 101],
    [29, 31, 103],
    [29, 31, 107],
    [29, 31, 109],
    [29, 31, 113],
    [29, 31, 127],
    [29, 31, 131],
    [29, 31, 137],
    [29, 31, 139],
    [29, 31, 149],
    [29, 31, 151],
    [29, 31, 157],
    [29, 31, 163],
    [29, 31, 167],
    [29, 31, 173],
    [29, 31, 179],
    [29, 31, 181],
    [29, 31, 191],
    [29, 31, 193],
    [29, 31, 197],
    [29, 31, 199],
    [29, 37, 41],
    [29, 37, 43],
    [29, 37, 47],
    [29, 37, 53]]

theorem k4PrefixGroup0116_support_covered :
    k4PrefixGroup0116.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0116MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0116_passes :
    k4PrefixGroup0116.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0116NormalLookup
        k4PrefixGroup0116TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0116_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0116NormalLookup
        k4PrefixGroup0116TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0116NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0116TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0116_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0116NormalLookup
        k4PrefixGroup0116TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0116NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0116TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0116_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0116NormalLookup
        k4PrefixGroup0116TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0116NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0116TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0116_mask_primes_pass :
    k4PrefixGroup0116MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0116NormalLookup
        k4PrefixGroup0116TwistLookup) = true := by
  simp only [k4PrefixGroup0116MaskPrimes, List.all_append]
  rw [k4PrefixGroup0116_mask_group0000_passes]
  rw [k4PrefixGroup0116_mask_group0001_passes]
  rw [k4PrefixGroup0116_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0116_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0116) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0116NormalLookup,
    k4PrefixGroup0116TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0116_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0116_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0116MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0116_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0116_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
