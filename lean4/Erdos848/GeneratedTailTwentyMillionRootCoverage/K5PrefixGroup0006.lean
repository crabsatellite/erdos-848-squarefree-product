import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0006NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k5PrefixGroup0006TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k5PrefixGroup0006MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k5PrefixGroup0006 : List (List ℕ) :=
  [[3, 7, 31, 173],
    [3, 7, 31, 179],
    [3, 7, 31, 181],
    [3, 7, 31, 191],
    [3, 7, 31, 193],
    [3, 7, 31, 197],
    [3, 7, 31, 199],
    [3, 7, 31, 211],
    [3, 7, 31, 223],
    [3, 7, 31, 227],
    [3, 7, 31, 229],
    [3, 7, 31, 233],
    [3, 7, 31, 239],
    [3, 7, 31, 241],
    [3, 7, 37, 41],
    [3, 7, 37, 43],
    [3, 7, 37, 47],
    [3, 7, 37, 53],
    [3, 7, 37, 59],
    [3, 7, 37, 61],
    [3, 7, 37, 67],
    [3, 7, 37, 71],
    [3, 7, 37, 73],
    [3, 7, 37, 79],
    [3, 7, 37, 83],
    [3, 7, 37, 89],
    [3, 7, 37, 97],
    [3, 7, 37, 101],
    [3, 7, 37, 103],
    [3, 7, 37, 107],
    [3, 7, 37, 109],
    [3, 7, 37, 113],
    [3, 7, 37, 127],
    [3, 7, 37, 131],
    [3, 7, 37, 137],
    [3, 7, 37, 139],
    [3, 7, 37, 149],
    [3, 7, 37, 151],
    [3, 7, 37, 157],
    [3, 7, 37, 163],
    [3, 7, 37, 167],
    [3, 7, 37, 173],
    [3, 7, 37, 179],
    [3, 7, 37, 181],
    [3, 7, 37, 191],
    [3, 7, 37, 193],
    [3, 7, 37, 197],
    [3, 7, 37, 199],
    [3, 7, 37, 211],
    [3, 7, 37, 223],
    [3, 7, 41, 43],
    [3, 7, 41, 47],
    [3, 7, 41, 53],
    [3, 7, 41, 59],
    [3, 7, 41, 61],
    [3, 7, 41, 67],
    [3, 7, 41, 71],
    [3, 7, 41, 73],
    [3, 7, 41, 79],
    [3, 7, 41, 83],
    [3, 7, 41, 89],
    [3, 7, 41, 97],
    [3, 7, 41, 101],
    [3, 7, 41, 103]]

theorem k5PrefixGroup0006_support_covered :
    k5PrefixGroup0006.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0006MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0006_passes :
    k5PrefixGroup0006.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0006_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0006_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0006_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0006_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k5PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0006_mask_primes_pass :
    k5PrefixGroup0006MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  simp only [k5PrefixGroup0006MaskPrimes, List.all_append]
  rw [k5PrefixGroup0006_mask_group0000_passes]
  rw [k5PrefixGroup0006_mask_group0001_passes]
  rw [k5PrefixGroup0006_mask_group0002_passes]
  rw [k5PrefixGroup0006_mask_group0003_passes]
  rfl

theorem k5PrefixGroup0006_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0006) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0006NormalLookup,
    k5PrefixGroup0006TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0006_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0006_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0006MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0006_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0006_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
