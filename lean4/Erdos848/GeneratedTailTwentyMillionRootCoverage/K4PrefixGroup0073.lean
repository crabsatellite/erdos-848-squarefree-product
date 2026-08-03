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

def k4PrefixGroup0073NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0073TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0073MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0073 : List (List ℕ) :=
  [[11, 37, 257],
    [11, 37, 263],
    [11, 37, 269],
    [11, 37, 271],
    [11, 37, 277],
    [11, 37, 281],
    [11, 37, 283],
    [11, 37, 293],
    [11, 37, 307],
    [11, 37, 311],
    [11, 41, 43],
    [11, 41, 47],
    [11, 41, 53],
    [11, 41, 59],
    [11, 41, 61],
    [11, 41, 67],
    [11, 41, 71],
    [11, 41, 73],
    [11, 41, 79],
    [11, 41, 83],
    [11, 41, 89],
    [11, 41, 97],
    [11, 41, 101],
    [11, 41, 103],
    [11, 41, 107],
    [11, 41, 109],
    [11, 41, 113],
    [11, 41, 127],
    [11, 41, 131],
    [11, 41, 137],
    [11, 41, 139],
    [11, 41, 149],
    [11, 41, 151],
    [11, 41, 157],
    [11, 41, 163],
    [11, 41, 167],
    [11, 41, 173],
    [11, 41, 179],
    [11, 41, 181],
    [11, 41, 191],
    [11, 41, 193],
    [11, 41, 197],
    [11, 41, 199],
    [11, 41, 211],
    [11, 41, 223],
    [11, 41, 227],
    [11, 41, 229],
    [11, 41, 233],
    [11, 41, 239],
    [11, 41, 241],
    [11, 41, 251],
    [11, 41, 257],
    [11, 41, 263],
    [11, 41, 269],
    [11, 41, 271],
    [11, 41, 277],
    [11, 41, 281],
    [11, 41, 283],
    [11, 43, 47],
    [11, 43, 53],
    [11, 43, 59],
    [11, 43, 61],
    [11, 43, 67],
    [11, 43, 71]]

theorem k4PrefixGroup0073_support_covered :
    k4PrefixGroup0073.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0073MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0073_passes :
    k4PrefixGroup0073.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0073_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0073NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0073TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0073_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0073NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0073TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0073_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0073NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0073TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0073_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0073NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0073TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0073_mask_primes_pass :
    k4PrefixGroup0073MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  simp only [k4PrefixGroup0073MaskPrimes, List.all_append]
  rw [k4PrefixGroup0073_mask_group0000_passes]
  rw [k4PrefixGroup0073_mask_group0001_passes]
  rw [k4PrefixGroup0073_mask_group0002_passes]
  rw [k4PrefixGroup0073_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0073_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0073) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0073NormalLookup,
    k4PrefixGroup0073TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0073_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0073_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0073MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0073_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0073_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
