import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0036NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k4PrefixGroup0036TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k4PrefixGroup0036MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k4PrefixGroup0036 : List (List ℕ) :=
  [[3, 109, 113],
    [3, 109, 127],
    [3, 109, 131],
    [3, 109, 137],
    [3, 109, 139],
    [3, 109, 149],
    [3, 109, 151],
    [3, 109, 157],
    [3, 109, 163],
    [3, 109, 167],
    [3, 109, 173],
    [3, 109, 179],
    [3, 109, 181],
    [3, 109, 191],
    [3, 109, 193],
    [3, 109, 197],
    [3, 109, 199],
    [3, 109, 211],
    [3, 109, 223],
    [3, 109, 227],
    [3, 109, 229],
    [3, 109, 233],
    [3, 109, 239],
    [3, 109, 241],
    [3, 109, 251],
    [3, 109, 257],
    [3, 109, 263],
    [3, 109, 269],
    [3, 109, 271],
    [3, 109, 277],
    [3, 109, 281],
    [3, 109, 283],
    [3, 109, 293],
    [3, 109, 307],
    [3, 109, 311],
    [3, 109, 313],
    [3, 109, 317],
    [3, 109, 331],
    [3, 109, 337],
    [3, 109, 347],
    [3, 113, 127],
    [3, 113, 131],
    [3, 113, 137],
    [3, 113, 139],
    [3, 113, 149],
    [3, 113, 151],
    [3, 113, 157],
    [3, 113, 163],
    [3, 113, 167],
    [3, 113, 173],
    [3, 113, 179],
    [3, 113, 181],
    [3, 113, 191],
    [3, 113, 193],
    [3, 113, 197],
    [3, 113, 199],
    [3, 113, 211],
    [3, 113, 223],
    [3, 113, 227],
    [3, 113, 229],
    [3, 113, 233],
    [3, 113, 239],
    [3, 113, 241],
    [3, 113, 251]]

theorem k4PrefixGroup0036_support_covered :
    k4PrefixGroup0036.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0036MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0036_passes :
    k4PrefixGroup0036.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0036_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0036_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0036_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0036_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0036_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k4PrefixGroup0036NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0036TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0036_mask_primes_pass :
    k4PrefixGroup0036MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0036NormalLookup
        k4PrefixGroup0036TwistLookup) = true := by
  simp only [k4PrefixGroup0036MaskPrimes, List.all_append]
  rw [k4PrefixGroup0036_mask_group0000_passes]
  rw [k4PrefixGroup0036_mask_group0001_passes]
  rw [k4PrefixGroup0036_mask_group0002_passes]
  rw [k4PrefixGroup0036_mask_group0003_passes]
  rw [k4PrefixGroup0036_mask_group0004_passes]
  rfl

theorem k4PrefixGroup0036_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0036) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0036NormalLookup,
    k4PrefixGroup0036TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0036_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0036_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0036MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0036_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0036_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
