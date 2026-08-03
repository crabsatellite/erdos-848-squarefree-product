import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0052NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0052TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0052MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0052 : List (List ℕ) :=
  [[11, 17, 23, 59],
    [11, 17, 23, 61],
    [11, 17, 23, 67],
    [11, 17, 23, 71],
    [11, 17, 23, 73],
    [11, 17, 23, 79],
    [11, 17, 23, 83],
    [11, 17, 23, 89],
    [11, 17, 29, 31],
    [11, 17, 29, 37],
    [11, 17, 29, 41],
    [11, 17, 29, 43],
    [11, 17, 29, 47],
    [11, 17, 29, 53],
    [11, 17, 29, 59],
    [11, 17, 29, 61],
    [11, 17, 29, 67],
    [11, 17, 29, 71],
    [11, 17, 29, 73],
    [11, 17, 29, 79],
    [11, 17, 31, 37],
    [11, 17, 31, 41],
    [11, 17, 31, 43],
    [11, 17, 31, 47],
    [11, 17, 31, 53],
    [11, 17, 31, 59],
    [11, 17, 31, 61],
    [11, 17, 31, 67],
    [11, 17, 31, 71],
    [11, 17, 31, 73],
    [11, 17, 31, 79],
    [11, 17, 37, 41],
    [11, 17, 37, 43],
    [11, 17, 37, 47],
    [11, 17, 37, 53],
    [11, 17, 37, 59],
    [11, 17, 37, 61],
    [11, 17, 37, 67],
    [11, 17, 37, 71],
    [11, 17, 37, 73],
    [11, 17, 41, 43],
    [11, 17, 41, 47],
    [11, 17, 41, 53],
    [11, 17, 41, 59],
    [11, 17, 41, 61],
    [11, 17, 41, 67],
    [11, 17, 41, 71],
    [11, 17, 43, 47],
    [11, 17, 43, 53],
    [11, 17, 43, 59],
    [11, 17, 43, 61],
    [11, 17, 43, 67],
    [11, 17, 47, 53],
    [11, 17, 47, 59],
    [11, 17, 47, 61],
    [11, 17, 53, 59],
    [11, 19, 23, 29],
    [11, 19, 23, 31],
    [11, 19, 23, 37],
    [11, 19, 23, 41],
    [11, 19, 23, 43],
    [11, 19, 23, 47],
    [11, 19, 23, 53],
    [11, 19, 23, 59]]

theorem k5PrefixGroup0052_support_covered :
    k5PrefixGroup0052.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0052MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0052_passes :
    k5PrefixGroup0052.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0052NormalLookup
        k5PrefixGroup0052TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0052_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0052NormalLookup
        k5PrefixGroup0052TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0052NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0052TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0052_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0052NormalLookup
        k5PrefixGroup0052TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0052NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0052TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0052_mask_primes_pass :
    k5PrefixGroup0052MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0052NormalLookup
        k5PrefixGroup0052TwistLookup) = true := by
  simp only [k5PrefixGroup0052MaskPrimes, List.all_append]
  rw [k5PrefixGroup0052_mask_group0000_passes]
  rw [k5PrefixGroup0052_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0052_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0052) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0052NormalLookup,
    k5PrefixGroup0052TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0052_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0052_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0052MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0052_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0052_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
