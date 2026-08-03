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

def k4PrefixGroup0088NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0088TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0088MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0088 : List (List ℕ) :=
  [[13, 43, 229],
    [13, 43, 233],
    [13, 43, 239],
    [13, 43, 241],
    [13, 43, 251],
    [13, 43, 257],
    [13, 43, 263],
    [13, 47, 53],
    [13, 47, 59],
    [13, 47, 61],
    [13, 47, 67],
    [13, 47, 71],
    [13, 47, 73],
    [13, 47, 79],
    [13, 47, 83],
    [13, 47, 89],
    [13, 47, 97],
    [13, 47, 101],
    [13, 47, 103],
    [13, 47, 107],
    [13, 47, 109],
    [13, 47, 113],
    [13, 47, 127],
    [13, 47, 131],
    [13, 47, 137],
    [13, 47, 139],
    [13, 47, 149],
    [13, 47, 151],
    [13, 47, 157],
    [13, 47, 163],
    [13, 47, 167],
    [13, 47, 173],
    [13, 47, 179],
    [13, 47, 181],
    [13, 47, 191],
    [13, 47, 193],
    [13, 47, 197],
    [13, 47, 199],
    [13, 47, 211],
    [13, 47, 223],
    [13, 47, 227],
    [13, 47, 229],
    [13, 47, 233],
    [13, 47, 239],
    [13, 47, 241],
    [13, 47, 251],
    [13, 53, 59],
    [13, 53, 61],
    [13, 53, 67],
    [13, 53, 71],
    [13, 53, 73],
    [13, 53, 79],
    [13, 53, 83],
    [13, 53, 89],
    [13, 53, 97],
    [13, 53, 101],
    [13, 53, 103],
    [13, 53, 107],
    [13, 53, 109],
    [13, 53, 113],
    [13, 53, 127],
    [13, 53, 131],
    [13, 53, 137],
    [13, 53, 139]]

theorem k4PrefixGroup0088_support_covered :
    k4PrefixGroup0088.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0088MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0088_passes :
    k4PrefixGroup0088.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0088NormalLookup
        k4PrefixGroup0088TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0088_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0088NormalLookup
        k4PrefixGroup0088TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0088NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0088TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0088_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0088NormalLookup
        k4PrefixGroup0088TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0088NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0088TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0088_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0088NormalLookup
        k4PrefixGroup0088TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0088NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0088TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0088_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0088NormalLookup
        k4PrefixGroup0088TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0088NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0088TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0088_mask_primes_pass :
    k4PrefixGroup0088MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0088NormalLookup
        k4PrefixGroup0088TwistLookup) = true := by
  simp only [k4PrefixGroup0088MaskPrimes, List.all_append]
  rw [k4PrefixGroup0088_mask_group0000_passes]
  rw [k4PrefixGroup0088_mask_group0001_passes]
  rw [k4PrefixGroup0088_mask_group0002_passes]
  rw [k4PrefixGroup0088_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0088_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0088) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0088NormalLookup,
    k4PrefixGroup0088TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0088_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0088_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0088MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0088_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0088_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
