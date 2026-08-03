import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0120NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0120TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0120MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0120 : List (List ℕ) :=
  [[29, 73, 101],
    [29, 73, 103],
    [29, 73, 107],
    [29, 73, 109],
    [29, 73, 113],
    [29, 73, 127],
    [29, 73, 131],
    [29, 79, 83],
    [29, 79, 89],
    [29, 79, 97],
    [29, 79, 101],
    [29, 79, 103],
    [29, 79, 107],
    [29, 79, 109],
    [29, 79, 113],
    [29, 79, 127],
    [29, 83, 89],
    [29, 83, 97],
    [29, 83, 101],
    [29, 83, 103],
    [29, 83, 107],
    [29, 83, 109],
    [29, 83, 113],
    [29, 89, 97],
    [29, 89, 101],
    [29, 89, 103],
    [29, 89, 107],
    [29, 89, 109],
    [29, 89, 113],
    [29, 97, 101],
    [29, 97, 103],
    [29, 97, 107],
    [29, 97, 109],
    [29, 101, 103],
    [29, 101, 107],
    [29, 101, 109],
    [29, 103, 107],
    [29, 103, 109],
    [29, 107, 109],
    [31, 37, 41],
    [31, 37, 43],
    [31, 37, 47],
    [31, 37, 53],
    [31, 37, 59],
    [31, 37, 61],
    [31, 37, 67],
    [31, 37, 71],
    [31, 37, 73],
    [31, 37, 79],
    [31, 37, 83],
    [31, 37, 89],
    [31, 37, 97],
    [31, 37, 101],
    [31, 37, 103],
    [31, 37, 107],
    [31, 37, 109],
    [31, 37, 113],
    [31, 37, 127],
    [31, 37, 131],
    [31, 37, 137],
    [31, 37, 139],
    [31, 37, 149],
    [31, 37, 151],
    [31, 37, 157]]

theorem k4PrefixGroup0120_support_covered :
    k4PrefixGroup0120.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0120MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0120_passes :
    k4PrefixGroup0120.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0120NormalLookup
        k4PrefixGroup0120TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0120_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0120NormalLookup
        k4PrefixGroup0120TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0120NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0120TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0120_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0120NormalLookup
        k4PrefixGroup0120TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0120NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0120TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0120_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0120NormalLookup
        k4PrefixGroup0120TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0120NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0120TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0120_mask_primes_pass :
    k4PrefixGroup0120MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0120NormalLookup
        k4PrefixGroup0120TwistLookup) = true := by
  simp only [k4PrefixGroup0120MaskPrimes, List.all_append]
  rw [k4PrefixGroup0120_mask_group0000_passes]
  rw [k4PrefixGroup0120_mask_group0001_passes]
  rw [k4PrefixGroup0120_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0120_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0120) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0120NormalLookup,
    k4PrefixGroup0120TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0120_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0120_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0120MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0120_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0120_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
