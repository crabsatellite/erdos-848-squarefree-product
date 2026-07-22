import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0029NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0029TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0029MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0029 : List (List ℕ) :=
  [[3, 19, 29, 113],
    [3, 19, 29, 127],
    [3, 19, 29, 131],
    [3, 19, 29, 137],
    [3, 19, 29, 139],
    [3, 19, 29, 149],
    [3, 19, 29, 151],
    [3, 19, 31, 37],
    [3, 19, 31, 41],
    [3, 19, 31, 43],
    [3, 19, 31, 47],
    [3, 19, 31, 53],
    [3, 19, 31, 59],
    [3, 19, 31, 61],
    [3, 19, 31, 67],
    [3, 19, 31, 71],
    [3, 19, 31, 73],
    [3, 19, 31, 79],
    [3, 19, 31, 83],
    [3, 19, 31, 89],
    [3, 19, 31, 97],
    [3, 19, 31, 101],
    [3, 19, 31, 103],
    [3, 19, 31, 107],
    [3, 19, 31, 109],
    [3, 19, 31, 113],
    [3, 19, 31, 127],
    [3, 19, 31, 131],
    [3, 19, 31, 137],
    [3, 19, 31, 139],
    [3, 19, 31, 149],
    [3, 19, 37, 41],
    [3, 19, 37, 43],
    [3, 19, 37, 47],
    [3, 19, 37, 53],
    [3, 19, 37, 59],
    [3, 19, 37, 61],
    [3, 19, 37, 67],
    [3, 19, 37, 71],
    [3, 19, 37, 73],
    [3, 19, 37, 79],
    [3, 19, 37, 83],
    [3, 19, 37, 89],
    [3, 19, 37, 97],
    [3, 19, 37, 101],
    [3, 19, 37, 103],
    [3, 19, 37, 107],
    [3, 19, 37, 109],
    [3, 19, 37, 113],
    [3, 19, 37, 127],
    [3, 19, 37, 131],
    [3, 19, 41, 43],
    [3, 19, 41, 47],
    [3, 19, 41, 53],
    [3, 19, 41, 59],
    [3, 19, 41, 61],
    [3, 19, 41, 67],
    [3, 19, 41, 71],
    [3, 19, 41, 73],
    [3, 19, 41, 79],
    [3, 19, 41, 83],
    [3, 19, 41, 89],
    [3, 19, 41, 97],
    [3, 19, 41, 101]]

theorem k5PrefixGroup0029_support_covered :
    k5PrefixGroup0029.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0029MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0029_passes :
    k5PrefixGroup0029.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0029_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0029NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0029TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0029_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0029NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0029TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0029_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0029NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0029TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0029_mask_primes_pass :
    k5PrefixGroup0029MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  simp only [k5PrefixGroup0029MaskPrimes, List.all_append]
  rw [k5PrefixGroup0029_mask_group0000_passes]
  rw [k5PrefixGroup0029_mask_group0001_passes]
  rw [k5PrefixGroup0029_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0029_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0029) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0029NormalLookup,
    k5PrefixGroup0029TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0029_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0029_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0029MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0029_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0029_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
