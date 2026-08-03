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

def k4PrefixGroup0059NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0059TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0059MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0059 : List (List ℕ) :=
  [[7, 67, 113],
    [7, 67, 127],
    [7, 67, 131],
    [7, 67, 137],
    [7, 67, 139],
    [7, 67, 149],
    [7, 67, 151],
    [7, 67, 157],
    [7, 67, 163],
    [7, 67, 167],
    [7, 67, 173],
    [7, 67, 179],
    [7, 67, 181],
    [7, 67, 191],
    [7, 67, 193],
    [7, 67, 197],
    [7, 67, 199],
    [7, 67, 211],
    [7, 67, 223],
    [7, 67, 227],
    [7, 67, 229],
    [7, 67, 233],
    [7, 67, 239],
    [7, 67, 241],
    [7, 67, 251],
    [7, 67, 257],
    [7, 67, 263],
    [7, 67, 269],
    [7, 67, 271],
    [7, 67, 277],
    [7, 67, 281],
    [7, 67, 283],
    [7, 71, 73],
    [7, 71, 79],
    [7, 71, 83],
    [7, 71, 89],
    [7, 71, 97],
    [7, 71, 101],
    [7, 71, 103],
    [7, 71, 107],
    [7, 71, 109],
    [7, 71, 113],
    [7, 71, 127],
    [7, 71, 131],
    [7, 71, 137],
    [7, 71, 139],
    [7, 71, 149],
    [7, 71, 151],
    [7, 71, 157],
    [7, 71, 163],
    [7, 71, 167],
    [7, 71, 173],
    [7, 71, 179],
    [7, 71, 181],
    [7, 71, 191],
    [7, 71, 193],
    [7, 71, 197],
    [7, 71, 199],
    [7, 71, 211],
    [7, 71, 223],
    [7, 71, 227],
    [7, 71, 229],
    [7, 71, 233],
    [7, 71, 239]]

theorem k4PrefixGroup0059_support_covered :
    k4PrefixGroup0059.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0059MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0059_passes :
    k4PrefixGroup0059.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0059_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0059TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0059_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0059TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0059_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0059TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0059_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0059NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0059TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0059_mask_primes_pass :
    k4PrefixGroup0059MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0059NormalLookup
        k4PrefixGroup0059TwistLookup) = true := by
  simp only [k4PrefixGroup0059MaskPrimes, List.all_append]
  rw [k4PrefixGroup0059_mask_group0000_passes]
  rw [k4PrefixGroup0059_mask_group0001_passes]
  rw [k4PrefixGroup0059_mask_group0002_passes]
  rw [k4PrefixGroup0059_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0059_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0059) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0059NormalLookup,
    k4PrefixGroup0059TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0059_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0059_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0059MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0059_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0059_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
