import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0117NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0117TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0117MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0117 : List (List ℕ) :=
  [[29, 37, 59],
    [29, 37, 61],
    [29, 37, 67],
    [29, 37, 71],
    [29, 37, 73],
    [29, 37, 79],
    [29, 37, 83],
    [29, 37, 89],
    [29, 37, 97],
    [29, 37, 101],
    [29, 37, 103],
    [29, 37, 107],
    [29, 37, 109],
    [29, 37, 113],
    [29, 37, 127],
    [29, 37, 131],
    [29, 37, 137],
    [29, 37, 139],
    [29, 37, 149],
    [29, 37, 151],
    [29, 37, 157],
    [29, 37, 163],
    [29, 37, 167],
    [29, 37, 173],
    [29, 37, 179],
    [29, 37, 181],
    [29, 37, 191],
    [29, 41, 43],
    [29, 41, 47],
    [29, 41, 53],
    [29, 41, 59],
    [29, 41, 61],
    [29, 41, 67],
    [29, 41, 71],
    [29, 41, 73],
    [29, 41, 79],
    [29, 41, 83],
    [29, 41, 89],
    [29, 41, 97],
    [29, 41, 101],
    [29, 41, 103],
    [29, 41, 107],
    [29, 41, 109],
    [29, 41, 113],
    [29, 41, 127],
    [29, 41, 131],
    [29, 41, 137],
    [29, 41, 139],
    [29, 41, 149],
    [29, 41, 151],
    [29, 41, 157],
    [29, 41, 163],
    [29, 41, 167],
    [29, 41, 173],
    [29, 41, 179],
    [29, 43, 47],
    [29, 43, 53],
    [29, 43, 59],
    [29, 43, 61],
    [29, 43, 67],
    [29, 43, 71],
    [29, 43, 73],
    [29, 43, 79],
    [29, 43, 83]]

theorem k4PrefixGroup0117_support_covered :
    k4PrefixGroup0117.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0117MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0117_passes :
    k4PrefixGroup0117.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0117NormalLookup
        k4PrefixGroup0117TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0117_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0117NormalLookup
        k4PrefixGroup0117TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0117NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0117TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0117_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0117NormalLookup
        k4PrefixGroup0117TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0117NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0117TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0117_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0117NormalLookup
        k4PrefixGroup0117TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0117NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0117TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0117_mask_primes_pass :
    k4PrefixGroup0117MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0117NormalLookup
        k4PrefixGroup0117TwistLookup) = true := by
  simp only [k4PrefixGroup0117MaskPrimes, List.all_append]
  rw [k4PrefixGroup0117_mask_group0000_passes]
  rw [k4PrefixGroup0117_mask_group0001_passes]
  rw [k4PrefixGroup0117_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0117_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0117) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0117NormalLookup,
    k4PrefixGroup0117TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0117_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0117_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0117MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0117_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0117_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
