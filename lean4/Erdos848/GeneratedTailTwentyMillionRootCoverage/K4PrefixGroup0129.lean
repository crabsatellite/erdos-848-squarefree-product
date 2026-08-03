import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0129NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0129TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0129MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0129 : List (List ℕ) :=
  [[43, 53, 109],
    [43, 53, 113],
    [43, 53, 127],
    [43, 59, 61],
    [43, 59, 67],
    [43, 59, 71],
    [43, 59, 73],
    [43, 59, 79],
    [43, 59, 83],
    [43, 59, 89],
    [43, 59, 97],
    [43, 59, 101],
    [43, 59, 103],
    [43, 59, 107],
    [43, 59, 109],
    [43, 59, 113],
    [43, 61, 67],
    [43, 61, 71],
    [43, 61, 73],
    [43, 61, 79],
    [43, 61, 83],
    [43, 61, 89],
    [43, 61, 97],
    [43, 61, 101],
    [43, 61, 103],
    [43, 61, 107],
    [43, 61, 109],
    [43, 61, 113],
    [43, 67, 71],
    [43, 67, 73],
    [43, 67, 79],
    [43, 67, 83],
    [43, 67, 89],
    [43, 67, 97],
    [43, 67, 101],
    [43, 67, 103],
    [43, 67, 107],
    [43, 67, 109],
    [43, 71, 73],
    [43, 71, 79],
    [43, 71, 83],
    [43, 71, 89],
    [43, 71, 97],
    [43, 71, 101],
    [43, 71, 103],
    [43, 71, 107],
    [43, 71, 109],
    [43, 73, 79],
    [43, 73, 83],
    [43, 73, 89],
    [43, 73, 97],
    [43, 73, 101],
    [43, 73, 103],
    [43, 73, 107],
    [43, 73, 109],
    [43, 79, 83],
    [43, 79, 89],
    [43, 79, 97],
    [43, 79, 101],
    [43, 79, 103],
    [43, 79, 107],
    [43, 83, 89],
    [43, 83, 97],
    [43, 83, 101]]

theorem k4PrefixGroup0129_support_covered :
    k4PrefixGroup0129.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0129MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0129_passes :
    k4PrefixGroup0129.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0129NormalLookup
        k4PrefixGroup0129TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0129_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0129NormalLookup
        k4PrefixGroup0129TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0129NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0129TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0129_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0129NormalLookup
        k4PrefixGroup0129TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0129NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0129TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0129_mask_primes_pass :
    k4PrefixGroup0129MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0129NormalLookup
        k4PrefixGroup0129TwistLookup) = true := by
  simp only [k4PrefixGroup0129MaskPrimes, List.all_append]
  rw [k4PrefixGroup0129_mask_group0000_passes]
  rw [k4PrefixGroup0129_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0129_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0129) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0129NormalLookup,
    k4PrefixGroup0129TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0129_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0129_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0129MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0129_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0129_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
