import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0110NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0110TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0110MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0110 : List (List ℕ) :=
  [[19, 89, 149],
    [19, 97, 101],
    [19, 97, 103],
    [19, 97, 107],
    [19, 97, 109],
    [19, 97, 113],
    [19, 97, 127],
    [19, 97, 131],
    [19, 97, 137],
    [19, 97, 139],
    [19, 101, 103],
    [19, 101, 107],
    [19, 101, 109],
    [19, 101, 113],
    [19, 101, 127],
    [19, 101, 131],
    [19, 101, 137],
    [19, 101, 139],
    [19, 103, 107],
    [19, 103, 109],
    [19, 103, 113],
    [19, 103, 127],
    [19, 103, 131],
    [19, 103, 137],
    [19, 107, 109],
    [19, 107, 113],
    [19, 107, 127],
    [19, 107, 131],
    [19, 107, 137],
    [19, 109, 113],
    [19, 109, 127],
    [19, 109, 131],
    [19, 109, 137],
    [19, 113, 127],
    [19, 113, 131],
    [23, 29, 31],
    [23, 29, 37],
    [23, 29, 41],
    [23, 29, 43],
    [23, 29, 47],
    [23, 29, 53],
    [23, 29, 59],
    [23, 29, 61],
    [23, 29, 67],
    [23, 29, 71],
    [23, 29, 73],
    [23, 29, 79],
    [23, 29, 83],
    [23, 29, 89],
    [23, 29, 97],
    [23, 29, 101],
    [23, 29, 103],
    [23, 29, 107],
    [23, 29, 109],
    [23, 29, 113],
    [23, 29, 127],
    [23, 29, 131],
    [23, 29, 137],
    [23, 29, 139],
    [23, 29, 149],
    [23, 29, 151],
    [23, 29, 157],
    [23, 29, 163],
    [23, 29, 167]]

theorem k4PrefixGroup0110_support_covered :
    k4PrefixGroup0110.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0110MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0110_passes :
    k4PrefixGroup0110.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0110NormalLookup
        k4PrefixGroup0110TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0110_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0110NormalLookup
        k4PrefixGroup0110TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0110NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0110TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0110_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0110NormalLookup
        k4PrefixGroup0110TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0110NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0110TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0110_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0110NormalLookup
        k4PrefixGroup0110TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0110NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0110TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0110_mask_primes_pass :
    k4PrefixGroup0110MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0110NormalLookup
        k4PrefixGroup0110TwistLookup) = true := by
  simp only [k4PrefixGroup0110MaskPrimes, List.all_append]
  rw [k4PrefixGroup0110_mask_group0000_passes]
  rw [k4PrefixGroup0110_mask_group0001_passes]
  rw [k4PrefixGroup0110_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0110_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0110) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0110NormalLookup,
    k4PrefixGroup0110TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0110_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0110_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0110MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0110_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0110_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
