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

def k4PrefixGroup0104NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0104TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0104MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0104 : List (List ℕ) :=
  [[19, 29, 103],
    [19, 29, 107],
    [19, 29, 109],
    [19, 29, 113],
    [19, 29, 127],
    [19, 29, 131],
    [19, 29, 137],
    [19, 29, 139],
    [19, 29, 149],
    [19, 29, 151],
    [19, 29, 157],
    [19, 29, 163],
    [19, 29, 167],
    [19, 29, 173],
    [19, 29, 179],
    [19, 29, 181],
    [19, 29, 191],
    [19, 29, 193],
    [19, 29, 197],
    [19, 29, 199],
    [19, 29, 211],
    [19, 29, 223],
    [19, 29, 227],
    [19, 29, 229],
    [19, 29, 233],
    [19, 29, 239],
    [19, 29, 241],
    [19, 29, 251],
    [19, 29, 257],
    [19, 29, 263],
    [19, 31, 37],
    [19, 31, 41],
    [19, 31, 43],
    [19, 31, 47],
    [19, 31, 53],
    [19, 31, 59],
    [19, 31, 61],
    [19, 31, 67],
    [19, 31, 71],
    [19, 31, 73],
    [19, 31, 79],
    [19, 31, 83],
    [19, 31, 89],
    [19, 31, 97],
    [19, 31, 101],
    [19, 31, 103],
    [19, 31, 107],
    [19, 31, 109],
    [19, 31, 113],
    [19, 31, 127],
    [19, 31, 131],
    [19, 31, 137],
    [19, 31, 139],
    [19, 31, 149],
    [19, 31, 151],
    [19, 31, 157],
    [19, 31, 163],
    [19, 31, 167],
    [19, 31, 173],
    [19, 31, 179],
    [19, 31, 181],
    [19, 31, 191],
    [19, 31, 193],
    [19, 31, 197]]

theorem k4PrefixGroup0104_support_covered :
    k4PrefixGroup0104.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0104MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0104_passes :
    k4PrefixGroup0104.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0104NormalLookup
        k4PrefixGroup0104TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0104_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0104NormalLookup
        k4PrefixGroup0104TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0104NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0104TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0104_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0104NormalLookup
        k4PrefixGroup0104TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0104NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0104TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0104_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0104NormalLookup
        k4PrefixGroup0104TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0104NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0104TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0104_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0104NormalLookup
        k4PrefixGroup0104TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0104NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0104TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0104_mask_primes_pass :
    k4PrefixGroup0104MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0104NormalLookup
        k4PrefixGroup0104TwistLookup) = true := by
  simp only [k4PrefixGroup0104MaskPrimes, List.all_append]
  rw [k4PrefixGroup0104_mask_group0000_passes]
  rw [k4PrefixGroup0104_mask_group0001_passes]
  rw [k4PrefixGroup0104_mask_group0002_passes]
  rw [k4PrefixGroup0104_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0104_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0104) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0104NormalLookup,
    k4PrefixGroup0104TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0104_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0104_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0104MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0104_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0104_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
