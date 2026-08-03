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

def k4PrefixGroup0105NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0105TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0105MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0105 : List (List ℕ) :=
  [[19, 31, 199],
    [19, 31, 211],
    [19, 31, 223],
    [19, 31, 227],
    [19, 31, 229],
    [19, 31, 233],
    [19, 31, 239],
    [19, 31, 241],
    [19, 31, 251],
    [19, 31, 257],
    [19, 37, 41],
    [19, 37, 43],
    [19, 37, 47],
    [19, 37, 53],
    [19, 37, 59],
    [19, 37, 61],
    [19, 37, 67],
    [19, 37, 71],
    [19, 37, 73],
    [19, 37, 79],
    [19, 37, 83],
    [19, 37, 89],
    [19, 37, 97],
    [19, 37, 101],
    [19, 37, 103],
    [19, 37, 107],
    [19, 37, 109],
    [19, 37, 113],
    [19, 37, 127],
    [19, 37, 131],
    [19, 37, 137],
    [19, 37, 139],
    [19, 37, 149],
    [19, 37, 151],
    [19, 37, 157],
    [19, 37, 163],
    [19, 37, 167],
    [19, 37, 173],
    [19, 37, 179],
    [19, 37, 181],
    [19, 37, 191],
    [19, 37, 193],
    [19, 37, 197],
    [19, 37, 199],
    [19, 37, 211],
    [19, 37, 223],
    [19, 37, 227],
    [19, 37, 229],
    [19, 37, 233],
    [19, 41, 43],
    [19, 41, 47],
    [19, 41, 53],
    [19, 41, 59],
    [19, 41, 61],
    [19, 41, 67],
    [19, 41, 71],
    [19, 41, 73],
    [19, 41, 79],
    [19, 41, 83],
    [19, 41, 89],
    [19, 41, 97],
    [19, 41, 101],
    [19, 41, 103],
    [19, 41, 107]]

theorem k4PrefixGroup0105_support_covered :
    k4PrefixGroup0105.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0105MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0105_passes :
    k4PrefixGroup0105.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0105NormalLookup
        k4PrefixGroup0105TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0105_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0105NormalLookup
        k4PrefixGroup0105TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0105NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0105TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0105_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0105NormalLookup
        k4PrefixGroup0105TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0105NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0105TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0105_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0105NormalLookup
        k4PrefixGroup0105TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0105NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0105TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0105_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0105NormalLookup
        k4PrefixGroup0105TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0105NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0105TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0105_mask_primes_pass :
    k4PrefixGroup0105MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0105NormalLookup
        k4PrefixGroup0105TwistLookup) = true := by
  simp only [k4PrefixGroup0105MaskPrimes, List.all_append]
  rw [k4PrefixGroup0105_mask_group0000_passes]
  rw [k4PrefixGroup0105_mask_group0001_passes]
  rw [k4PrefixGroup0105_mask_group0002_passes]
  rw [k4PrefixGroup0105_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0105_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0105) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0105NormalLookup,
    k4PrefixGroup0105TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0105_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0105_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0105MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0105_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0105_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
