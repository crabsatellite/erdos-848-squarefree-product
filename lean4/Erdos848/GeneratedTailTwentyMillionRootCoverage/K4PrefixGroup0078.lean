import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0078NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0078TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0078MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0078 : List (List ℕ) :=
  [[11, 73, 101],
    [11, 73, 103],
    [11, 73, 107],
    [11, 73, 109],
    [11, 73, 113],
    [11, 73, 127],
    [11, 73, 131],
    [11, 73, 137],
    [11, 73, 139],
    [11, 73, 149],
    [11, 73, 151],
    [11, 73, 157],
    [11, 73, 163],
    [11, 73, 167],
    [11, 73, 173],
    [11, 73, 179],
    [11, 73, 181],
    [11, 73, 191],
    [11, 73, 193],
    [11, 73, 197],
    [11, 73, 199],
    [11, 73, 211],
    [11, 79, 83],
    [11, 79, 89],
    [11, 79, 97],
    [11, 79, 101],
    [11, 79, 103],
    [11, 79, 107],
    [11, 79, 109],
    [11, 79, 113],
    [11, 79, 127],
    [11, 79, 131],
    [11, 79, 137],
    [11, 79, 139],
    [11, 79, 149],
    [11, 79, 151],
    [11, 79, 157],
    [11, 79, 163],
    [11, 79, 167],
    [11, 79, 173],
    [11, 79, 179],
    [11, 79, 181],
    [11, 79, 191],
    [11, 79, 193],
    [11, 79, 197],
    [11, 79, 199],
    [11, 83, 89],
    [11, 83, 97],
    [11, 83, 101],
    [11, 83, 103],
    [11, 83, 107],
    [11, 83, 109],
    [11, 83, 113],
    [11, 83, 127],
    [11, 83, 131],
    [11, 83, 137],
    [11, 83, 139],
    [11, 83, 149],
    [11, 83, 151],
    [11, 83, 157],
    [11, 83, 163],
    [11, 83, 167],
    [11, 83, 173],
    [11, 83, 179]]

theorem k4PrefixGroup0078_support_covered :
    k4PrefixGroup0078.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0078MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0078_passes :
    k4PrefixGroup0078.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0078_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0078NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0078TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0078_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0078NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0078TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0078_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0078NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0078TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0078_mask_primes_pass :
    k4PrefixGroup0078MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  simp only [k4PrefixGroup0078MaskPrimes, List.all_append]
  rw [k4PrefixGroup0078_mask_group0000_passes]
  rw [k4PrefixGroup0078_mask_group0001_passes]
  rw [k4PrefixGroup0078_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0078_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0078) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0078NormalLookup,
    k4PrefixGroup0078TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0078_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0078_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0078MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0078_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0078_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
