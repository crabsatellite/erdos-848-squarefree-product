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

def k4PrefixGroup0103NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0103TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0103MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0103 : List (List ℕ) :=
  [[19, 23, 47],
    [19, 23, 53],
    [19, 23, 59],
    [19, 23, 61],
    [19, 23, 67],
    [19, 23, 71],
    [19, 23, 73],
    [19, 23, 79],
    [19, 23, 83],
    [19, 23, 89],
    [19, 23, 97],
    [19, 23, 101],
    [19, 23, 103],
    [19, 23, 107],
    [19, 23, 109],
    [19, 23, 113],
    [19, 23, 127],
    [19, 23, 131],
    [19, 23, 137],
    [19, 23, 139],
    [19, 23, 149],
    [19, 23, 151],
    [19, 23, 157],
    [19, 23, 163],
    [19, 23, 167],
    [19, 23, 173],
    [19, 23, 179],
    [19, 23, 181],
    [19, 23, 191],
    [19, 23, 193],
    [19, 23, 197],
    [19, 23, 199],
    [19, 23, 211],
    [19, 23, 223],
    [19, 23, 227],
    [19, 23, 229],
    [19, 23, 233],
    [19, 23, 239],
    [19, 23, 241],
    [19, 23, 251],
    [19, 23, 257],
    [19, 23, 263],
    [19, 23, 269],
    [19, 23, 271],
    [19, 23, 277],
    [19, 23, 281],
    [19, 23, 283],
    [19, 23, 293],
    [19, 29, 31],
    [19, 29, 37],
    [19, 29, 41],
    [19, 29, 43],
    [19, 29, 47],
    [19, 29, 53],
    [19, 29, 59],
    [19, 29, 61],
    [19, 29, 67],
    [19, 29, 71],
    [19, 29, 73],
    [19, 29, 79],
    [19, 29, 83],
    [19, 29, 89],
    [19, 29, 97],
    [19, 29, 101]]

theorem k4PrefixGroup0103_support_covered :
    k4PrefixGroup0103.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0103MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0103_passes :
    k4PrefixGroup0103.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0103NormalLookup
        k4PrefixGroup0103TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0103_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0103NormalLookup
        k4PrefixGroup0103TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0103NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0103TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0103_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0103NormalLookup
        k4PrefixGroup0103TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0103NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0103TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0103_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0103NormalLookup
        k4PrefixGroup0103TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0103NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0103TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0103_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0103NormalLookup
        k4PrefixGroup0103TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0103NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0103TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0103_mask_primes_pass :
    k4PrefixGroup0103MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0103NormalLookup
        k4PrefixGroup0103TwistLookup) = true := by
  simp only [k4PrefixGroup0103MaskPrimes, List.all_append]
  rw [k4PrefixGroup0103_mask_group0000_passes]
  rw [k4PrefixGroup0103_mask_group0001_passes]
  rw [k4PrefixGroup0103_mask_group0002_passes]
  rw [k4PrefixGroup0103_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0103_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0103) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0103NormalLookup,
    k4PrefixGroup0103TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0103_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0103_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0103MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0103_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0103_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
