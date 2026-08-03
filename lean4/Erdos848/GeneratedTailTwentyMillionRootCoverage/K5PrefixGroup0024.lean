import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0024NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0024TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0024MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0024 : List (List ℕ) :=
  [[3, 13, 79, 107],
    [3, 13, 79, 109],
    [3, 13, 83, 89],
    [3, 13, 83, 97],
    [3, 13, 83, 101],
    [3, 13, 83, 103],
    [3, 13, 83, 107],
    [3, 13, 83, 109],
    [3, 13, 89, 97],
    [3, 13, 89, 101],
    [3, 13, 89, 103],
    [3, 13, 97, 101],
    [3, 17, 19, 23],
    [3, 17, 19, 29],
    [3, 17, 19, 31],
    [3, 17, 19, 37],
    [3, 17, 19, 41],
    [3, 17, 19, 43],
    [3, 17, 19, 47],
    [3, 17, 19, 53],
    [3, 17, 19, 59],
    [3, 17, 19, 61],
    [3, 17, 19, 67],
    [3, 17, 19, 71],
    [3, 17, 19, 73],
    [3, 17, 19, 79],
    [3, 17, 19, 83],
    [3, 17, 19, 89],
    [3, 17, 19, 97],
    [3, 17, 19, 101],
    [3, 17, 19, 103],
    [3, 17, 19, 107],
    [3, 17, 19, 109],
    [3, 17, 19, 113],
    [3, 17, 19, 127],
    [3, 17, 19, 131],
    [3, 17, 19, 137],
    [3, 17, 19, 139],
    [3, 17, 19, 149],
    [3, 17, 19, 151],
    [3, 17, 19, 157],
    [3, 17, 19, 163],
    [3, 17, 19, 167],
    [3, 17, 19, 173],
    [3, 17, 19, 179],
    [3, 17, 19, 181],
    [3, 17, 19, 191],
    [3, 17, 19, 193],
    [3, 17, 19, 197],
    [3, 17, 23, 29],
    [3, 17, 23, 31],
    [3, 17, 23, 37],
    [3, 17, 23, 41],
    [3, 17, 23, 43],
    [3, 17, 23, 47],
    [3, 17, 23, 53],
    [3, 17, 23, 59],
    [3, 17, 23, 61],
    [3, 17, 23, 67],
    [3, 17, 23, 71],
    [3, 17, 23, 73],
    [3, 17, 23, 79],
    [3, 17, 23, 83],
    [3, 17, 23, 89]]

theorem k5PrefixGroup0024_support_covered :
    k5PrefixGroup0024.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0024MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0024_passes :
    k5PrefixGroup0024.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0024_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0024_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0024_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0024_mask_primes_pass :
    k5PrefixGroup0024MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  simp only [k5PrefixGroup0024MaskPrimes, List.all_append]
  rw [k5PrefixGroup0024_mask_group0000_passes]
  rw [k5PrefixGroup0024_mask_group0001_passes]
  rw [k5PrefixGroup0024_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0024_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0024) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0024NormalLookup,
    k5PrefixGroup0024TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0024_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0024_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0024MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0024_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0024_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
