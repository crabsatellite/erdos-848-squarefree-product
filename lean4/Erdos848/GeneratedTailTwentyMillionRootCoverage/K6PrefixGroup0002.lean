import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0002NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k6PrefixGroup0002TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k6PrefixGroup0002MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k6PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 13, 19, 43],
    [3, 7, 13, 19, 47],
    [3, 7, 13, 19, 53],
    [3, 7, 13, 19, 59],
    [3, 7, 13, 19, 61],
    [3, 7, 13, 19, 67],
    [3, 7, 13, 19, 71],
    [3, 7, 13, 19, 73],
    [3, 7, 13, 19, 79],
    [3, 7, 13, 19, 83],
    [3, 7, 13, 23, 29],
    [3, 7, 13, 23, 31],
    [3, 7, 13, 23, 37],
    [3, 7, 13, 23, 41],
    [3, 7, 13, 23, 43],
    [3, 7, 13, 23, 47],
    [3, 7, 13, 23, 53],
    [3, 7, 13, 23, 59],
    [3, 7, 13, 23, 61],
    [3, 7, 13, 23, 67],
    [3, 7, 13, 23, 71],
    [3, 7, 13, 23, 73],
    [3, 7, 13, 29, 31],
    [3, 7, 13, 29, 37],
    [3, 7, 13, 29, 41],
    [3, 7, 13, 29, 43],
    [3, 7, 13, 29, 47],
    [3, 7, 13, 29, 53],
    [3, 7, 13, 29, 59],
    [3, 7, 13, 29, 61],
    [3, 7, 13, 29, 67],
    [3, 7, 13, 31, 37],
    [3, 7, 13, 31, 41],
    [3, 7, 13, 31, 43],
    [3, 7, 13, 31, 47],
    [3, 7, 13, 31, 53],
    [3, 7, 13, 31, 59],
    [3, 7, 13, 31, 61],
    [3, 7, 13, 37, 41],
    [3, 7, 13, 37, 43],
    [3, 7, 13, 37, 47],
    [3, 7, 13, 37, 53],
    [3, 7, 13, 37, 59],
    [3, 7, 13, 41, 43],
    [3, 7, 13, 41, 47],
    [3, 7, 13, 41, 53],
    [3, 7, 13, 43, 47],
    [3, 7, 13, 43, 53],
    [3, 7, 17, 19, 23],
    [3, 7, 17, 19, 29],
    [3, 7, 17, 19, 31],
    [3, 7, 17, 19, 37],
    [3, 7, 17, 19, 41],
    [3, 7, 17, 19, 43],
    [3, 7, 17, 19, 47],
    [3, 7, 17, 19, 53],
    [3, 7, 17, 19, 59],
    [3, 7, 17, 19, 61],
    [3, 7, 17, 19, 67],
    [3, 7, 17, 19, 71],
    [3, 7, 17, 19, 73],
    [3, 7, 17, 23, 29],
    [3, 7, 17, 23, 31],
    [3, 7, 17, 23, 37]]

theorem k6PrefixGroup0002_support_covered :
    k6PrefixGroup0002.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0002MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0002_passes :
    k6PrefixGroup0002.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0002_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0002_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k6PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0002_mask_primes_pass :
    k6PrefixGroup0002MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup) = true := by
  simp only [k6PrefixGroup0002MaskPrimes, List.all_append]
  rw [k6PrefixGroup0002_mask_group0000_passes]
  rw [k6PrefixGroup0002_mask_group0001_passes]
  rfl

theorem k6PrefixGroup0002_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0002) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0002NormalLookup,
    k6PrefixGroup0002TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0002_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0002_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0002MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0002_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0002_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
