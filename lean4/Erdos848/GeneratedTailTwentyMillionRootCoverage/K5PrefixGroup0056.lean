import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0056NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0056TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0056MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0056 : List (List ℕ) :=
  [[13, 19, 31, 37],
    [13, 19, 31, 41],
    [13, 19, 31, 43],
    [13, 19, 31, 47],
    [13, 19, 31, 53],
    [13, 19, 31, 59],
    [13, 19, 31, 61],
    [13, 19, 31, 67],
    [13, 19, 31, 71],
    [13, 19, 37, 41],
    [13, 19, 37, 43],
    [13, 19, 37, 47],
    [13, 19, 37, 53],
    [13, 19, 37, 59],
    [13, 19, 37, 61],
    [13, 19, 41, 43],
    [13, 19, 41, 47],
    [13, 19, 41, 53],
    [13, 19, 41, 59],
    [13, 19, 43, 47],
    [13, 19, 43, 53],
    [13, 19, 43, 59],
    [13, 19, 47, 53],
    [13, 23, 29, 31],
    [13, 23, 29, 37],
    [13, 23, 29, 41],
    [13, 23, 29, 43],
    [13, 23, 29, 47],
    [13, 23, 29, 53],
    [13, 23, 29, 59],
    [13, 23, 29, 61],
    [13, 23, 31, 37],
    [13, 23, 31, 41],
    [13, 23, 31, 43],
    [13, 23, 31, 47],
    [13, 23, 31, 53],
    [13, 23, 31, 59],
    [13, 23, 31, 61],
    [13, 23, 37, 41],
    [13, 23, 37, 43],
    [13, 23, 37, 47],
    [13, 23, 37, 53],
    [13, 23, 37, 59],
    [13, 23, 41, 43],
    [13, 23, 41, 47],
    [13, 23, 41, 53],
    [13, 23, 43, 47],
    [13, 29, 31, 37],
    [13, 29, 31, 41],
    [13, 29, 31, 43],
    [13, 29, 31, 47],
    [13, 29, 31, 53],
    [13, 29, 37, 41],
    [13, 29, 37, 43],
    [13, 29, 37, 47],
    [13, 29, 41, 43],
    [13, 29, 41, 47],
    [13, 31, 37, 41],
    [13, 31, 37, 43],
    [13, 31, 37, 47],
    [13, 31, 41, 43],
    [13, 37, 41, 43],
    [17, 19, 23, 29],
    [17, 19, 23, 31]]

theorem k5PrefixGroup0056_support_covered :
    k5PrefixGroup0056.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0056MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0056_passes :
    k5PrefixGroup0056.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0056NormalLookup
        k5PrefixGroup0056TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0056_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0056NormalLookup
        k5PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0056TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0056_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0056NormalLookup
        k5PrefixGroup0056TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0056NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0056TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0056_mask_primes_pass :
    k5PrefixGroup0056MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0056NormalLookup
        k5PrefixGroup0056TwistLookup) = true := by
  simp only [k5PrefixGroup0056MaskPrimes, List.all_append]
  rw [k5PrefixGroup0056_mask_group0000_passes]
  rw [k5PrefixGroup0056_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0056_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0056) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0056NormalLookup,
    k5PrefixGroup0056TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0056_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0056_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0056MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0056_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0056_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
