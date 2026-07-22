import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0090NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0090TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0090MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0090 : List (List ℕ) :=
  [[13, 61, 137],
    [13, 61, 139],
    [13, 61, 149],
    [13, 61, 151],
    [13, 61, 157],
    [13, 61, 163],
    [13, 61, 167],
    [13, 61, 173],
    [13, 61, 179],
    [13, 61, 181],
    [13, 61, 191],
    [13, 61, 193],
    [13, 61, 197],
    [13, 61, 199],
    [13, 61, 211],
    [13, 67, 71],
    [13, 67, 73],
    [13, 67, 79],
    [13, 67, 83],
    [13, 67, 89],
    [13, 67, 97],
    [13, 67, 101],
    [13, 67, 103],
    [13, 67, 107],
    [13, 67, 109],
    [13, 67, 113],
    [13, 67, 127],
    [13, 67, 131],
    [13, 67, 137],
    [13, 67, 139],
    [13, 67, 149],
    [13, 67, 151],
    [13, 67, 157],
    [13, 67, 163],
    [13, 67, 167],
    [13, 67, 173],
    [13, 67, 179],
    [13, 67, 181],
    [13, 67, 191],
    [13, 67, 193],
    [13, 67, 197],
    [13, 67, 199],
    [13, 71, 73],
    [13, 71, 79],
    [13, 71, 83],
    [13, 71, 89],
    [13, 71, 97],
    [13, 71, 101],
    [13, 71, 103],
    [13, 71, 107],
    [13, 71, 109],
    [13, 71, 113],
    [13, 71, 127],
    [13, 71, 131],
    [13, 71, 137],
    [13, 71, 139],
    [13, 71, 149],
    [13, 71, 151],
    [13, 71, 157],
    [13, 71, 163],
    [13, 71, 167],
    [13, 71, 173],
    [13, 71, 179],
    [13, 71, 181]]

theorem k4PrefixGroup0090_support_covered :
    k4PrefixGroup0090.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0090MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0090_passes :
    k4PrefixGroup0090.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0090NormalLookup
        k4PrefixGroup0090TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0090_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0090NormalLookup
        k4PrefixGroup0090TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0090NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0090TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0090_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0090NormalLookup
        k4PrefixGroup0090TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0090NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0090TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0090_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0090NormalLookup
        k4PrefixGroup0090TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0090NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0090TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0090_mask_primes_pass :
    k4PrefixGroup0090MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0090NormalLookup
        k4PrefixGroup0090TwistLookup) = true := by
  simp only [k4PrefixGroup0090MaskPrimes, List.all_append]
  rw [k4PrefixGroup0090_mask_group0000_passes]
  rw [k4PrefixGroup0090_mask_group0001_passes]
  rw [k4PrefixGroup0090_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0090_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0090) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0090NormalLookup,
    k4PrefixGroup0090TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0090_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0090_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0090MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0090_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0090_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
