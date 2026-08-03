import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0035NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0035TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0035MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0035 : List (List ℕ) :=
  [[3, 29, 71, 73],
    [3, 31, 37, 41],
    [3, 31, 37, 43],
    [3, 31, 37, 47],
    [3, 31, 37, 53],
    [3, 31, 37, 59],
    [3, 31, 37, 61],
    [3, 31, 37, 67],
    [3, 31, 37, 71],
    [3, 31, 37, 73],
    [3, 31, 37, 79],
    [3, 31, 37, 83],
    [3, 31, 37, 89],
    [3, 31, 37, 97],
    [3, 31, 37, 101],
    [3, 31, 37, 103],
    [3, 31, 41, 43],
    [3, 31, 41, 47],
    [3, 31, 41, 53],
    [3, 31, 41, 59],
    [3, 31, 41, 61],
    [3, 31, 41, 67],
    [3, 31, 41, 71],
    [3, 31, 41, 73],
    [3, 31, 41, 79],
    [3, 31, 41, 83],
    [3, 31, 41, 89],
    [3, 31, 41, 97],
    [3, 31, 41, 101],
    [3, 31, 43, 47],
    [3, 31, 43, 53],
    [3, 31, 43, 59],
    [3, 31, 43, 61],
    [3, 31, 43, 67],
    [3, 31, 43, 71],
    [3, 31, 43, 73],
    [3, 31, 43, 79],
    [3, 31, 43, 83],
    [3, 31, 43, 89],
    [3, 31, 43, 97],
    [3, 31, 47, 53],
    [3, 31, 47, 59],
    [3, 31, 47, 61],
    [3, 31, 47, 67],
    [3, 31, 47, 71],
    [3, 31, 47, 73],
    [3, 31, 47, 79],
    [3, 31, 47, 83],
    [3, 31, 47, 89],
    [3, 31, 53, 59],
    [3, 31, 53, 61],
    [3, 31, 53, 67],
    [3, 31, 53, 71],
    [3, 31, 53, 73],
    [3, 31, 53, 79],
    [3, 31, 53, 83],
    [3, 31, 59, 61],
    [3, 31, 59, 67],
    [3, 31, 59, 71],
    [3, 31, 59, 73],
    [3, 31, 59, 79],
    [3, 31, 61, 67],
    [3, 31, 61, 71],
    [3, 31, 61, 73]]

theorem k5PrefixGroup0035_support_covered :
    k5PrefixGroup0035.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0035MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0035_passes :
    k5PrefixGroup0035.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0035NormalLookup
        k5PrefixGroup0035TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0035_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0035NormalLookup
        k5PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0035_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0035NormalLookup
        k5PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0035_mask_primes_pass :
    k5PrefixGroup0035MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0035NormalLookup
        k5PrefixGroup0035TwistLookup) = true := by
  simp only [k5PrefixGroup0035MaskPrimes, List.all_append]
  rw [k5PrefixGroup0035_mask_group0000_passes]
  rw [k5PrefixGroup0035_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0035_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0035) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0035NormalLookup,
    k5PrefixGroup0035TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0035_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0035_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0035MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0035_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0035_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
