import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0001NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k6PrefixGroup0001TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k6PrefixGroup0001MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k6PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 11, 23, 59],
    [3, 7, 11, 23, 61],
    [3, 7, 11, 23, 67],
    [3, 7, 11, 23, 71],
    [3, 7, 11, 23, 73],
    [3, 7, 11, 23, 79],
    [3, 7, 11, 23, 83],
    [3, 7, 11, 29, 31],
    [3, 7, 11, 29, 37],
    [3, 7, 11, 29, 41],
    [3, 7, 11, 29, 43],
    [3, 7, 11, 29, 47],
    [3, 7, 11, 29, 53],
    [3, 7, 11, 29, 59],
    [3, 7, 11, 29, 61],
    [3, 7, 11, 29, 67],
    [3, 7, 11, 29, 71],
    [3, 7, 11, 29, 73],
    [3, 7, 11, 31, 37],
    [3, 7, 11, 31, 41],
    [3, 7, 11, 31, 43],
    [3, 7, 11, 31, 47],
    [3, 7, 11, 31, 53],
    [3, 7, 11, 31, 59],
    [3, 7, 11, 31, 61],
    [3, 7, 11, 31, 67],
    [3, 7, 11, 31, 71],
    [3, 7, 11, 37, 41],
    [3, 7, 11, 37, 43],
    [3, 7, 11, 37, 47],
    [3, 7, 11, 37, 53],
    [3, 7, 11, 37, 59],
    [3, 7, 11, 37, 61],
    [3, 7, 11, 41, 43],
    [3, 7, 11, 41, 47],
    [3, 7, 11, 41, 53],
    [3, 7, 11, 41, 59],
    [3, 7, 11, 41, 61],
    [3, 7, 11, 43, 47],
    [3, 7, 11, 43, 53],
    [3, 7, 11, 43, 59],
    [3, 7, 11, 47, 53],
    [3, 7, 11, 47, 59],
    [3, 7, 13, 17, 19],
    [3, 7, 13, 17, 23],
    [3, 7, 13, 17, 29],
    [3, 7, 13, 17, 31],
    [3, 7, 13, 17, 37],
    [3, 7, 13, 17, 41],
    [3, 7, 13, 17, 43],
    [3, 7, 13, 17, 47],
    [3, 7, 13, 17, 53],
    [3, 7, 13, 17, 59],
    [3, 7, 13, 17, 61],
    [3, 7, 13, 17, 67],
    [3, 7, 13, 17, 71],
    [3, 7, 13, 17, 73],
    [3, 7, 13, 17, 79],
    [3, 7, 13, 17, 83],
    [3, 7, 13, 19, 23],
    [3, 7, 13, 19, 29],
    [3, 7, 13, 19, 31],
    [3, 7, 13, 19, 37],
    [3, 7, 13, 19, 41]]

theorem k6PrefixGroup0001_support_covered :
    k6PrefixGroup0001.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0001MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0001_passes :
    k6PrefixGroup0001.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0001_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0001NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0001TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0001_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k6PrefixGroup0001NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0001TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k6PrefixGroup0001_mask_primes_pass :
    k6PrefixGroup0001MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup) = true := by
  simp only [k6PrefixGroup0001MaskPrimes, List.all_append]
  rw [k6PrefixGroup0001_mask_group0000_passes]
  rw [k6PrefixGroup0001_mask_group0001_passes]
  rfl

theorem k6PrefixGroup0001_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0001) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0001NormalLookup,
    k6PrefixGroup0001TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0001_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0001_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0001MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0001_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0001_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
