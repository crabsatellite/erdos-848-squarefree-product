import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0118NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0118TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0118MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0118 : List (List ℕ) :=
  [[29, 43, 89],
    [29, 43, 97],
    [29, 43, 101],
    [29, 43, 103],
    [29, 43, 107],
    [29, 43, 109],
    [29, 43, 113],
    [29, 43, 127],
    [29, 43, 131],
    [29, 43, 137],
    [29, 43, 139],
    [29, 43, 149],
    [29, 43, 151],
    [29, 43, 157],
    [29, 43, 163],
    [29, 43, 167],
    [29, 43, 173],
    [29, 47, 53],
    [29, 47, 59],
    [29, 47, 61],
    [29, 47, 67],
    [29, 47, 71],
    [29, 47, 73],
    [29, 47, 79],
    [29, 47, 83],
    [29, 47, 89],
    [29, 47, 97],
    [29, 47, 101],
    [29, 47, 103],
    [29, 47, 107],
    [29, 47, 109],
    [29, 47, 113],
    [29, 47, 127],
    [29, 47, 131],
    [29, 47, 137],
    [29, 47, 139],
    [29, 47, 149],
    [29, 47, 151],
    [29, 47, 157],
    [29, 47, 163],
    [29, 47, 167],
    [29, 53, 59],
    [29, 53, 61],
    [29, 53, 67],
    [29, 53, 71],
    [29, 53, 73],
    [29, 53, 79],
    [29, 53, 83],
    [29, 53, 89],
    [29, 53, 97],
    [29, 53, 101],
    [29, 53, 103],
    [29, 53, 107],
    [29, 53, 109],
    [29, 53, 113],
    [29, 53, 127],
    [29, 53, 131],
    [29, 53, 137],
    [29, 53, 139],
    [29, 53, 149],
    [29, 53, 151],
    [29, 53, 157],
    [29, 59, 61],
    [29, 59, 67]]

theorem k4PrefixGroup0118_support_covered :
    k4PrefixGroup0118.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0118MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0118_passes :
    k4PrefixGroup0118.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0118NormalLookup
        k4PrefixGroup0118TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0118_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0118NormalLookup
        k4PrefixGroup0118TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0118NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0118TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0118_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0118NormalLookup
        k4PrefixGroup0118TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0118NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0118TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0118_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0118NormalLookup
        k4PrefixGroup0118TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0118NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0118TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0118_mask_primes_pass :
    k4PrefixGroup0118MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0118NormalLookup
        k4PrefixGroup0118TwistLookup) = true := by
  simp only [k4PrefixGroup0118MaskPrimes, List.all_append]
  rw [k4PrefixGroup0118_mask_group0000_passes]
  rw [k4PrefixGroup0118_mask_group0001_passes]
  rw [k4PrefixGroup0118_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0118_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0118) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0118NormalLookup,
    k4PrefixGroup0118TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0118_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0118_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0118MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0118_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0118_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
