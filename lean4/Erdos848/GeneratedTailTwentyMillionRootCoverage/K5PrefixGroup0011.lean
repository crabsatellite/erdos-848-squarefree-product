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

def k5PrefixGroup0011NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k5PrefixGroup0011TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k5PrefixGroup0011MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k5PrefixGroup0011 : List (List ℕ) :=
  [[3, 7, 103, 113],
    [3, 7, 103, 127],
    [3, 7, 103, 131],
    [3, 7, 107, 109],
    [3, 7, 107, 113],
    [3, 7, 107, 127],
    [3, 7, 109, 113],
    [3, 7, 109, 127],
    [3, 7, 113, 127],
    [3, 11, 13, 17],
    [3, 11, 13, 19],
    [3, 11, 13, 23],
    [3, 11, 13, 29],
    [3, 11, 13, 31],
    [3, 11, 13, 37],
    [3, 11, 13, 41],
    [3, 11, 13, 43],
    [3, 11, 13, 47],
    [3, 11, 13, 53],
    [3, 11, 13, 59],
    [3, 11, 13, 61],
    [3, 11, 13, 67],
    [3, 11, 13, 71],
    [3, 11, 13, 73],
    [3, 11, 13, 79],
    [3, 11, 13, 83],
    [3, 11, 13, 89],
    [3, 11, 13, 97],
    [3, 11, 13, 101],
    [3, 11, 13, 103],
    [3, 11, 13, 107],
    [3, 11, 13, 109],
    [3, 11, 13, 113],
    [3, 11, 13, 127],
    [3, 11, 13, 131],
    [3, 11, 13, 137],
    [3, 11, 13, 139],
    [3, 11, 13, 149],
    [3, 11, 13, 151],
    [3, 11, 13, 157],
    [3, 11, 13, 163],
    [3, 11, 13, 167],
    [3, 11, 13, 173],
    [3, 11, 13, 179],
    [3, 11, 13, 181],
    [3, 11, 13, 191],
    [3, 11, 13, 193],
    [3, 11, 13, 197],
    [3, 11, 13, 199],
    [3, 11, 13, 211],
    [3, 11, 13, 223],
    [3, 11, 13, 227],
    [3, 11, 13, 229],
    [3, 11, 13, 233],
    [3, 11, 13, 239],
    [3, 11, 13, 241],
    [3, 11, 13, 251],
    [3, 11, 13, 257],
    [3, 11, 13, 263],
    [3, 11, 13, 269],
    [3, 11, 13, 271],
    [3, 11, 13, 277],
    [3, 11, 13, 281],
    [3, 11, 13, 283]]

theorem k5PrefixGroup0011_support_covered :
    k5PrefixGroup0011.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0011MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0011_passes :
    k5PrefixGroup0011.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0011_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0011_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0011_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0011_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0011_mask_primes_pass :
    k5PrefixGroup0011MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  simp only [k5PrefixGroup0011MaskPrimes, List.all_append]
  rw [k5PrefixGroup0011_mask_group0000_passes]
  rw [k5PrefixGroup0011_mask_group0001_passes]
  rw [k5PrefixGroup0011_mask_group0002_passes]
  rw [k5PrefixGroup0011_mask_group0003_passes]
  rfl

theorem k5PrefixGroup0011_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0011) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0011NormalLookup,
    k5PrefixGroup0011TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0011_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0011_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0011MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0011_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0011_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
