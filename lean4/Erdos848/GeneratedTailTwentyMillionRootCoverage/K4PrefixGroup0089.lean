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

def k4PrefixGroup0089NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0089TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0089MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0089 : List (List ℕ) :=
  [[13, 53, 149],
    [13, 53, 151],
    [13, 53, 157],
    [13, 53, 163],
    [13, 53, 167],
    [13, 53, 173],
    [13, 53, 179],
    [13, 53, 181],
    [13, 53, 191],
    [13, 53, 193],
    [13, 53, 197],
    [13, 53, 199],
    [13, 53, 211],
    [13, 53, 223],
    [13, 53, 227],
    [13, 53, 229],
    [13, 53, 233],
    [13, 53, 239],
    [13, 59, 61],
    [13, 59, 67],
    [13, 59, 71],
    [13, 59, 73],
    [13, 59, 79],
    [13, 59, 83],
    [13, 59, 89],
    [13, 59, 97],
    [13, 59, 101],
    [13, 59, 103],
    [13, 59, 107],
    [13, 59, 109],
    [13, 59, 113],
    [13, 59, 127],
    [13, 59, 131],
    [13, 59, 137],
    [13, 59, 139],
    [13, 59, 149],
    [13, 59, 151],
    [13, 59, 157],
    [13, 59, 163],
    [13, 59, 167],
    [13, 59, 173],
    [13, 59, 179],
    [13, 59, 181],
    [13, 59, 191],
    [13, 59, 193],
    [13, 59, 197],
    [13, 59, 199],
    [13, 59, 211],
    [13, 59, 223],
    [13, 59, 227],
    [13, 61, 67],
    [13, 61, 71],
    [13, 61, 73],
    [13, 61, 79],
    [13, 61, 83],
    [13, 61, 89],
    [13, 61, 97],
    [13, 61, 101],
    [13, 61, 103],
    [13, 61, 107],
    [13, 61, 109],
    [13, 61, 113],
    [13, 61, 127],
    [13, 61, 131]]

theorem k4PrefixGroup0089_support_covered :
    k4PrefixGroup0089.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0089MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0089_passes :
    k4PrefixGroup0089.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0089NormalLookup
        k4PrefixGroup0089TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0089_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0089NormalLookup
        k4PrefixGroup0089TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0089NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0089TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0089_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0089NormalLookup
        k4PrefixGroup0089TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0089NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0089TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0089_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0089NormalLookup
        k4PrefixGroup0089TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0089NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0089TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0089_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0089NormalLookup
        k4PrefixGroup0089TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0089NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0089TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0089_mask_primes_pass :
    k4PrefixGroup0089MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0089NormalLookup
        k4PrefixGroup0089TwistLookup) = true := by
  simp only [k4PrefixGroup0089MaskPrimes, List.all_append]
  rw [k4PrefixGroup0089_mask_group0000_passes]
  rw [k4PrefixGroup0089_mask_group0001_passes]
  rw [k4PrefixGroup0089_mask_group0002_passes]
  rw [k4PrefixGroup0089_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0089_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0089) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0089NormalLookup,
    k4PrefixGroup0089TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0089_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0089_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0089MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0089_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0089_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
