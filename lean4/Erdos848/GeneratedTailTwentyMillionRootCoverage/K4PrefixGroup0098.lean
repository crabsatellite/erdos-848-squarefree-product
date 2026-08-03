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

def k4PrefixGroup0098NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0098TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0098MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0098 : List (List ℕ) :=
  [[17, 41, 179],
    [17, 41, 181],
    [17, 41, 191],
    [17, 41, 193],
    [17, 41, 197],
    [17, 41, 199],
    [17, 41, 211],
    [17, 41, 223],
    [17, 41, 227],
    [17, 41, 229],
    [17, 41, 233],
    [17, 43, 47],
    [17, 43, 53],
    [17, 43, 59],
    [17, 43, 61],
    [17, 43, 67],
    [17, 43, 71],
    [17, 43, 73],
    [17, 43, 79],
    [17, 43, 83],
    [17, 43, 89],
    [17, 43, 97],
    [17, 43, 101],
    [17, 43, 103],
    [17, 43, 107],
    [17, 43, 109],
    [17, 43, 113],
    [17, 43, 127],
    [17, 43, 131],
    [17, 43, 137],
    [17, 43, 139],
    [17, 43, 149],
    [17, 43, 151],
    [17, 43, 157],
    [17, 43, 163],
    [17, 43, 167],
    [17, 43, 173],
    [17, 43, 179],
    [17, 43, 181],
    [17, 43, 191],
    [17, 43, 193],
    [17, 43, 197],
    [17, 43, 199],
    [17, 43, 211],
    [17, 43, 223],
    [17, 43, 227],
    [17, 43, 229],
    [17, 47, 53],
    [17, 47, 59],
    [17, 47, 61],
    [17, 47, 67],
    [17, 47, 71],
    [17, 47, 73],
    [17, 47, 79],
    [17, 47, 83],
    [17, 47, 89],
    [17, 47, 97],
    [17, 47, 101],
    [17, 47, 103],
    [17, 47, 107],
    [17, 47, 109],
    [17, 47, 113],
    [17, 47, 127],
    [17, 47, 131]]

theorem k4PrefixGroup0098_support_covered :
    k4PrefixGroup0098.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0098MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0098_passes :
    k4PrefixGroup0098.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0098NormalLookup
        k4PrefixGroup0098TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0098_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0098NormalLookup
        k4PrefixGroup0098TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0098NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0098TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0098_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0098NormalLookup
        k4PrefixGroup0098TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0098NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0098TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0098_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0098NormalLookup
        k4PrefixGroup0098TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0098NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0098TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0098_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0098NormalLookup
        k4PrefixGroup0098TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0098NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0098TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0098_mask_primes_pass :
    k4PrefixGroup0098MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0098NormalLookup
        k4PrefixGroup0098TwistLookup) = true := by
  simp only [k4PrefixGroup0098MaskPrimes, List.all_append]
  rw [k4PrefixGroup0098_mask_group0000_passes]
  rw [k4PrefixGroup0098_mask_group0001_passes]
  rw [k4PrefixGroup0098_mask_group0002_passes]
  rw [k4PrefixGroup0098_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0098_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0098) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0098NormalLookup,
    k4PrefixGroup0098TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0098_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0098_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0098MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0098_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0098_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
