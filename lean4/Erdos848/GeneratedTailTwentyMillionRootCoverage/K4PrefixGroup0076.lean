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

def k4PrefixGroup0076NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0076TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0076MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0076 : List (List ℕ) :=
  [[11, 59, 83],
    [11, 59, 89],
    [11, 59, 97],
    [11, 59, 101],
    [11, 59, 103],
    [11, 59, 107],
    [11, 59, 109],
    [11, 59, 113],
    [11, 59, 127],
    [11, 59, 131],
    [11, 59, 137],
    [11, 59, 139],
    [11, 59, 149],
    [11, 59, 151],
    [11, 59, 157],
    [11, 59, 163],
    [11, 59, 167],
    [11, 59, 173],
    [11, 59, 179],
    [11, 59, 181],
    [11, 59, 191],
    [11, 59, 193],
    [11, 59, 197],
    [11, 59, 199],
    [11, 59, 211],
    [11, 59, 223],
    [11, 59, 227],
    [11, 59, 229],
    [11, 59, 233],
    [11, 59, 239],
    [11, 59, 241],
    [11, 61, 67],
    [11, 61, 71],
    [11, 61, 73],
    [11, 61, 79],
    [11, 61, 83],
    [11, 61, 89],
    [11, 61, 97],
    [11, 61, 101],
    [11, 61, 103],
    [11, 61, 107],
    [11, 61, 109],
    [11, 61, 113],
    [11, 61, 127],
    [11, 61, 131],
    [11, 61, 137],
    [11, 61, 139],
    [11, 61, 149],
    [11, 61, 151],
    [11, 61, 157],
    [11, 61, 163],
    [11, 61, 167],
    [11, 61, 173],
    [11, 61, 179],
    [11, 61, 181],
    [11, 61, 191],
    [11, 61, 193],
    [11, 61, 197],
    [11, 61, 199],
    [11, 61, 211],
    [11, 61, 223],
    [11, 61, 227],
    [11, 61, 229],
    [11, 61, 233]]

theorem k4PrefixGroup0076_support_covered :
    k4PrefixGroup0076.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0076MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0076_passes :
    k4PrefixGroup0076.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0076_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0076NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0076TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0076_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0076NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0076TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0076_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0076NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0076TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0076_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0076NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0076TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0076_mask_primes_pass :
    k4PrefixGroup0076MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  simp only [k4PrefixGroup0076MaskPrimes, List.all_append]
  rw [k4PrefixGroup0076_mask_group0000_passes]
  rw [k4PrefixGroup0076_mask_group0001_passes]
  rw [k4PrefixGroup0076_mask_group0002_passes]
  rw [k4PrefixGroup0076_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0076_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0076) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0076NormalLookup,
    k4PrefixGroup0076TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0076_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0076_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0076MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0076_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0076_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
