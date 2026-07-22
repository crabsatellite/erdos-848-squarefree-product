import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0020NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0020TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0020MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0020 : List (List ℕ) :=
  [[3, 13, 23, 73],
    [3, 13, 23, 79],
    [3, 13, 23, 83],
    [3, 13, 23, 89],
    [3, 13, 23, 97],
    [3, 13, 23, 101],
    [3, 13, 23, 103],
    [3, 13, 23, 107],
    [3, 13, 23, 109],
    [3, 13, 23, 113],
    [3, 13, 23, 127],
    [3, 13, 23, 131],
    [3, 13, 23, 137],
    [3, 13, 23, 139],
    [3, 13, 23, 149],
    [3, 13, 23, 151],
    [3, 13, 23, 157],
    [3, 13, 23, 163],
    [3, 13, 23, 167],
    [3, 13, 23, 173],
    [3, 13, 23, 179],
    [3, 13, 23, 181],
    [3, 13, 23, 191],
    [3, 13, 23, 193],
    [3, 13, 23, 197],
    [3, 13, 23, 199],
    [3, 13, 29, 31],
    [3, 13, 29, 37],
    [3, 13, 29, 41],
    [3, 13, 29, 43],
    [3, 13, 29, 47],
    [3, 13, 29, 53],
    [3, 13, 29, 59],
    [3, 13, 29, 61],
    [3, 13, 29, 67],
    [3, 13, 29, 71],
    [3, 13, 29, 73],
    [3, 13, 29, 79],
    [3, 13, 29, 83],
    [3, 13, 29, 89],
    [3, 13, 29, 97],
    [3, 13, 29, 101],
    [3, 13, 29, 103],
    [3, 13, 29, 107],
    [3, 13, 29, 109],
    [3, 13, 29, 113],
    [3, 13, 29, 127],
    [3, 13, 29, 131],
    [3, 13, 29, 137],
    [3, 13, 29, 139],
    [3, 13, 29, 149],
    [3, 13, 29, 151],
    [3, 13, 29, 157],
    [3, 13, 29, 163],
    [3, 13, 29, 167],
    [3, 13, 29, 173],
    [3, 13, 29, 179],
    [3, 13, 29, 181],
    [3, 13, 31, 37],
    [3, 13, 31, 41],
    [3, 13, 31, 43],
    [3, 13, 31, 47],
    [3, 13, 31, 53],
    [3, 13, 31, 59]]

theorem k5PrefixGroup0020_support_covered :
    k5PrefixGroup0020.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0020MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0020_passes :
    k5PrefixGroup0020.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0020_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0020NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0020TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0020_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0020NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0020TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0020_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0020NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0020TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0020_mask_primes_pass :
    k5PrefixGroup0020MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  simp only [k5PrefixGroup0020MaskPrimes, List.all_append]
  rw [k5PrefixGroup0020_mask_group0000_passes]
  rw [k5PrefixGroup0020_mask_group0001_passes]
  rw [k5PrefixGroup0020_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0020_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0020) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0020NormalLookup,
    k5PrefixGroup0020TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0020_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0020_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0020MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0020_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0020_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
