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

def k4PrefixGroup0061NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0061TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0061MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0061 : List (List ℕ) :=
  [[7, 79, 179],
    [7, 79, 181],
    [7, 79, 191],
    [7, 79, 193],
    [7, 79, 197],
    [7, 79, 199],
    [7, 79, 211],
    [7, 79, 223],
    [7, 79, 227],
    [7, 79, 229],
    [7, 79, 233],
    [7, 79, 239],
    [7, 79, 241],
    [7, 79, 251],
    [7, 79, 257],
    [7, 79, 263],
    [7, 83, 89],
    [7, 83, 97],
    [7, 83, 101],
    [7, 83, 103],
    [7, 83, 107],
    [7, 83, 109],
    [7, 83, 113],
    [7, 83, 127],
    [7, 83, 131],
    [7, 83, 137],
    [7, 83, 139],
    [7, 83, 149],
    [7, 83, 151],
    [7, 83, 157],
    [7, 83, 163],
    [7, 83, 167],
    [7, 83, 173],
    [7, 83, 179],
    [7, 83, 181],
    [7, 83, 191],
    [7, 83, 193],
    [7, 83, 197],
    [7, 83, 199],
    [7, 83, 211],
    [7, 83, 223],
    [7, 83, 227],
    [7, 83, 229],
    [7, 83, 233],
    [7, 83, 239],
    [7, 83, 241],
    [7, 83, 251],
    [7, 83, 257],
    [7, 89, 97],
    [7, 89, 101],
    [7, 89, 103],
    [7, 89, 107],
    [7, 89, 109],
    [7, 89, 113],
    [7, 89, 127],
    [7, 89, 131],
    [7, 89, 137],
    [7, 89, 139],
    [7, 89, 149],
    [7, 89, 151],
    [7, 89, 157],
    [7, 89, 163],
    [7, 89, 167],
    [7, 89, 173]]

theorem k4PrefixGroup0061_support_covered :
    k4PrefixGroup0061.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0061MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0061_passes :
    k4PrefixGroup0061.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0061_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0061_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0061_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0061_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0061NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0061TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0061_mask_primes_pass :
    k4PrefixGroup0061MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0061NormalLookup
        k4PrefixGroup0061TwistLookup) = true := by
  simp only [k4PrefixGroup0061MaskPrimes, List.all_append]
  rw [k4PrefixGroup0061_mask_group0000_passes]
  rw [k4PrefixGroup0061_mask_group0001_passes]
  rw [k4PrefixGroup0061_mask_group0002_passes]
  rw [k4PrefixGroup0061_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0061_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0061) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0061NormalLookup,
    k4PrefixGroup0061TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0061_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0061_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0061MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0061_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0061_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
