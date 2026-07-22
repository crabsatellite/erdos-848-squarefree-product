import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0127NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0127TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0127MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0127 : List (List ℕ) :=
  [[41, 47, 71],
    [41, 47, 73],
    [41, 47, 79],
    [41, 47, 83],
    [41, 47, 89],
    [41, 47, 97],
    [41, 47, 101],
    [41, 47, 103],
    [41, 47, 107],
    [41, 47, 109],
    [41, 47, 113],
    [41, 47, 127],
    [41, 47, 131],
    [41, 47, 137],
    [41, 47, 139],
    [41, 53, 59],
    [41, 53, 61],
    [41, 53, 67],
    [41, 53, 71],
    [41, 53, 73],
    [41, 53, 79],
    [41, 53, 83],
    [41, 53, 89],
    [41, 53, 97],
    [41, 53, 101],
    [41, 53, 103],
    [41, 53, 107],
    [41, 53, 109],
    [41, 53, 113],
    [41, 53, 127],
    [41, 53, 131],
    [41, 59, 61],
    [41, 59, 67],
    [41, 59, 71],
    [41, 59, 73],
    [41, 59, 79],
    [41, 59, 83],
    [41, 59, 89],
    [41, 59, 97],
    [41, 59, 101],
    [41, 59, 103],
    [41, 59, 107],
    [41, 59, 109],
    [41, 59, 113],
    [41, 61, 67],
    [41, 61, 71],
    [41, 61, 73],
    [41, 61, 79],
    [41, 61, 83],
    [41, 61, 89],
    [41, 61, 97],
    [41, 61, 101],
    [41, 61, 103],
    [41, 61, 107],
    [41, 61, 109],
    [41, 61, 113],
    [41, 67, 71],
    [41, 67, 73],
    [41, 67, 79],
    [41, 67, 83],
    [41, 67, 89],
    [41, 67, 97],
    [41, 67, 101],
    [41, 67, 103]]

theorem k4PrefixGroup0127_support_covered :
    k4PrefixGroup0127.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0127MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0127_passes :
    k4PrefixGroup0127.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0127NormalLookup
        k4PrefixGroup0127TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0127_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0127NormalLookup
        k4PrefixGroup0127TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0127NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0127TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0127_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0127NormalLookup
        k4PrefixGroup0127TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0127NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0127TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0127_mask_primes_pass :
    k4PrefixGroup0127MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0127NormalLookup
        k4PrefixGroup0127TwistLookup) = true := by
  simp only [k4PrefixGroup0127MaskPrimes, List.all_append]
  rw [k4PrefixGroup0127_mask_group0000_passes]
  rw [k4PrefixGroup0127_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0127_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0127) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0127NormalLookup,
    k4PrefixGroup0127TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0127_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0127_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0127MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0127_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0127_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
