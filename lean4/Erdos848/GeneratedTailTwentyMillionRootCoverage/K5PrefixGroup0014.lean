import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0014NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0014TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0014MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0014 : List (List ℕ) :=
  [[3, 11, 23, 191],
    [3, 11, 23, 193],
    [3, 11, 23, 197],
    [3, 11, 23, 199],
    [3, 11, 23, 211],
    [3, 11, 23, 223],
    [3, 11, 23, 227],
    [3, 11, 29, 31],
    [3, 11, 29, 37],
    [3, 11, 29, 41],
    [3, 11, 29, 43],
    [3, 11, 29, 47],
    [3, 11, 29, 53],
    [3, 11, 29, 59],
    [3, 11, 29, 61],
    [3, 11, 29, 67],
    [3, 11, 29, 71],
    [3, 11, 29, 73],
    [3, 11, 29, 79],
    [3, 11, 29, 83],
    [3, 11, 29, 89],
    [3, 11, 29, 97],
    [3, 11, 29, 101],
    [3, 11, 29, 103],
    [3, 11, 29, 107],
    [3, 11, 29, 109],
    [3, 11, 29, 113],
    [3, 11, 29, 127],
    [3, 11, 29, 131],
    [3, 11, 29, 137],
    [3, 11, 29, 139],
    [3, 11, 29, 149],
    [3, 11, 29, 151],
    [3, 11, 29, 157],
    [3, 11, 29, 163],
    [3, 11, 29, 167],
    [3, 11, 29, 173],
    [3, 11, 29, 179],
    [3, 11, 29, 181],
    [3, 11, 29, 191],
    [3, 11, 29, 193],
    [3, 11, 29, 197],
    [3, 11, 31, 37],
    [3, 11, 31, 41],
    [3, 11, 31, 43],
    [3, 11, 31, 47],
    [3, 11, 31, 53],
    [3, 11, 31, 59],
    [3, 11, 31, 61],
    [3, 11, 31, 67],
    [3, 11, 31, 71],
    [3, 11, 31, 73],
    [3, 11, 31, 79],
    [3, 11, 31, 83],
    [3, 11, 31, 89],
    [3, 11, 31, 97],
    [3, 11, 31, 101],
    [3, 11, 31, 103],
    [3, 11, 31, 107],
    [3, 11, 31, 109],
    [3, 11, 31, 113],
    [3, 11, 31, 127],
    [3, 11, 31, 131],
    [3, 11, 31, 137]]

theorem k5PrefixGroup0014_support_covered :
    k5PrefixGroup0014.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0014MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0014_passes :
    k5PrefixGroup0014.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0014_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0014NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0014TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0014_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0014NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0014TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0014_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0014NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0014TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0014_mask_primes_pass :
    k5PrefixGroup0014MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  simp only [k5PrefixGroup0014MaskPrimes, List.all_append]
  rw [k5PrefixGroup0014_mask_group0000_passes]
  rw [k5PrefixGroup0014_mask_group0001_passes]
  rw [k5PrefixGroup0014_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0014_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0014) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0014NormalLookup,
    k5PrefixGroup0014TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0014_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0014_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0014MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0014_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0014_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
