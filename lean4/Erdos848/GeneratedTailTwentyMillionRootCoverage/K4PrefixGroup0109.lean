import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0109NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0109TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0109MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0109 : List (List ℕ) :=
  [[19, 71, 127],
    [19, 71, 131],
    [19, 71, 137],
    [19, 71, 139],
    [19, 71, 149],
    [19, 71, 151],
    [19, 71, 157],
    [19, 71, 163],
    [19, 71, 167],
    [19, 73, 79],
    [19, 73, 83],
    [19, 73, 89],
    [19, 73, 97],
    [19, 73, 101],
    [19, 73, 103],
    [19, 73, 107],
    [19, 73, 109],
    [19, 73, 113],
    [19, 73, 127],
    [19, 73, 131],
    [19, 73, 137],
    [19, 73, 139],
    [19, 73, 149],
    [19, 73, 151],
    [19, 73, 157],
    [19, 73, 163],
    [19, 79, 83],
    [19, 79, 89],
    [19, 79, 97],
    [19, 79, 101],
    [19, 79, 103],
    [19, 79, 107],
    [19, 79, 109],
    [19, 79, 113],
    [19, 79, 127],
    [19, 79, 131],
    [19, 79, 137],
    [19, 79, 139],
    [19, 79, 149],
    [19, 79, 151],
    [19, 79, 157],
    [19, 83, 89],
    [19, 83, 97],
    [19, 83, 101],
    [19, 83, 103],
    [19, 83, 107],
    [19, 83, 109],
    [19, 83, 113],
    [19, 83, 127],
    [19, 83, 131],
    [19, 83, 137],
    [19, 83, 139],
    [19, 83, 149],
    [19, 83, 151],
    [19, 89, 97],
    [19, 89, 101],
    [19, 89, 103],
    [19, 89, 107],
    [19, 89, 109],
    [19, 89, 113],
    [19, 89, 127],
    [19, 89, 131],
    [19, 89, 137],
    [19, 89, 139]]

theorem k4PrefixGroup0109_support_covered :
    k4PrefixGroup0109.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0109MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0109_passes :
    k4PrefixGroup0109.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0109NormalLookup
        k4PrefixGroup0109TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0109_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0109NormalLookup
        k4PrefixGroup0109TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0109NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0109TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0109_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0109NormalLookup
        k4PrefixGroup0109TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0109NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0109TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0109_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0109NormalLookup
        k4PrefixGroup0109TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0109NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0109TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0109_mask_primes_pass :
    k4PrefixGroup0109MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0109NormalLookup
        k4PrefixGroup0109TwistLookup) = true := by
  simp only [k4PrefixGroup0109MaskPrimes, List.all_append]
  rw [k4PrefixGroup0109_mask_group0000_passes]
  rw [k4PrefixGroup0109_mask_group0001_passes]
  rw [k4PrefixGroup0109_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0109_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0109) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0109NormalLookup,
    k4PrefixGroup0109TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0109_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0109_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0109MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0109_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0109_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
