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

def k4PrefixGroup0095NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0095TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0095MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0095 : List (List ℕ) :=
  [[17, 23, 167],
    [17, 23, 173],
    [17, 23, 179],
    [17, 23, 181],
    [17, 23, 191],
    [17, 23, 193],
    [17, 23, 197],
    [17, 23, 199],
    [17, 23, 211],
    [17, 23, 223],
    [17, 23, 227],
    [17, 23, 229],
    [17, 23, 233],
    [17, 23, 239],
    [17, 23, 241],
    [17, 23, 251],
    [17, 23, 257],
    [17, 23, 263],
    [17, 23, 269],
    [17, 23, 271],
    [17, 23, 277],
    [17, 23, 281],
    [17, 23, 283],
    [17, 23, 293],
    [17, 23, 307],
    [17, 23, 311],
    [17, 23, 313],
    [17, 29, 31],
    [17, 29, 37],
    [17, 29, 41],
    [17, 29, 43],
    [17, 29, 47],
    [17, 29, 53],
    [17, 29, 59],
    [17, 29, 61],
    [17, 29, 67],
    [17, 29, 71],
    [17, 29, 73],
    [17, 29, 79],
    [17, 29, 83],
    [17, 29, 89],
    [17, 29, 97],
    [17, 29, 101],
    [17, 29, 103],
    [17, 29, 107],
    [17, 29, 109],
    [17, 29, 113],
    [17, 29, 127],
    [17, 29, 131],
    [17, 29, 137],
    [17, 29, 139],
    [17, 29, 149],
    [17, 29, 151],
    [17, 29, 157],
    [17, 29, 163],
    [17, 29, 167],
    [17, 29, 173],
    [17, 29, 179],
    [17, 29, 181],
    [17, 29, 191],
    [17, 29, 193],
    [17, 29, 197],
    [17, 29, 199],
    [17, 29, 211]]

theorem k4PrefixGroup0095_support_covered :
    k4PrefixGroup0095.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0095MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0095_passes :
    k4PrefixGroup0095.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0095NormalLookup
        k4PrefixGroup0095TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0095_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0095NormalLookup
        k4PrefixGroup0095TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0095NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0095TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0095_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0095NormalLookup
        k4PrefixGroup0095TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0095NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0095TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0095_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0095NormalLookup
        k4PrefixGroup0095TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0095NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0095TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0095_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0095NormalLookup
        k4PrefixGroup0095TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0095NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0095TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0095_mask_primes_pass :
    k4PrefixGroup0095MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0095NormalLookup
        k4PrefixGroup0095TwistLookup) = true := by
  simp only [k4PrefixGroup0095MaskPrimes, List.all_append]
  rw [k4PrefixGroup0095_mask_group0000_passes]
  rw [k4PrefixGroup0095_mask_group0001_passes]
  rw [k4PrefixGroup0095_mask_group0002_passes]
  rw [k4PrefixGroup0095_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0095_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0095) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0095NormalLookup,
    k4PrefixGroup0095TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0095_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0095_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0095MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0095_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0095_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
