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

def k4PrefixGroup0077NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0077TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0077MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0077 : List (List ℕ) :=
  [[11, 61, 239],
    [11, 67, 71],
    [11, 67, 73],
    [11, 67, 79],
    [11, 67, 83],
    [11, 67, 89],
    [11, 67, 97],
    [11, 67, 101],
    [11, 67, 103],
    [11, 67, 107],
    [11, 67, 109],
    [11, 67, 113],
    [11, 67, 127],
    [11, 67, 131],
    [11, 67, 137],
    [11, 67, 139],
    [11, 67, 149],
    [11, 67, 151],
    [11, 67, 157],
    [11, 67, 163],
    [11, 67, 167],
    [11, 67, 173],
    [11, 67, 179],
    [11, 67, 181],
    [11, 67, 191],
    [11, 67, 193],
    [11, 67, 197],
    [11, 67, 199],
    [11, 67, 211],
    [11, 67, 223],
    [11, 67, 227],
    [11, 67, 229],
    [11, 71, 73],
    [11, 71, 79],
    [11, 71, 83],
    [11, 71, 89],
    [11, 71, 97],
    [11, 71, 101],
    [11, 71, 103],
    [11, 71, 107],
    [11, 71, 109],
    [11, 71, 113],
    [11, 71, 127],
    [11, 71, 131],
    [11, 71, 137],
    [11, 71, 139],
    [11, 71, 149],
    [11, 71, 151],
    [11, 71, 157],
    [11, 71, 163],
    [11, 71, 167],
    [11, 71, 173],
    [11, 71, 179],
    [11, 71, 181],
    [11, 71, 191],
    [11, 71, 193],
    [11, 71, 197],
    [11, 71, 199],
    [11, 71, 211],
    [11, 71, 223],
    [11, 73, 79],
    [11, 73, 83],
    [11, 73, 89],
    [11, 73, 97]]

theorem k4PrefixGroup0077_support_covered :
    k4PrefixGroup0077.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0077MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0077_passes :
    k4PrefixGroup0077.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0077_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0077_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0077_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0077_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0077_mask_primes_pass :
    k4PrefixGroup0077MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  simp only [k4PrefixGroup0077MaskPrimes, List.all_append]
  rw [k4PrefixGroup0077_mask_group0000_passes]
  rw [k4PrefixGroup0077_mask_group0001_passes]
  rw [k4PrefixGroup0077_mask_group0002_passes]
  rw [k4PrefixGroup0077_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0077_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0077) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0077NormalLookup,
    k4PrefixGroup0077TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0077_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0077_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0077MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0077_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0077_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
