import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0051NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0051TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0051MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0051 : List (List ℕ) :=
  [[11, 13, 37, 41],
    [11, 13, 37, 43],
    [11, 13, 37, 47],
    [11, 13, 37, 53],
    [11, 13, 37, 59],
    [11, 13, 37, 61],
    [11, 13, 37, 67],
    [11, 13, 37, 71],
    [11, 13, 37, 73],
    [11, 13, 37, 79],
    [11, 13, 37, 83],
    [11, 13, 41, 43],
    [11, 13, 41, 47],
    [11, 13, 41, 53],
    [11, 13, 41, 59],
    [11, 13, 41, 61],
    [11, 13, 41, 67],
    [11, 13, 41, 71],
    [11, 13, 41, 73],
    [11, 13, 41, 79],
    [11, 13, 43, 47],
    [11, 13, 43, 53],
    [11, 13, 43, 59],
    [11, 13, 43, 61],
    [11, 13, 43, 67],
    [11, 13, 43, 71],
    [11, 13, 43, 73],
    [11, 13, 47, 53],
    [11, 13, 47, 59],
    [11, 13, 47, 61],
    [11, 13, 47, 67],
    [11, 13, 47, 71],
    [11, 13, 47, 73],
    [11, 13, 53, 59],
    [11, 13, 53, 61],
    [11, 13, 53, 67],
    [11, 13, 53, 71],
    [11, 13, 59, 61],
    [11, 17, 19, 23],
    [11, 17, 19, 29],
    [11, 17, 19, 31],
    [11, 17, 19, 37],
    [11, 17, 19, 41],
    [11, 17, 19, 43],
    [11, 17, 19, 47],
    [11, 17, 19, 53],
    [11, 17, 19, 59],
    [11, 17, 19, 61],
    [11, 17, 19, 67],
    [11, 17, 19, 71],
    [11, 17, 19, 73],
    [11, 17, 19, 79],
    [11, 17, 19, 83],
    [11, 17, 19, 89],
    [11, 17, 19, 97],
    [11, 17, 19, 101],
    [11, 17, 19, 103],
    [11, 17, 23, 29],
    [11, 17, 23, 31],
    [11, 17, 23, 37],
    [11, 17, 23, 41],
    [11, 17, 23, 43],
    [11, 17, 23, 47],
    [11, 17, 23, 53]]

theorem k5PrefixGroup0051_support_covered :
    k5PrefixGroup0051.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0051MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0051_passes :
    k5PrefixGroup0051.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0051NormalLookup
        k5PrefixGroup0051TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0051_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0051NormalLookup
        k5PrefixGroup0051TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0051NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0051TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0051_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0051NormalLookup
        k5PrefixGroup0051TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0051NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0051TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0051_mask_primes_pass :
    k5PrefixGroup0051MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0051NormalLookup
        k5PrefixGroup0051TwistLookup) = true := by
  simp only [k5PrefixGroup0051MaskPrimes, List.all_append]
  rw [k5PrefixGroup0051_mask_group0000_passes]
  rw [k5PrefixGroup0051_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0051_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0051) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0051NormalLookup,
    k5PrefixGroup0051TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0051_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0051_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0051MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0051_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0051_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
