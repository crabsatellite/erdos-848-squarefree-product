import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0112NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0112TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0112MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0112 : List (List ℕ) :=
  [[23, 37, 89],
    [23, 37, 97],
    [23, 37, 101],
    [23, 37, 103],
    [23, 37, 107],
    [23, 37, 109],
    [23, 37, 113],
    [23, 37, 127],
    [23, 37, 131],
    [23, 37, 137],
    [23, 37, 139],
    [23, 37, 149],
    [23, 37, 151],
    [23, 37, 157],
    [23, 37, 163],
    [23, 37, 167],
    [23, 37, 173],
    [23, 37, 179],
    [23, 37, 181],
    [23, 37, 191],
    [23, 37, 193],
    [23, 37, 197],
    [23, 37, 199],
    [23, 41, 43],
    [23, 41, 47],
    [23, 41, 53],
    [23, 41, 59],
    [23, 41, 61],
    [23, 41, 67],
    [23, 41, 71],
    [23, 41, 73],
    [23, 41, 79],
    [23, 41, 83],
    [23, 41, 89],
    [23, 41, 97],
    [23, 41, 101],
    [23, 41, 103],
    [23, 41, 107],
    [23, 41, 109],
    [23, 41, 113],
    [23, 41, 127],
    [23, 41, 131],
    [23, 41, 137],
    [23, 41, 139],
    [23, 41, 149],
    [23, 41, 151],
    [23, 41, 157],
    [23, 41, 163],
    [23, 41, 167],
    [23, 41, 173],
    [23, 41, 179],
    [23, 41, 181],
    [23, 41, 191],
    [23, 41, 193],
    [23, 41, 197],
    [23, 41, 199],
    [23, 43, 47],
    [23, 43, 53],
    [23, 43, 59],
    [23, 43, 61],
    [23, 43, 67],
    [23, 43, 71],
    [23, 43, 73],
    [23, 43, 79]]

theorem k4PrefixGroup0112_support_covered :
    k4PrefixGroup0112.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0112MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0112_passes :
    k4PrefixGroup0112.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0112NormalLookup
        k4PrefixGroup0112TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0112_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0112NormalLookup
        k4PrefixGroup0112TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0112NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0112TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0112_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0112NormalLookup
        k4PrefixGroup0112TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0112NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0112TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0112_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0112NormalLookup
        k4PrefixGroup0112TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0112NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0112TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0112_mask_primes_pass :
    k4PrefixGroup0112MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0112NormalLookup
        k4PrefixGroup0112TwistLookup) = true := by
  simp only [k4PrefixGroup0112MaskPrimes, List.all_append]
  rw [k4PrefixGroup0112_mask_group0000_passes]
  rw [k4PrefixGroup0112_mask_group0001_passes]
  rw [k4PrefixGroup0112_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0112_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0112) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0112NormalLookup,
    k4PrefixGroup0112TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0112_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0112_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0112MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0112_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0112_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
