import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0093NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0093TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0093MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0093 : List (List ℕ) :=
  [[13, 103, 167],
    [13, 107, 109],
    [13, 107, 113],
    [13, 107, 127],
    [13, 107, 131],
    [13, 107, 137],
    [13, 107, 139],
    [13, 107, 149],
    [13, 107, 151],
    [13, 107, 157],
    [13, 107, 163],
    [13, 109, 113],
    [13, 109, 127],
    [13, 109, 131],
    [13, 109, 137],
    [13, 109, 139],
    [13, 109, 149],
    [13, 109, 151],
    [13, 109, 157],
    [13, 109, 163],
    [13, 113, 127],
    [13, 113, 131],
    [13, 113, 137],
    [13, 113, 139],
    [13, 113, 149],
    [13, 113, 151],
    [13, 113, 157],
    [13, 113, 163],
    [13, 127, 131],
    [13, 127, 137],
    [13, 127, 139],
    [13, 127, 149],
    [13, 127, 151],
    [13, 131, 137],
    [13, 131, 139],
    [13, 131, 149],
    [13, 137, 139],
    [17, 19, 23],
    [17, 19, 29],
    [17, 19, 31],
    [17, 19, 37],
    [17, 19, 41],
    [17, 19, 43],
    [17, 19, 47],
    [17, 19, 53],
    [17, 19, 59],
    [17, 19, 61],
    [17, 19, 67],
    [17, 19, 71],
    [17, 19, 73],
    [17, 19, 79],
    [17, 19, 83],
    [17, 19, 89],
    [17, 19, 97],
    [17, 19, 101],
    [17, 19, 103],
    [17, 19, 107],
    [17, 19, 109],
    [17, 19, 113],
    [17, 19, 127],
    [17, 19, 131],
    [17, 19, 137],
    [17, 19, 139],
    [17, 19, 149]]

theorem k4PrefixGroup0093_support_covered :
    k4PrefixGroup0093.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0093MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0093_passes :
    k4PrefixGroup0093.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0093NormalLookup
        k4PrefixGroup0093TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0093_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0093NormalLookup
        k4PrefixGroup0093TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0093NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0093TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0093_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0093NormalLookup
        k4PrefixGroup0093TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0093NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0093TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0093_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0093NormalLookup
        k4PrefixGroup0093TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0093NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0093TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0093_mask_primes_pass :
    k4PrefixGroup0093MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0093NormalLookup
        k4PrefixGroup0093TwistLookup) = true := by
  simp only [k4PrefixGroup0093MaskPrimes, List.all_append]
  rw [k4PrefixGroup0093_mask_group0000_passes]
  rw [k4PrefixGroup0093_mask_group0001_passes]
  rw [k4PrefixGroup0093_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0093_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0093) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0093NormalLookup,
    k4PrefixGroup0093TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0093_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0093_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0093MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0093_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0093_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
