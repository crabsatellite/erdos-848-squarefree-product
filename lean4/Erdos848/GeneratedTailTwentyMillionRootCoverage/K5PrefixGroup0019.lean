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

def k5PrefixGroup0019NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k5PrefixGroup0019TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k5PrefixGroup0019MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k5PrefixGroup0019 : List (List ℕ) :=
  [[3, 13, 17, 181],
    [3, 13, 17, 191],
    [3, 13, 17, 193],
    [3, 13, 17, 197],
    [3, 13, 17, 199],
    [3, 13, 17, 211],
    [3, 13, 17, 223],
    [3, 13, 17, 227],
    [3, 13, 17, 229],
    [3, 13, 17, 233],
    [3, 13, 17, 239],
    [3, 13, 19, 23],
    [3, 13, 19, 29],
    [3, 13, 19, 31],
    [3, 13, 19, 37],
    [3, 13, 19, 41],
    [3, 13, 19, 43],
    [3, 13, 19, 47],
    [3, 13, 19, 53],
    [3, 13, 19, 59],
    [3, 13, 19, 61],
    [3, 13, 19, 67],
    [3, 13, 19, 71],
    [3, 13, 19, 73],
    [3, 13, 19, 79],
    [3, 13, 19, 83],
    [3, 13, 19, 89],
    [3, 13, 19, 97],
    [3, 13, 19, 101],
    [3, 13, 19, 103],
    [3, 13, 19, 107],
    [3, 13, 19, 109],
    [3, 13, 19, 113],
    [3, 13, 19, 127],
    [3, 13, 19, 131],
    [3, 13, 19, 137],
    [3, 13, 19, 139],
    [3, 13, 19, 149],
    [3, 13, 19, 151],
    [3, 13, 19, 157],
    [3, 13, 19, 163],
    [3, 13, 19, 167],
    [3, 13, 19, 173],
    [3, 13, 19, 179],
    [3, 13, 19, 181],
    [3, 13, 19, 191],
    [3, 13, 19, 193],
    [3, 13, 19, 197],
    [3, 13, 19, 199],
    [3, 13, 19, 211],
    [3, 13, 19, 223],
    [3, 13, 19, 227],
    [3, 13, 19, 229],
    [3, 13, 23, 29],
    [3, 13, 23, 31],
    [3, 13, 23, 37],
    [3, 13, 23, 41],
    [3, 13, 23, 43],
    [3, 13, 23, 47],
    [3, 13, 23, 53],
    [3, 13, 23, 59],
    [3, 13, 23, 61],
    [3, 13, 23, 67],
    [3, 13, 23, 71]]

theorem k5PrefixGroup0019_support_covered :
    k5PrefixGroup0019.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0019MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0019_passes :
    k5PrefixGroup0019.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0019_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0019NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0019TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0019_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0019NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0019TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0019_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0019NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0019TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0019_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k5PrefixGroup0019NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0019TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0019_mask_primes_pass :
    k5PrefixGroup0019MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  simp only [k5PrefixGroup0019MaskPrimes, List.all_append]
  rw [k5PrefixGroup0019_mask_group0000_passes]
  rw [k5PrefixGroup0019_mask_group0001_passes]
  rw [k5PrefixGroup0019_mask_group0002_passes]
  rw [k5PrefixGroup0019_mask_group0003_passes]
  rfl

theorem k5PrefixGroup0019_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0019) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0019NormalLookup,
    k5PrefixGroup0019TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0019_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0019_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0019MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0019_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0019_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
