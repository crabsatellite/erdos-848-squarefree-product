import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0126NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0126TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0126MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0126 : List (List ℕ) :=
  [[37, 67, 113],
    [37, 71, 73],
    [37, 71, 79],
    [37, 71, 83],
    [37, 71, 89],
    [37, 71, 97],
    [37, 71, 101],
    [37, 71, 103],
    [37, 71, 107],
    [37, 71, 109],
    [37, 71, 113],
    [37, 73, 79],
    [37, 73, 83],
    [37, 73, 89],
    [37, 73, 97],
    [37, 73, 101],
    [37, 73, 103],
    [37, 73, 107],
    [37, 73, 109],
    [37, 73, 113],
    [37, 79, 83],
    [37, 79, 89],
    [37, 79, 97],
    [37, 79, 101],
    [37, 79, 103],
    [37, 79, 107],
    [37, 79, 109],
    [37, 83, 89],
    [37, 83, 97],
    [37, 83, 101],
    [37, 83, 103],
    [37, 83, 107],
    [37, 83, 109],
    [37, 89, 97],
    [37, 89, 101],
    [37, 89, 103],
    [37, 89, 107],
    [37, 97, 101],
    [37, 97, 103],
    [41, 43, 47],
    [41, 43, 53],
    [41, 43, 59],
    [41, 43, 61],
    [41, 43, 67],
    [41, 43, 71],
    [41, 43, 73],
    [41, 43, 79],
    [41, 43, 83],
    [41, 43, 89],
    [41, 43, 97],
    [41, 43, 101],
    [41, 43, 103],
    [41, 43, 107],
    [41, 43, 109],
    [41, 43, 113],
    [41, 43, 127],
    [41, 43, 131],
    [41, 43, 137],
    [41, 43, 139],
    [41, 43, 149],
    [41, 47, 53],
    [41, 47, 59],
    [41, 47, 61],
    [41, 47, 67]]

theorem k4PrefixGroup0126_support_covered :
    k4PrefixGroup0126.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0126MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0126_passes :
    k4PrefixGroup0126.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0126NormalLookup
        k4PrefixGroup0126TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0126_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0126NormalLookup
        k4PrefixGroup0126TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0126NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0126TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0126_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0126NormalLookup
        k4PrefixGroup0126TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0126NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0126TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0126_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0126NormalLookup
        k4PrefixGroup0126TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0126NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0126TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0126_mask_primes_pass :
    k4PrefixGroup0126MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0126NormalLookup
        k4PrefixGroup0126TwistLookup) = true := by
  simp only [k4PrefixGroup0126MaskPrimes, List.all_append]
  rw [k4PrefixGroup0126_mask_group0000_passes]
  rw [k4PrefixGroup0126_mask_group0001_passes]
  rw [k4PrefixGroup0126_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0126_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0126) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0126NormalLookup,
    k4PrefixGroup0126TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0126_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0126_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0126MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0126_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0126_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
