import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0063NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0063TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0063MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0063 : List (List ℕ) :=
  [[7, 101, 233],
    [7, 103, 107],
    [7, 103, 109],
    [7, 103, 113],
    [7, 103, 127],
    [7, 103, 131],
    [7, 103, 137],
    [7, 103, 139],
    [7, 103, 149],
    [7, 103, 151],
    [7, 103, 157],
    [7, 103, 163],
    [7, 103, 167],
    [7, 103, 173],
    [7, 103, 179],
    [7, 103, 181],
    [7, 103, 191],
    [7, 103, 193],
    [7, 103, 197],
    [7, 103, 199],
    [7, 103, 211],
    [7, 103, 223],
    [7, 103, 227],
    [7, 103, 229],
    [7, 107, 109],
    [7, 107, 113],
    [7, 107, 127],
    [7, 107, 131],
    [7, 107, 137],
    [7, 107, 139],
    [7, 107, 149],
    [7, 107, 151],
    [7, 107, 157],
    [7, 107, 163],
    [7, 107, 167],
    [7, 107, 173],
    [7, 107, 179],
    [7, 107, 181],
    [7, 107, 191],
    [7, 107, 193],
    [7, 107, 197],
    [7, 107, 199],
    [7, 107, 211],
    [7, 107, 223],
    [7, 107, 227],
    [7, 107, 229],
    [7, 109, 113],
    [7, 109, 127],
    [7, 109, 131],
    [7, 109, 137],
    [7, 109, 139],
    [7, 109, 149],
    [7, 109, 151],
    [7, 109, 157],
    [7, 109, 163],
    [7, 109, 167],
    [7, 109, 173],
    [7, 109, 179],
    [7, 109, 181],
    [7, 109, 191],
    [7, 109, 193],
    [7, 109, 197],
    [7, 109, 199],
    [7, 109, 211]]

theorem k4PrefixGroup0063_support_covered :
    k4PrefixGroup0063.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0063MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0063_passes :
    k4PrefixGroup0063.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0063_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0063_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0063_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0063_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0063_mask_primes_pass :
    k4PrefixGroup0063MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  simp only [k4PrefixGroup0063MaskPrimes, List.all_append]
  rw [k4PrefixGroup0063_mask_group0000_passes]
  rw [k4PrefixGroup0063_mask_group0001_passes]
  rw [k4PrefixGroup0063_mask_group0002_passes]
  rw [k4PrefixGroup0063_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0063_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0063) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0063NormalLookup,
    k4PrefixGroup0063TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0063_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0063_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0063MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0063_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0063_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
