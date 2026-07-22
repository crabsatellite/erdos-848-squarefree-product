import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0018NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0018TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0018MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0018 : List (List ℕ) :=
  [[3, 11, 73, 107],
    [3, 11, 73, 109],
    [3, 11, 73, 113],
    [3, 11, 79, 83],
    [3, 11, 79, 89],
    [3, 11, 79, 97],
    [3, 11, 79, 101],
    [3, 11, 79, 103],
    [3, 11, 79, 107],
    [3, 11, 79, 109],
    [3, 11, 79, 113],
    [3, 11, 83, 89],
    [3, 11, 83, 97],
    [3, 11, 83, 101],
    [3, 11, 83, 103],
    [3, 11, 83, 107],
    [3, 11, 83, 109],
    [3, 11, 83, 113],
    [3, 11, 89, 97],
    [3, 11, 89, 101],
    [3, 11, 89, 103],
    [3, 11, 89, 107],
    [3, 11, 89, 109],
    [3, 11, 97, 101],
    [3, 11, 97, 103],
    [3, 11, 97, 107],
    [3, 11, 97, 109],
    [3, 11, 101, 103],
    [3, 11, 101, 107],
    [3, 11, 103, 107],
    [3, 13, 17, 19],
    [3, 13, 17, 23],
    [3, 13, 17, 29],
    [3, 13, 17, 31],
    [3, 13, 17, 37],
    [3, 13, 17, 41],
    [3, 13, 17, 43],
    [3, 13, 17, 47],
    [3, 13, 17, 53],
    [3, 13, 17, 59],
    [3, 13, 17, 61],
    [3, 13, 17, 67],
    [3, 13, 17, 71],
    [3, 13, 17, 73],
    [3, 13, 17, 79],
    [3, 13, 17, 83],
    [3, 13, 17, 89],
    [3, 13, 17, 97],
    [3, 13, 17, 101],
    [3, 13, 17, 103],
    [3, 13, 17, 107],
    [3, 13, 17, 109],
    [3, 13, 17, 113],
    [3, 13, 17, 127],
    [3, 13, 17, 131],
    [3, 13, 17, 137],
    [3, 13, 17, 139],
    [3, 13, 17, 149],
    [3, 13, 17, 151],
    [3, 13, 17, 157],
    [3, 13, 17, 163],
    [3, 13, 17, 167],
    [3, 13, 17, 173],
    [3, 13, 17, 179]]

theorem k5PrefixGroup0018_support_covered :
    k5PrefixGroup0018.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0018MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0018_passes :
    k5PrefixGroup0018.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0018_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0018NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0018TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0018_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0018NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0018TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0018_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0018NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0018TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0018_mask_primes_pass :
    k5PrefixGroup0018MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  simp only [k5PrefixGroup0018MaskPrimes, List.all_append]
  rw [k5PrefixGroup0018_mask_group0000_passes]
  rw [k5PrefixGroup0018_mask_group0001_passes]
  rw [k5PrefixGroup0018_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0018_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0018) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0018NormalLookup,
    k5PrefixGroup0018TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0018_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0018_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0018MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0018_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0018_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
