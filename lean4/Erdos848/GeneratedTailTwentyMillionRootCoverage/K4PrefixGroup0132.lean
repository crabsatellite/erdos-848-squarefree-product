import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0132NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0132TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0132MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0132 : List (List ℕ) :=
  [[59, 67, 89],
    [59, 67, 97],
    [59, 71, 73],
    [59, 71, 79],
    [59, 71, 83],
    [59, 71, 89],
    [59, 73, 79],
    [59, 73, 83],
    [59, 73, 89],
    [59, 79, 83],
    [61, 67, 71],
    [61, 67, 73],
    [61, 67, 79],
    [61, 67, 83],
    [61, 67, 89],
    [61, 71, 73],
    [61, 71, 79],
    [61, 71, 83],
    [61, 71, 89],
    [61, 73, 79],
    [61, 73, 83],
    [61, 73, 89],
    [61, 79, 83],
    [67, 71, 73],
    [67, 71, 79],
    [67, 71, 83],
    [67, 73, 79],
    [67, 73, 83],
    [67, 79, 83],
    [71, 73, 79],
    [71, 73, 83]]

theorem k4PrefixGroup0132_support_covered :
    k4PrefixGroup0132.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0132MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0132_passes :
    k4PrefixGroup0132.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0132NormalLookup
        k4PrefixGroup0132TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0132_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0132NormalLookup
        k4PrefixGroup0132TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0132NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0132TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0132_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0132NormalLookup
        k4PrefixGroup0132TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0132NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0132TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0132_mask_primes_pass :
    k4PrefixGroup0132MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0132NormalLookup
        k4PrefixGroup0132TwistLookup) = true := by
  simp only [k4PrefixGroup0132MaskPrimes, List.all_append]
  rw [k4PrefixGroup0132_mask_group0000_passes]
  rw [k4PrefixGroup0132_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0132_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0132) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0132NormalLookup,
    k4PrefixGroup0132TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0132_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0132_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0132MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0132_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0132_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
