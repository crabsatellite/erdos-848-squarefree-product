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

def k4PrefixGroup0111NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0111TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0111MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0111 : List (List ℕ) :=
  [[23, 29, 173],
    [23, 29, 179],
    [23, 29, 181],
    [23, 29, 191],
    [23, 29, 193],
    [23, 29, 197],
    [23, 29, 199],
    [23, 29, 211],
    [23, 29, 223],
    [23, 29, 227],
    [23, 29, 229],
    [23, 29, 233],
    [23, 29, 239],
    [23, 31, 37],
    [23, 31, 41],
    [23, 31, 43],
    [23, 31, 47],
    [23, 31, 53],
    [23, 31, 59],
    [23, 31, 61],
    [23, 31, 67],
    [23, 31, 71],
    [23, 31, 73],
    [23, 31, 79],
    [23, 31, 83],
    [23, 31, 89],
    [23, 31, 97],
    [23, 31, 101],
    [23, 31, 103],
    [23, 31, 107],
    [23, 31, 109],
    [23, 31, 113],
    [23, 31, 127],
    [23, 31, 131],
    [23, 31, 137],
    [23, 31, 139],
    [23, 31, 149],
    [23, 31, 151],
    [23, 31, 157],
    [23, 31, 163],
    [23, 31, 167],
    [23, 31, 173],
    [23, 31, 179],
    [23, 31, 181],
    [23, 31, 191],
    [23, 31, 193],
    [23, 31, 197],
    [23, 31, 199],
    [23, 31, 211],
    [23, 31, 223],
    [23, 31, 227],
    [23, 31, 229],
    [23, 31, 233],
    [23, 37, 41],
    [23, 37, 43],
    [23, 37, 47],
    [23, 37, 53],
    [23, 37, 59],
    [23, 37, 61],
    [23, 37, 67],
    [23, 37, 71],
    [23, 37, 73],
    [23, 37, 79],
    [23, 37, 83]]

theorem k4PrefixGroup0111_support_covered :
    k4PrefixGroup0111.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0111MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0111_passes :
    k4PrefixGroup0111.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0111NormalLookup
        k4PrefixGroup0111TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0111_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0111NormalLookup
        k4PrefixGroup0111TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0111NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0111TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0111_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0111NormalLookup
        k4PrefixGroup0111TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0111NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0111TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0111_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0111NormalLookup
        k4PrefixGroup0111TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0111NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0111TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0111_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0111NormalLookup
        k4PrefixGroup0111TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0111NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0111TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0111_mask_primes_pass :
    k4PrefixGroup0111MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0111NormalLookup
        k4PrefixGroup0111TwistLookup) = true := by
  simp only [k4PrefixGroup0111MaskPrimes, List.all_append]
  rw [k4PrefixGroup0111_mask_group0000_passes]
  rw [k4PrefixGroup0111_mask_group0001_passes]
  rw [k4PrefixGroup0111_mask_group0002_passes]
  rw [k4PrefixGroup0111_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0111_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0111) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0111NormalLookup,
    k4PrefixGroup0111TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0111_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0111_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0111MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0111_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0111_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
