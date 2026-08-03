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

def k4PrefixGroup0096NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0096TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0096MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0096 : List (List ℕ) :=
  [[17, 29, 223],
    [17, 29, 227],
    [17, 29, 229],
    [17, 29, 233],
    [17, 29, 239],
    [17, 29, 241],
    [17, 29, 251],
    [17, 29, 257],
    [17, 29, 263],
    [17, 29, 269],
    [17, 29, 271],
    [17, 29, 277],
    [17, 29, 281],
    [17, 31, 37],
    [17, 31, 41],
    [17, 31, 43],
    [17, 31, 47],
    [17, 31, 53],
    [17, 31, 59],
    [17, 31, 61],
    [17, 31, 67],
    [17, 31, 71],
    [17, 31, 73],
    [17, 31, 79],
    [17, 31, 83],
    [17, 31, 89],
    [17, 31, 97],
    [17, 31, 101],
    [17, 31, 103],
    [17, 31, 107],
    [17, 31, 109],
    [17, 31, 113],
    [17, 31, 127],
    [17, 31, 131],
    [17, 31, 137],
    [17, 31, 139],
    [17, 31, 149],
    [17, 31, 151],
    [17, 31, 157],
    [17, 31, 163],
    [17, 31, 167],
    [17, 31, 173],
    [17, 31, 179],
    [17, 31, 181],
    [17, 31, 191],
    [17, 31, 193],
    [17, 31, 197],
    [17, 31, 199],
    [17, 31, 211],
    [17, 31, 223],
    [17, 31, 227],
    [17, 31, 229],
    [17, 31, 233],
    [17, 31, 239],
    [17, 31, 241],
    [17, 31, 251],
    [17, 31, 257],
    [17, 31, 263],
    [17, 31, 269],
    [17, 31, 271],
    [17, 37, 41],
    [17, 37, 43],
    [17, 37, 47],
    [17, 37, 53]]

theorem k4PrefixGroup0096_support_covered :
    k4PrefixGroup0096.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0096MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0096_passes :
    k4PrefixGroup0096.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0096NormalLookup
        k4PrefixGroup0096TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0096_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0096NormalLookup
        k4PrefixGroup0096TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0096NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0096TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0096_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0096NormalLookup
        k4PrefixGroup0096TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0096NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0096TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0096_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0096NormalLookup
        k4PrefixGroup0096TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0096NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0096TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0096_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0096NormalLookup
        k4PrefixGroup0096TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0096NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0096TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0096_mask_primes_pass :
    k4PrefixGroup0096MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0096NormalLookup
        k4PrefixGroup0096TwistLookup) = true := by
  simp only [k4PrefixGroup0096MaskPrimes, List.all_append]
  rw [k4PrefixGroup0096_mask_group0000_passes]
  rw [k4PrefixGroup0096_mask_group0001_passes]
  rw [k4PrefixGroup0096_mask_group0002_passes]
  rw [k4PrefixGroup0096_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0096_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0096) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0096NormalLookup,
    k4PrefixGroup0096TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0096_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0096_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0096MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0096_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0096_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
