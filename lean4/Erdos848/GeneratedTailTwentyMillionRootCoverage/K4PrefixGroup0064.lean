import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0064NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0064TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0064MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0064 : List (List ℕ) :=
  [[7, 109, 223],
    [7, 109, 227],
    [7, 113, 127],
    [7, 113, 131],
    [7, 113, 137],
    [7, 113, 139],
    [7, 113, 149],
    [7, 113, 151],
    [7, 113, 157],
    [7, 113, 163],
    [7, 113, 167],
    [7, 113, 173],
    [7, 113, 179],
    [7, 113, 181],
    [7, 113, 191],
    [7, 113, 193],
    [7, 113, 197],
    [7, 113, 199],
    [7, 113, 211],
    [7, 127, 131],
    [7, 127, 137],
    [7, 127, 139],
    [7, 127, 149],
    [7, 127, 151],
    [7, 127, 157],
    [7, 127, 163],
    [7, 127, 167],
    [7, 127, 173],
    [7, 127, 179],
    [7, 127, 181],
    [7, 127, 191],
    [7, 127, 193],
    [7, 127, 197],
    [7, 127, 199],
    [7, 131, 137],
    [7, 131, 139],
    [7, 131, 149],
    [7, 131, 151],
    [7, 131, 157],
    [7, 131, 163],
    [7, 131, 167],
    [7, 131, 173],
    [7, 131, 179],
    [7, 131, 181],
    [7, 131, 191],
    [7, 131, 193],
    [7, 131, 197],
    [7, 131, 199],
    [7, 137, 139],
    [7, 137, 149],
    [7, 137, 151],
    [7, 137, 157],
    [7, 137, 163],
    [7, 137, 167],
    [7, 137, 173],
    [7, 137, 179],
    [7, 137, 181],
    [7, 137, 191],
    [7, 137, 193],
    [7, 137, 197],
    [7, 139, 149],
    [7, 139, 151],
    [7, 139, 157],
    [7, 139, 163]]

theorem k4PrefixGroup0064_support_covered :
    k4PrefixGroup0064.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0064MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0064_passes :
    k4PrefixGroup0064.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0064NormalLookup
        k4PrefixGroup0064TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0064_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0064NormalLookup
        k4PrefixGroup0064TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0064NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0064TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0064_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0064NormalLookup
        k4PrefixGroup0064TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0064NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0064TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0064_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0064NormalLookup
        k4PrefixGroup0064TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0064NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0064TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0064_mask_primes_pass :
    k4PrefixGroup0064MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0064NormalLookup
        k4PrefixGroup0064TwistLookup) = true := by
  simp only [k4PrefixGroup0064MaskPrimes, List.all_append]
  rw [k4PrefixGroup0064_mask_group0000_passes]
  rw [k4PrefixGroup0064_mask_group0001_passes]
  rw [k4PrefixGroup0064_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0064_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0064) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0064NormalLookup,
    k4PrefixGroup0064TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0064_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0064_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0064MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0064_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0064_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
