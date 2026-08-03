import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0039NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0039TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0039MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0039 : List (List ℕ) :=
  [[7, 11, 19, 149],
    [7, 11, 19, 151],
    [7, 11, 19, 157],
    [7, 11, 19, 163],
    [7, 11, 23, 29],
    [7, 11, 23, 31],
    [7, 11, 23, 37],
    [7, 11, 23, 41],
    [7, 11, 23, 43],
    [7, 11, 23, 47],
    [7, 11, 23, 53],
    [7, 11, 23, 59],
    [7, 11, 23, 61],
    [7, 11, 23, 67],
    [7, 11, 23, 71],
    [7, 11, 23, 73],
    [7, 11, 23, 79],
    [7, 11, 23, 83],
    [7, 11, 23, 89],
    [7, 11, 23, 97],
    [7, 11, 23, 101],
    [7, 11, 23, 103],
    [7, 11, 23, 107],
    [7, 11, 23, 109],
    [7, 11, 23, 113],
    [7, 11, 23, 127],
    [7, 11, 23, 131],
    [7, 11, 23, 137],
    [7, 11, 23, 139],
    [7, 11, 23, 149],
    [7, 11, 29, 31],
    [7, 11, 29, 37],
    [7, 11, 29, 41],
    [7, 11, 29, 43],
    [7, 11, 29, 47],
    [7, 11, 29, 53],
    [7, 11, 29, 59],
    [7, 11, 29, 61],
    [7, 11, 29, 67],
    [7, 11, 29, 71],
    [7, 11, 29, 73],
    [7, 11, 29, 79],
    [7, 11, 29, 83],
    [7, 11, 29, 89],
    [7, 11, 29, 97],
    [7, 11, 29, 101],
    [7, 11, 29, 103],
    [7, 11, 29, 107],
    [7, 11, 29, 109],
    [7, 11, 29, 113],
    [7, 11, 29, 127],
    [7, 11, 31, 37],
    [7, 11, 31, 41],
    [7, 11, 31, 43],
    [7, 11, 31, 47],
    [7, 11, 31, 53],
    [7, 11, 31, 59],
    [7, 11, 31, 61],
    [7, 11, 31, 67],
    [7, 11, 31, 71],
    [7, 11, 31, 73],
    [7, 11, 31, 79],
    [7, 11, 31, 83],
    [7, 11, 31, 89]]

theorem k5PrefixGroup0039_support_covered :
    k5PrefixGroup0039.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0039MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0039_passes :
    k5PrefixGroup0039.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0039NormalLookup
        k5PrefixGroup0039TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0039_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0039NormalLookup
        k5PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0039_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0039NormalLookup
        k5PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0039_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0039NormalLookup
        k5PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0039_mask_primes_pass :
    k5PrefixGroup0039MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0039NormalLookup
        k5PrefixGroup0039TwistLookup) = true := by
  simp only [k5PrefixGroup0039MaskPrimes, List.all_append]
  rw [k5PrefixGroup0039_mask_group0000_passes]
  rw [k5PrefixGroup0039_mask_group0001_passes]
  rw [k5PrefixGroup0039_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0039_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0039) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0039NormalLookup,
    k5PrefixGroup0039TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0039_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0039_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0039MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0039_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0039_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
