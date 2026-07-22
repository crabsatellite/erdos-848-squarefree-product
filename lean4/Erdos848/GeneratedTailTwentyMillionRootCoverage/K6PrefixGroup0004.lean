import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0004NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k6PrefixGroup0004TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k6PrefixGroup0004MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k6PrefixGroup0004 : List (List ℕ) :=
  [[3, 7, 29, 37, 41],
    [3, 11, 13, 17, 19],
    [3, 11, 13, 17, 23],
    [3, 11, 13, 17, 29],
    [3, 11, 13, 17, 31],
    [3, 11, 13, 17, 37],
    [3, 11, 13, 17, 41],
    [3, 11, 13, 17, 43],
    [3, 11, 13, 17, 47],
    [3, 11, 13, 17, 53],
    [3, 11, 13, 17, 59],
    [3, 11, 13, 17, 61],
    [3, 11, 13, 17, 67],
    [3, 11, 13, 17, 71],
    [3, 11, 13, 19, 23],
    [3, 11, 13, 19, 29],
    [3, 11, 13, 19, 31],
    [3, 11, 13, 19, 37],
    [3, 11, 13, 19, 41],
    [3, 11, 13, 19, 43],
    [3, 11, 13, 19, 47],
    [3, 11, 13, 19, 53],
    [3, 11, 13, 19, 59],
    [3, 11, 13, 19, 61],
    [3, 11, 13, 19, 67],
    [3, 11, 13, 23, 29],
    [3, 11, 13, 23, 31],
    [3, 11, 13, 23, 37],
    [3, 11, 13, 23, 41],
    [3, 11, 13, 23, 43],
    [3, 11, 13, 23, 47],
    [3, 11, 13, 23, 53],
    [3, 11, 13, 23, 59],
    [3, 11, 13, 29, 31],
    [3, 11, 13, 29, 37],
    [3, 11, 13, 29, 41],
    [3, 11, 13, 29, 43],
    [3, 11, 13, 29, 47],
    [3, 11, 13, 29, 53],
    [3, 11, 13, 31, 37],
    [3, 11, 13, 31, 41],
    [3, 11, 13, 31, 43],
    [3, 11, 13, 31, 47],
    [3, 11, 13, 37, 41],
    [3, 11, 13, 37, 43],
    [3, 11, 13, 37, 47],
    [3, 11, 13, 41, 43],
    [3, 11, 17, 19, 23],
    [3, 11, 17, 19, 29],
    [3, 11, 17, 19, 31],
    [3, 11, 17, 19, 37],
    [3, 11, 17, 19, 41],
    [3, 11, 17, 19, 43],
    [3, 11, 17, 19, 47],
    [3, 11, 17, 19, 53],
    [3, 11, 17, 19, 59],
    [3, 11, 17, 23, 29],
    [3, 11, 17, 23, 31],
    [3, 11, 17, 23, 37],
    [3, 11, 17, 23, 41],
    [3, 11, 17, 23, 43],
    [3, 11, 17, 23, 47],
    [3, 11, 17, 29, 31],
    [3, 11, 17, 29, 37]]

theorem k6PrefixGroup0004_support_covered :
    k6PrefixGroup0004.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0004MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0004_passes :
    k6PrefixGroup0004.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k6PrefixGroup0004NormalLookup
        k6PrefixGroup0004TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0004_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0004NormalLookup
        k6PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0004TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0004_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0004NormalLookup
        k6PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k6PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0004TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0004_mask_primes_pass :
    k6PrefixGroup0004MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0004NormalLookup
        k6PrefixGroup0004TwistLookup) = true := by
  simp only [k6PrefixGroup0004MaskPrimes, List.all_append]
  rw [k6PrefixGroup0004_mask_group0000_passes]
  rw [k6PrefixGroup0004_mask_group0001_passes]
  rfl

theorem k6PrefixGroup0004_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0004) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0004NormalLookup,
    k6PrefixGroup0004TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0004_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0004_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0004MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0004_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0004_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
