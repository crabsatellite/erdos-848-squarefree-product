import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0055NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0055TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0055MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0055 : List (List ℕ) :=
  [[13, 17, 23, 79],
    [13, 17, 23, 83],
    [13, 17, 29, 31],
    [13, 17, 29, 37],
    [13, 17, 29, 41],
    [13, 17, 29, 43],
    [13, 17, 29, 47],
    [13, 17, 29, 53],
    [13, 17, 29, 59],
    [13, 17, 29, 61],
    [13, 17, 29, 67],
    [13, 17, 29, 71],
    [13, 17, 29, 73],
    [13, 17, 31, 37],
    [13, 17, 31, 41],
    [13, 17, 31, 43],
    [13, 17, 31, 47],
    [13, 17, 31, 53],
    [13, 17, 31, 59],
    [13, 17, 31, 61],
    [13, 17, 31, 67],
    [13, 17, 31, 71],
    [13, 17, 31, 73],
    [13, 17, 37, 41],
    [13, 17, 37, 43],
    [13, 17, 37, 47],
    [13, 17, 37, 53],
    [13, 17, 37, 59],
    [13, 17, 37, 61],
    [13, 17, 37, 67],
    [13, 17, 41, 43],
    [13, 17, 41, 47],
    [13, 17, 41, 53],
    [13, 17, 41, 59],
    [13, 17, 41, 61],
    [13, 17, 43, 47],
    [13, 17, 43, 53],
    [13, 17, 43, 59],
    [13, 17, 43, 61],
    [13, 17, 47, 53],
    [13, 17, 47, 59],
    [13, 19, 23, 29],
    [13, 19, 23, 31],
    [13, 19, 23, 37],
    [13, 19, 23, 41],
    [13, 19, 23, 43],
    [13, 19, 23, 47],
    [13, 19, 23, 53],
    [13, 19, 23, 59],
    [13, 19, 23, 61],
    [13, 19, 23, 67],
    [13, 19, 23, 71],
    [13, 19, 23, 73],
    [13, 19, 23, 79],
    [13, 19, 29, 31],
    [13, 19, 29, 37],
    [13, 19, 29, 41],
    [13, 19, 29, 43],
    [13, 19, 29, 47],
    [13, 19, 29, 53],
    [13, 19, 29, 59],
    [13, 19, 29, 61],
    [13, 19, 29, 67],
    [13, 19, 29, 71]]

theorem k5PrefixGroup0055_support_covered :
    k5PrefixGroup0055.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0055MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0055_passes :
    k5PrefixGroup0055.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0055NormalLookup
        k5PrefixGroup0055TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0055_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0055NormalLookup
        k5PrefixGroup0055TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0055NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0055TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0055_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0055NormalLookup
        k5PrefixGroup0055TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0055NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0055TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0055_mask_primes_pass :
    k5PrefixGroup0055MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0055NormalLookup
        k5PrefixGroup0055TwistLookup) = true := by
  simp only [k5PrefixGroup0055MaskPrimes, List.all_append]
  rw [k5PrefixGroup0055_mask_group0000_passes]
  rw [k5PrefixGroup0055_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0055_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0055) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0055NormalLookup,
    k5PrefixGroup0055TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0055_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0055_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0055MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0055_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0055_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
