import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0000NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k5PrefixGroup0000TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k5PrefixGroup0000MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k5PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13],
    [3, 7, 11, 17],
    [3, 7, 11, 19],
    [3, 7, 11, 23],
    [3, 7, 11, 29],
    [3, 7, 11, 31],
    [3, 7, 11, 37],
    [3, 7, 11, 41],
    [3, 7, 11, 43],
    [3, 7, 11, 47],
    [3, 7, 11, 53],
    [3, 7, 11, 59],
    [3, 7, 11, 61],
    [3, 7, 11, 67],
    [3, 7, 11, 71],
    [3, 7, 11, 73],
    [3, 7, 11, 79],
    [3, 7, 11, 83],
    [3, 7, 11, 89],
    [3, 7, 11, 97],
    [3, 7, 11, 101],
    [3, 7, 11, 103],
    [3, 7, 11, 107],
    [3, 7, 11, 109],
    [3, 7, 11, 113],
    [3, 7, 11, 127],
    [3, 7, 11, 131],
    [3, 7, 11, 137],
    [3, 7, 11, 139],
    [3, 7, 11, 149],
    [3, 7, 11, 151],
    [3, 7, 11, 157],
    [3, 7, 11, 163],
    [3, 7, 11, 167],
    [3, 7, 11, 173],
    [3, 7, 11, 179],
    [3, 7, 11, 181],
    [3, 7, 11, 191],
    [3, 7, 11, 193],
    [3, 7, 11, 197],
    [3, 7, 11, 199],
    [3, 7, 11, 211],
    [3, 7, 11, 223],
    [3, 7, 11, 227],
    [3, 7, 11, 229],
    [3, 7, 11, 233],
    [3, 7, 11, 239],
    [3, 7, 11, 241],
    [3, 7, 11, 251],
    [3, 7, 11, 257],
    [3, 7, 11, 263],
    [3, 7, 11, 269],
    [3, 7, 11, 271],
    [3, 7, 11, 277],
    [3, 7, 11, 281],
    [3, 7, 11, 283],
    [3, 7, 11, 293],
    [3, 7, 11, 307],
    [3, 7, 11, 311],
    [3, 7, 11, 313],
    [3, 7, 11, 317],
    [3, 7, 11, 331],
    [3, 7, 11, 337],
    [3, 7, 11, 347]]

theorem k5PrefixGroup0000_support_covered :
    k5PrefixGroup0000.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0000MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0000_passes :
    k5PrefixGroup0000.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0000_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0000TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0000_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0000TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0000_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0000TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0000_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k5PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0000TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0000_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k5PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0000TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0000_mask_primes_pass :
    k5PrefixGroup0000MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0000NormalLookup
        k5PrefixGroup0000TwistLookup) = true := by
  simp only [k5PrefixGroup0000MaskPrimes, List.all_append]
  rw [k5PrefixGroup0000_mask_group0000_passes]
  rw [k5PrefixGroup0000_mask_group0001_passes]
  rw [k5PrefixGroup0000_mask_group0002_passes]
  rw [k5PrefixGroup0000_mask_group0003_passes]
  rw [k5PrefixGroup0000_mask_group0004_passes]
  rfl

theorem k5PrefixGroup0000_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0000) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0000NormalLookup,
    k5PrefixGroup0000TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0000_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0000_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0000MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0000_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0000_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
