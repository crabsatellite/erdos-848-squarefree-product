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

def k4PrefixGroup0087NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0087TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0087MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0087 : List (List ℕ) :=
  [[13, 41, 109],
    [13, 41, 113],
    [13, 41, 127],
    [13, 41, 131],
    [13, 41, 137],
    [13, 41, 139],
    [13, 41, 149],
    [13, 41, 151],
    [13, 41, 157],
    [13, 41, 163],
    [13, 41, 167],
    [13, 41, 173],
    [13, 41, 179],
    [13, 41, 181],
    [13, 41, 191],
    [13, 41, 193],
    [13, 41, 197],
    [13, 41, 199],
    [13, 41, 211],
    [13, 41, 223],
    [13, 41, 227],
    [13, 41, 229],
    [13, 41, 233],
    [13, 41, 239],
    [13, 41, 241],
    [13, 41, 251],
    [13, 41, 257],
    [13, 41, 263],
    [13, 41, 269],
    [13, 43, 47],
    [13, 43, 53],
    [13, 43, 59],
    [13, 43, 61],
    [13, 43, 67],
    [13, 43, 71],
    [13, 43, 73],
    [13, 43, 79],
    [13, 43, 83],
    [13, 43, 89],
    [13, 43, 97],
    [13, 43, 101],
    [13, 43, 103],
    [13, 43, 107],
    [13, 43, 109],
    [13, 43, 113],
    [13, 43, 127],
    [13, 43, 131],
    [13, 43, 137],
    [13, 43, 139],
    [13, 43, 149],
    [13, 43, 151],
    [13, 43, 157],
    [13, 43, 163],
    [13, 43, 167],
    [13, 43, 173],
    [13, 43, 179],
    [13, 43, 181],
    [13, 43, 191],
    [13, 43, 193],
    [13, 43, 197],
    [13, 43, 199],
    [13, 43, 211],
    [13, 43, 223],
    [13, 43, 227]]

theorem k4PrefixGroup0087_support_covered :
    k4PrefixGroup0087.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0087MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0087_passes :
    k4PrefixGroup0087.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0087NormalLookup
        k4PrefixGroup0087TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0087_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0087NormalLookup
        k4PrefixGroup0087TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0087NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0087TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0087_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0087NormalLookup
        k4PrefixGroup0087TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0087NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0087TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0087_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0087NormalLookup
        k4PrefixGroup0087TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0087NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0087TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0087_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0087NormalLookup
        k4PrefixGroup0087TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0087NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0087TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0087_mask_primes_pass :
    k4PrefixGroup0087MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0087NormalLookup
        k4PrefixGroup0087TwistLookup) = true := by
  simp only [k4PrefixGroup0087MaskPrimes, List.all_append]
  rw [k4PrefixGroup0087_mask_group0000_passes]
  rw [k4PrefixGroup0087_mask_group0001_passes]
  rw [k4PrefixGroup0087_mask_group0002_passes]
  rw [k4PrefixGroup0087_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0087_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0087) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0087NormalLookup,
    k4PrefixGroup0087TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0087_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0087_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0087MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0087_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0087_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
