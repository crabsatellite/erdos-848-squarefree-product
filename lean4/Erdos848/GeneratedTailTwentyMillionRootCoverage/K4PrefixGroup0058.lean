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

def k4PrefixGroup0058NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0058TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0058MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0058 : List (List ℕ) :=
  [[7, 59, 251],
    [7, 59, 257],
    [7, 59, 263],
    [7, 59, 269],
    [7, 59, 271],
    [7, 59, 277],
    [7, 59, 281],
    [7, 59, 283],
    [7, 59, 293],
    [7, 59, 307],
    [7, 61, 67],
    [7, 61, 71],
    [7, 61, 73],
    [7, 61, 79],
    [7, 61, 83],
    [7, 61, 89],
    [7, 61, 97],
    [7, 61, 101],
    [7, 61, 103],
    [7, 61, 107],
    [7, 61, 109],
    [7, 61, 113],
    [7, 61, 127],
    [7, 61, 131],
    [7, 61, 137],
    [7, 61, 139],
    [7, 61, 149],
    [7, 61, 151],
    [7, 61, 157],
    [7, 61, 163],
    [7, 61, 167],
    [7, 61, 173],
    [7, 61, 179],
    [7, 61, 181],
    [7, 61, 191],
    [7, 61, 193],
    [7, 61, 197],
    [7, 61, 199],
    [7, 61, 211],
    [7, 61, 223],
    [7, 61, 227],
    [7, 61, 229],
    [7, 61, 233],
    [7, 61, 239],
    [7, 61, 241],
    [7, 61, 251],
    [7, 61, 257],
    [7, 61, 263],
    [7, 61, 269],
    [7, 61, 271],
    [7, 61, 277],
    [7, 61, 281],
    [7, 61, 283],
    [7, 61, 293],
    [7, 67, 71],
    [7, 67, 73],
    [7, 67, 79],
    [7, 67, 83],
    [7, 67, 89],
    [7, 67, 97],
    [7, 67, 101],
    [7, 67, 103],
    [7, 67, 107],
    [7, 67, 109]]

theorem k4PrefixGroup0058_support_covered :
    k4PrefixGroup0058.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0058MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0058_passes :
    k4PrefixGroup0058.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0058_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0058_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0058_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0058_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0058_mask_primes_pass :
    k4PrefixGroup0058MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  simp only [k4PrefixGroup0058MaskPrimes, List.all_append]
  rw [k4PrefixGroup0058_mask_group0000_passes]
  rw [k4PrefixGroup0058_mask_group0001_passes]
  rw [k4PrefixGroup0058_mask_group0002_passes]
  rw [k4PrefixGroup0058_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0058_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0058) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0058NormalLookup,
    k4PrefixGroup0058TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0058_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0058_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0058MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0058_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0058_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
