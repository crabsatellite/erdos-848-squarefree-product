import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0008

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0013NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  []

def k4PrefixGroup0013TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  []

def k4PrefixGroup0013MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0008

def k4PrefixGroup0013 : List (List ℕ) :=
  [[3, 19, 773],
    [3, 19, 787],
    [3, 19, 797],
    [3, 19, 809],
    [3, 19, 811],
    [3, 19, 821],
    [3, 19, 823],
    [3, 19, 827],
    [3, 19, 829],
    [3, 23, 29],
    [3, 23, 31],
    [3, 23, 37],
    [3, 23, 41],
    [3, 23, 43],
    [3, 23, 47],
    [3, 23, 53],
    [3, 23, 59],
    [3, 23, 61],
    [3, 23, 67],
    [3, 23, 71],
    [3, 23, 73],
    [3, 23, 79],
    [3, 23, 83],
    [3, 23, 89],
    [3, 23, 97],
    [3, 23, 101],
    [3, 23, 103],
    [3, 23, 107],
    [3, 23, 109],
    [3, 23, 113],
    [3, 23, 127],
    [3, 23, 131],
    [3, 23, 137],
    [3, 23, 139],
    [3, 23, 149],
    [3, 23, 151],
    [3, 23, 157],
    [3, 23, 163],
    [3, 23, 167],
    [3, 23, 173],
    [3, 23, 179],
    [3, 23, 181],
    [3, 23, 191],
    [3, 23, 193],
    [3, 23, 197],
    [3, 23, 199],
    [3, 23, 211],
    [3, 23, 223],
    [3, 23, 227],
    [3, 23, 229],
    [3, 23, 233],
    [3, 23, 239],
    [3, 23, 241],
    [3, 23, 251],
    [3, 23, 257],
    [3, 23, 263],
    [3, 23, 269],
    [3, 23, 271],
    [3, 23, 277],
    [3, 23, 281],
    [3, 23, 283],
    [3, 23, 293],
    [3, 23, 307],
    [3, 23, 311]]

theorem k4PrefixGroup0013_support_covered :
    k4PrefixGroup0013.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0013MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0013_passes :
    k4PrefixGroup0013.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0013_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0013_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0013_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0013_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0013_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k4PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0013_mask_primes_pass :
    k4PrefixGroup0013MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0013NormalLookup
        k4PrefixGroup0013TwistLookup) = true := by
  simp only [k4PrefixGroup0013MaskPrimes, List.all_append]
  rw [k4PrefixGroup0013_mask_group0000_passes]
  rw [k4PrefixGroup0013_mask_group0001_passes]
  rw [k4PrefixGroup0013_mask_group0002_passes]
  rw [k4PrefixGroup0013_mask_group0003_passes]
  rw [k4PrefixGroup0013_mask_group0008_passes]
  rfl

theorem k4PrefixGroup0013_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0013) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0013NormalLookup,
    k4PrefixGroup0013TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0013_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0013_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0013MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0013_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0013_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
