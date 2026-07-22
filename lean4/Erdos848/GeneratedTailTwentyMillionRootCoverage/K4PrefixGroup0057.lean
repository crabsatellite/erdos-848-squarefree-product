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

def k4PrefixGroup0057NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0057TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0057MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0057 : List (List ℕ) :=
  [[7, 53, 167],
    [7, 53, 173],
    [7, 53, 179],
    [7, 53, 181],
    [7, 53, 191],
    [7, 53, 193],
    [7, 53, 197],
    [7, 53, 199],
    [7, 53, 211],
    [7, 53, 223],
    [7, 53, 227],
    [7, 53, 229],
    [7, 53, 233],
    [7, 53, 239],
    [7, 53, 241],
    [7, 53, 251],
    [7, 53, 257],
    [7, 53, 263],
    [7, 53, 269],
    [7, 53, 271],
    [7, 53, 277],
    [7, 53, 281],
    [7, 53, 283],
    [7, 53, 293],
    [7, 53, 307],
    [7, 53, 311],
    [7, 53, 313],
    [7, 53, 317],
    [7, 59, 61],
    [7, 59, 67],
    [7, 59, 71],
    [7, 59, 73],
    [7, 59, 79],
    [7, 59, 83],
    [7, 59, 89],
    [7, 59, 97],
    [7, 59, 101],
    [7, 59, 103],
    [7, 59, 107],
    [7, 59, 109],
    [7, 59, 113],
    [7, 59, 127],
    [7, 59, 131],
    [7, 59, 137],
    [7, 59, 139],
    [7, 59, 149],
    [7, 59, 151],
    [7, 59, 157],
    [7, 59, 163],
    [7, 59, 167],
    [7, 59, 173],
    [7, 59, 179],
    [7, 59, 181],
    [7, 59, 191],
    [7, 59, 193],
    [7, 59, 197],
    [7, 59, 199],
    [7, 59, 211],
    [7, 59, 223],
    [7, 59, 227],
    [7, 59, 229],
    [7, 59, 233],
    [7, 59, 239],
    [7, 59, 241]]

theorem k4PrefixGroup0057_support_covered :
    k4PrefixGroup0057.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0057MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0057_passes :
    k4PrefixGroup0057.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0057_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0057_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0057_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0057_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0057_mask_primes_pass :
    k4PrefixGroup0057MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  simp only [k4PrefixGroup0057MaskPrimes, List.all_append]
  rw [k4PrefixGroup0057_mask_group0000_passes]
  rw [k4PrefixGroup0057_mask_group0001_passes]
  rw [k4PrefixGroup0057_mask_group0002_passes]
  rw [k4PrefixGroup0057_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0057_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0057) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0057NormalLookup,
    k4PrefixGroup0057TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0057_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0057_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0057MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0057_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0057_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
