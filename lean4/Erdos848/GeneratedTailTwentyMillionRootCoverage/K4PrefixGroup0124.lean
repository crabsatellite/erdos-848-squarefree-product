import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0124NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0124TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0124MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0124 : List (List ℕ) :=
  [[31, 97, 107],
    [31, 97, 109],
    [31, 101, 103],
    [31, 101, 107],
    [31, 101, 109],
    [31, 103, 107],
    [31, 103, 109],
    [37, 41, 43],
    [37, 41, 47],
    [37, 41, 53],
    [37, 41, 59],
    [37, 41, 61],
    [37, 41, 67],
    [37, 41, 71],
    [37, 41, 73],
    [37, 41, 79],
    [37, 41, 83],
    [37, 41, 89],
    [37, 41, 97],
    [37, 41, 101],
    [37, 41, 103],
    [37, 41, 107],
    [37, 41, 109],
    [37, 41, 113],
    [37, 41, 127],
    [37, 41, 131],
    [37, 41, 137],
    [37, 41, 139],
    [37, 41, 149],
    [37, 41, 151],
    [37, 41, 157],
    [37, 43, 47],
    [37, 43, 53],
    [37, 43, 59],
    [37, 43, 61],
    [37, 43, 67],
    [37, 43, 71],
    [37, 43, 73],
    [37, 43, 79],
    [37, 43, 83],
    [37, 43, 89],
    [37, 43, 97],
    [37, 43, 101],
    [37, 43, 103],
    [37, 43, 107],
    [37, 43, 109],
    [37, 43, 113],
    [37, 43, 127],
    [37, 43, 131],
    [37, 43, 137],
    [37, 43, 139],
    [37, 43, 149],
    [37, 43, 151],
    [37, 47, 53],
    [37, 47, 59],
    [37, 47, 61],
    [37, 47, 67],
    [37, 47, 71],
    [37, 47, 73],
    [37, 47, 79],
    [37, 47, 83],
    [37, 47, 89],
    [37, 47, 97],
    [37, 47, 101]]

theorem k4PrefixGroup0124_support_covered :
    k4PrefixGroup0124.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0124MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0124_passes :
    k4PrefixGroup0124.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0124NormalLookup
        k4PrefixGroup0124TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0124_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0124NormalLookup
        k4PrefixGroup0124TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0124NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0124TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0124_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0124NormalLookup
        k4PrefixGroup0124TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0124NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0124TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0124_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0124NormalLookup
        k4PrefixGroup0124TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0124NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0124TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0124_mask_primes_pass :
    k4PrefixGroup0124MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0124NormalLookup
        k4PrefixGroup0124TwistLookup) = true := by
  simp only [k4PrefixGroup0124MaskPrimes, List.all_append]
  rw [k4PrefixGroup0124_mask_group0000_passes]
  rw [k4PrefixGroup0124_mask_group0001_passes]
  rw [k4PrefixGroup0124_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0124_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0124) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0124NormalLookup,
    k4PrefixGroup0124TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0124_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0124_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0124MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0124_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0124_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
