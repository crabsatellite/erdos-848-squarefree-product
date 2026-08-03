import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0125NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0125TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0125MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0125 : List (List ℕ) :=
  [[37, 47, 103],
    [37, 47, 107],
    [37, 47, 109],
    [37, 47, 113],
    [37, 47, 127],
    [37, 47, 131],
    [37, 47, 137],
    [37, 47, 139],
    [37, 47, 149],
    [37, 53, 59],
    [37, 53, 61],
    [37, 53, 67],
    [37, 53, 71],
    [37, 53, 73],
    [37, 53, 79],
    [37, 53, 83],
    [37, 53, 89],
    [37, 53, 97],
    [37, 53, 101],
    [37, 53, 103],
    [37, 53, 107],
    [37, 53, 109],
    [37, 53, 113],
    [37, 53, 127],
    [37, 53, 131],
    [37, 53, 137],
    [37, 59, 61],
    [37, 59, 67],
    [37, 59, 71],
    [37, 59, 73],
    [37, 59, 79],
    [37, 59, 83],
    [37, 59, 89],
    [37, 59, 97],
    [37, 59, 101],
    [37, 59, 103],
    [37, 59, 107],
    [37, 59, 109],
    [37, 59, 113],
    [37, 59, 127],
    [37, 59, 131],
    [37, 61, 67],
    [37, 61, 71],
    [37, 61, 73],
    [37, 61, 79],
    [37, 61, 83],
    [37, 61, 89],
    [37, 61, 97],
    [37, 61, 101],
    [37, 61, 103],
    [37, 61, 107],
    [37, 61, 109],
    [37, 61, 113],
    [37, 61, 127],
    [37, 67, 71],
    [37, 67, 73],
    [37, 67, 79],
    [37, 67, 83],
    [37, 67, 89],
    [37, 67, 97],
    [37, 67, 101],
    [37, 67, 103],
    [37, 67, 107],
    [37, 67, 109]]

theorem k4PrefixGroup0125_support_covered :
    k4PrefixGroup0125.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0125MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0125_passes :
    k4PrefixGroup0125.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0125NormalLookup
        k4PrefixGroup0125TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0125_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0125NormalLookup
        k4PrefixGroup0125TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0125NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0125TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0125_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0125NormalLookup
        k4PrefixGroup0125TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0125NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0125TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0125_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0125NormalLookup
        k4PrefixGroup0125TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0125NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0125TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0125_mask_primes_pass :
    k4PrefixGroup0125MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0125NormalLookup
        k4PrefixGroup0125TwistLookup) = true := by
  simp only [k4PrefixGroup0125MaskPrimes, List.all_append]
  rw [k4PrefixGroup0125_mask_group0000_passes]
  rw [k4PrefixGroup0125_mask_group0001_passes]
  rw [k4PrefixGroup0125_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0125_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0125) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0125NormalLookup,
    k4PrefixGroup0125TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0125_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0125_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0125MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0125_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0125_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
