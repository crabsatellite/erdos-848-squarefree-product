import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0053NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0053TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0053MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0053 : List (List ℕ) :=
  [[11, 19, 23, 61],
    [11, 19, 23, 67],
    [11, 19, 23, 71],
    [11, 19, 23, 73],
    [11, 19, 23, 79],
    [11, 19, 23, 83],
    [11, 19, 29, 31],
    [11, 19, 29, 37],
    [11, 19, 29, 41],
    [11, 19, 29, 43],
    [11, 19, 29, 47],
    [11, 19, 29, 53],
    [11, 19, 29, 59],
    [11, 19, 29, 61],
    [11, 19, 29, 67],
    [11, 19, 29, 71],
    [11, 19, 29, 73],
    [11, 19, 29, 79],
    [11, 19, 31, 37],
    [11, 19, 31, 41],
    [11, 19, 31, 43],
    [11, 19, 31, 47],
    [11, 19, 31, 53],
    [11, 19, 31, 59],
    [11, 19, 31, 61],
    [11, 19, 31, 67],
    [11, 19, 31, 71],
    [11, 19, 31, 73],
    [11, 19, 37, 41],
    [11, 19, 37, 43],
    [11, 19, 37, 47],
    [11, 19, 37, 53],
    [11, 19, 37, 59],
    [11, 19, 37, 61],
    [11, 19, 37, 67],
    [11, 19, 41, 43],
    [11, 19, 41, 47],
    [11, 19, 41, 53],
    [11, 19, 41, 59],
    [11, 19, 41, 61],
    [11, 19, 43, 47],
    [11, 19, 43, 53],
    [11, 19, 43, 59],
    [11, 19, 43, 61],
    [11, 19, 47, 53],
    [11, 19, 47, 59],
    [11, 19, 53, 59],
    [11, 23, 29, 31],
    [11, 23, 29, 37],
    [11, 23, 29, 41],
    [11, 23, 29, 43],
    [11, 23, 29, 47],
    [11, 23, 29, 53],
    [11, 23, 29, 59],
    [11, 23, 29, 61],
    [11, 23, 29, 67],
    [11, 23, 29, 71],
    [11, 23, 31, 37],
    [11, 23, 31, 41],
    [11, 23, 31, 43],
    [11, 23, 31, 47],
    [11, 23, 31, 53],
    [11, 23, 31, 59],
    [11, 23, 31, 61]]

theorem k5PrefixGroup0053_support_covered :
    k5PrefixGroup0053.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0053MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0053_passes :
    k5PrefixGroup0053.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0053NormalLookup
        k5PrefixGroup0053TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0053_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0053NormalLookup
        k5PrefixGroup0053TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0053NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0053TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0053_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0053NormalLookup
        k5PrefixGroup0053TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0053NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0053TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0053_mask_primes_pass :
    k5PrefixGroup0053MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0053NormalLookup
        k5PrefixGroup0053TwistLookup) = true := by
  simp only [k5PrefixGroup0053MaskPrimes, List.all_append]
  rw [k5PrefixGroup0053_mask_group0000_passes]
  rw [k5PrefixGroup0053_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0053_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0053) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0053NormalLookup,
    k5PrefixGroup0053TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0053_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0053_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0053MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0053_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0053_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
