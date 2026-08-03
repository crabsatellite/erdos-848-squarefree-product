import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0101NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0101TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0101MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0101 : List (List ℕ) :=
  [[17, 71, 103],
    [17, 71, 107],
    [17, 71, 109],
    [17, 71, 113],
    [17, 71, 127],
    [17, 71, 131],
    [17, 71, 137],
    [17, 71, 139],
    [17, 71, 149],
    [17, 71, 151],
    [17, 71, 157],
    [17, 71, 163],
    [17, 71, 167],
    [17, 71, 173],
    [17, 71, 179],
    [17, 73, 79],
    [17, 73, 83],
    [17, 73, 89],
    [17, 73, 97],
    [17, 73, 101],
    [17, 73, 103],
    [17, 73, 107],
    [17, 73, 109],
    [17, 73, 113],
    [17, 73, 127],
    [17, 73, 131],
    [17, 73, 137],
    [17, 73, 139],
    [17, 73, 149],
    [17, 73, 151],
    [17, 73, 157],
    [17, 73, 163],
    [17, 73, 167],
    [17, 73, 173],
    [17, 79, 83],
    [17, 79, 89],
    [17, 79, 97],
    [17, 79, 101],
    [17, 79, 103],
    [17, 79, 107],
    [17, 79, 109],
    [17, 79, 113],
    [17, 79, 127],
    [17, 79, 131],
    [17, 79, 137],
    [17, 79, 139],
    [17, 79, 149],
    [17, 79, 151],
    [17, 79, 157],
    [17, 79, 163],
    [17, 79, 167],
    [17, 83, 89],
    [17, 83, 97],
    [17, 83, 101],
    [17, 83, 103],
    [17, 83, 107],
    [17, 83, 109],
    [17, 83, 113],
    [17, 83, 127],
    [17, 83, 131],
    [17, 83, 137],
    [17, 83, 139],
    [17, 83, 149],
    [17, 83, 151]]

theorem k4PrefixGroup0101_support_covered :
    k4PrefixGroup0101.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0101MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0101_passes :
    k4PrefixGroup0101.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0101NormalLookup
        k4PrefixGroup0101TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0101_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0101NormalLookup
        k4PrefixGroup0101TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0101NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0101TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0101_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0101NormalLookup
        k4PrefixGroup0101TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0101NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0101TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0101_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0101NormalLookup
        k4PrefixGroup0101TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0101NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0101TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0101_mask_primes_pass :
    k4PrefixGroup0101MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0101NormalLookup
        k4PrefixGroup0101TwistLookup) = true := by
  simp only [k4PrefixGroup0101MaskPrimes, List.all_append]
  rw [k4PrefixGroup0101_mask_group0000_passes]
  rw [k4PrefixGroup0101_mask_group0001_passes]
  rw [k4PrefixGroup0101_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0101_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0101) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0101NormalLookup,
    k4PrefixGroup0101TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0101_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0101_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0101MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0101_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0101_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
