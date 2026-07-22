import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0115NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0115TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0115MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0115 : List (List ℕ) :=
  [[23, 67, 113],
    [23, 67, 127],
    [23, 67, 131],
    [23, 67, 137],
    [23, 67, 139],
    [23, 67, 149],
    [23, 67, 151],
    [23, 67, 157],
    [23, 71, 73],
    [23, 71, 79],
    [23, 71, 83],
    [23, 71, 89],
    [23, 71, 97],
    [23, 71, 101],
    [23, 71, 103],
    [23, 71, 107],
    [23, 71, 109],
    [23, 71, 113],
    [23, 71, 127],
    [23, 71, 131],
    [23, 71, 137],
    [23, 71, 139],
    [23, 71, 149],
    [23, 71, 151],
    [23, 73, 79],
    [23, 73, 83],
    [23, 73, 89],
    [23, 73, 97],
    [23, 73, 101],
    [23, 73, 103],
    [23, 73, 107],
    [23, 73, 109],
    [23, 73, 113],
    [23, 73, 127],
    [23, 73, 131],
    [23, 73, 137],
    [23, 73, 139],
    [23, 73, 149],
    [23, 73, 151],
    [23, 79, 83],
    [23, 79, 89],
    [23, 79, 97],
    [23, 79, 101],
    [23, 79, 103],
    [23, 79, 107],
    [23, 79, 109],
    [23, 79, 113],
    [23, 79, 127],
    [23, 79, 131],
    [23, 79, 137],
    [23, 79, 139],
    [23, 83, 89],
    [23, 83, 97],
    [23, 83, 101],
    [23, 83, 103],
    [23, 83, 107],
    [23, 83, 109],
    [23, 83, 113],
    [23, 83, 127],
    [23, 83, 131],
    [23, 83, 137],
    [23, 83, 139],
    [23, 89, 97],
    [23, 89, 101]]

theorem k4PrefixGroup0115_support_covered :
    k4PrefixGroup0115.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0115MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0115_passes :
    k4PrefixGroup0115.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0115NormalLookup
        k4PrefixGroup0115TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0115_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0115NormalLookup
        k4PrefixGroup0115TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0115NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0115TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0115_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0115NormalLookup
        k4PrefixGroup0115TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0115NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0115TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0115_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0115NormalLookup
        k4PrefixGroup0115TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0115NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0115TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0115_mask_primes_pass :
    k4PrefixGroup0115MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0115NormalLookup
        k4PrefixGroup0115TwistLookup) = true := by
  simp only [k4PrefixGroup0115MaskPrimes, List.all_append]
  rw [k4PrefixGroup0115_mask_group0000_passes]
  rw [k4PrefixGroup0115_mask_group0001_passes]
  rw [k4PrefixGroup0115_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0115_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0115) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0115NormalLookup,
    k4PrefixGroup0115TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0115_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0115_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0115MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0115_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0115_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
