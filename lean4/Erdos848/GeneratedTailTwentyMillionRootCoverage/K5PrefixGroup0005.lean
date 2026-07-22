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

def k5PrefixGroup0005NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k5PrefixGroup0005TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k5PrefixGroup0005MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k5PrefixGroup0005 : List (List ℕ) :=
  [[3, 7, 29, 67],
    [3, 7, 29, 71],
    [3, 7, 29, 73],
    [3, 7, 29, 79],
    [3, 7, 29, 83],
    [3, 7, 29, 89],
    [3, 7, 29, 97],
    [3, 7, 29, 101],
    [3, 7, 29, 103],
    [3, 7, 29, 107],
    [3, 7, 29, 109],
    [3, 7, 29, 113],
    [3, 7, 29, 127],
    [3, 7, 29, 131],
    [3, 7, 29, 137],
    [3, 7, 29, 139],
    [3, 7, 29, 149],
    [3, 7, 29, 151],
    [3, 7, 29, 157],
    [3, 7, 29, 163],
    [3, 7, 29, 167],
    [3, 7, 29, 173],
    [3, 7, 29, 179],
    [3, 7, 29, 181],
    [3, 7, 29, 191],
    [3, 7, 29, 193],
    [3, 7, 29, 197],
    [3, 7, 29, 199],
    [3, 7, 29, 211],
    [3, 7, 29, 223],
    [3, 7, 29, 227],
    [3, 7, 29, 229],
    [3, 7, 29, 233],
    [3, 7, 29, 239],
    [3, 7, 29, 241],
    [3, 7, 29, 251],
    [3, 7, 31, 37],
    [3, 7, 31, 41],
    [3, 7, 31, 43],
    [3, 7, 31, 47],
    [3, 7, 31, 53],
    [3, 7, 31, 59],
    [3, 7, 31, 61],
    [3, 7, 31, 67],
    [3, 7, 31, 71],
    [3, 7, 31, 73],
    [3, 7, 31, 79],
    [3, 7, 31, 83],
    [3, 7, 31, 89],
    [3, 7, 31, 97],
    [3, 7, 31, 101],
    [3, 7, 31, 103],
    [3, 7, 31, 107],
    [3, 7, 31, 109],
    [3, 7, 31, 113],
    [3, 7, 31, 127],
    [3, 7, 31, 131],
    [3, 7, 31, 137],
    [3, 7, 31, 139],
    [3, 7, 31, 149],
    [3, 7, 31, 151],
    [3, 7, 31, 157],
    [3, 7, 31, 163],
    [3, 7, 31, 167]]

theorem k5PrefixGroup0005_support_covered :
    k5PrefixGroup0005.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0005MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0005_passes :
    k5PrefixGroup0005.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0005NormalLookup
        k5PrefixGroup0005TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0005_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0005NormalLookup
        k5PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0005_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0005NormalLookup
        k5PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0005_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0005NormalLookup
        k5PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0005_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0005NormalLookup
        k5PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k5PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0005_mask_primes_pass :
    k5PrefixGroup0005MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0005NormalLookup
        k5PrefixGroup0005TwistLookup) = true := by
  simp only [k5PrefixGroup0005MaskPrimes, List.all_append]
  rw [k5PrefixGroup0005_mask_group0000_passes]
  rw [k5PrefixGroup0005_mask_group0001_passes]
  rw [k5PrefixGroup0005_mask_group0002_passes]
  rw [k5PrefixGroup0005_mask_group0003_passes]
  rfl

theorem k5PrefixGroup0005_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0005) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0005NormalLookup,
    k5PrefixGroup0005TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0005_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0005_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0005MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0005_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0005_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
