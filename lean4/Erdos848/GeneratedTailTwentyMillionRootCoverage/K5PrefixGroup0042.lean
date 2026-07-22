import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0042NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0042TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0042MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0042 : List (List ℕ) :=
  [[7, 13, 19, 41],
    [7, 13, 19, 43],
    [7, 13, 19, 47],
    [7, 13, 19, 53],
    [7, 13, 19, 59],
    [7, 13, 19, 61],
    [7, 13, 19, 67],
    [7, 13, 19, 71],
    [7, 13, 19, 73],
    [7, 13, 19, 79],
    [7, 13, 19, 83],
    [7, 13, 19, 89],
    [7, 13, 19, 97],
    [7, 13, 19, 101],
    [7, 13, 19, 103],
    [7, 13, 19, 107],
    [7, 13, 19, 109],
    [7, 13, 19, 113],
    [7, 13, 19, 127],
    [7, 13, 19, 131],
    [7, 13, 19, 137],
    [7, 13, 19, 139],
    [7, 13, 19, 149],
    [7, 13, 23, 29],
    [7, 13, 23, 31],
    [7, 13, 23, 37],
    [7, 13, 23, 41],
    [7, 13, 23, 43],
    [7, 13, 23, 47],
    [7, 13, 23, 53],
    [7, 13, 23, 59],
    [7, 13, 23, 61],
    [7, 13, 23, 67],
    [7, 13, 23, 71],
    [7, 13, 23, 73],
    [7, 13, 23, 79],
    [7, 13, 23, 83],
    [7, 13, 23, 89],
    [7, 13, 23, 97],
    [7, 13, 23, 101],
    [7, 13, 23, 103],
    [7, 13, 23, 107],
    [7, 13, 23, 109],
    [7, 13, 23, 113],
    [7, 13, 23, 127],
    [7, 13, 23, 131],
    [7, 13, 23, 137],
    [7, 13, 29, 31],
    [7, 13, 29, 37],
    [7, 13, 29, 41],
    [7, 13, 29, 43],
    [7, 13, 29, 47],
    [7, 13, 29, 53],
    [7, 13, 29, 59],
    [7, 13, 29, 61],
    [7, 13, 29, 67],
    [7, 13, 29, 71],
    [7, 13, 29, 73],
    [7, 13, 29, 79],
    [7, 13, 29, 83],
    [7, 13, 29, 89],
    [7, 13, 29, 97],
    [7, 13, 29, 101],
    [7, 13, 29, 103]]

theorem k5PrefixGroup0042_support_covered :
    k5PrefixGroup0042.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0042MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0042_passes :
    k5PrefixGroup0042.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0042NormalLookup
        k5PrefixGroup0042TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0042_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0042NormalLookup
        k5PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0042_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0042NormalLookup
        k5PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0042_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0042NormalLookup
        k5PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0042_mask_primes_pass :
    k5PrefixGroup0042MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0042NormalLookup
        k5PrefixGroup0042TwistLookup) = true := by
  simp only [k5PrefixGroup0042MaskPrimes, List.all_append]
  rw [k5PrefixGroup0042_mask_group0000_passes]
  rw [k5PrefixGroup0042_mask_group0001_passes]
  rw [k5PrefixGroup0042_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0042_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0042) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0042NormalLookup,
    k5PrefixGroup0042TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0042_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0042_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0042MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0042_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0042_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
