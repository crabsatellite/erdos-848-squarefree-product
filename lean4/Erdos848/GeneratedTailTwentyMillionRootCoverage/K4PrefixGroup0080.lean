import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0080NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0080TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0080MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0080 : List (List ℕ) :=
  [[11, 103, 131],
    [11, 103, 137],
    [11, 103, 139],
    [11, 103, 149],
    [11, 103, 151],
    [11, 103, 157],
    [11, 103, 163],
    [11, 103, 167],
    [11, 103, 173],
    [11, 103, 179],
    [11, 103, 181],
    [11, 107, 109],
    [11, 107, 113],
    [11, 107, 127],
    [11, 107, 131],
    [11, 107, 137],
    [11, 107, 139],
    [11, 107, 149],
    [11, 107, 151],
    [11, 107, 157],
    [11, 107, 163],
    [11, 107, 167],
    [11, 107, 173],
    [11, 107, 179],
    [11, 109, 113],
    [11, 109, 127],
    [11, 109, 131],
    [11, 109, 137],
    [11, 109, 139],
    [11, 109, 149],
    [11, 109, 151],
    [11, 109, 157],
    [11, 109, 163],
    [11, 109, 167],
    [11, 109, 173],
    [11, 109, 179],
    [11, 113, 127],
    [11, 113, 131],
    [11, 113, 137],
    [11, 113, 139],
    [11, 113, 149],
    [11, 113, 151],
    [11, 113, 157],
    [11, 113, 163],
    [11, 113, 167],
    [11, 113, 173],
    [11, 127, 131],
    [11, 127, 137],
    [11, 127, 139],
    [11, 127, 149],
    [11, 127, 151],
    [11, 127, 157],
    [11, 127, 163],
    [11, 131, 137],
    [11, 131, 139],
    [11, 131, 149],
    [11, 131, 151],
    [11, 131, 157],
    [11, 131, 163],
    [11, 137, 139],
    [11, 137, 149],
    [11, 137, 151],
    [11, 137, 157],
    [11, 139, 149]]

theorem k4PrefixGroup0080_support_covered :
    k4PrefixGroup0080.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0080MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0080_passes :
    k4PrefixGroup0080.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0080NormalLookup
        k4PrefixGroup0080TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0080_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0080NormalLookup
        k4PrefixGroup0080TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0080NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0080TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0080_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0080NormalLookup
        k4PrefixGroup0080TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0080NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0080TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0080_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0080NormalLookup
        k4PrefixGroup0080TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0080NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0080TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0080_mask_primes_pass :
    k4PrefixGroup0080MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0080NormalLookup
        k4PrefixGroup0080TwistLookup) = true := by
  simp only [k4PrefixGroup0080MaskPrimes, List.all_append]
  rw [k4PrefixGroup0080_mask_group0000_passes]
  rw [k4PrefixGroup0080_mask_group0001_passes]
  rw [k4PrefixGroup0080_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0080_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0080) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0080NormalLookup,
    k4PrefixGroup0080TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0080_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0080_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0080MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0080_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0080_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
