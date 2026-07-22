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

def k4PrefixGroup0070NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k4PrefixGroup0070TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k4PrefixGroup0070MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k4PrefixGroup0070 : List (List ℕ) :=
  [[11, 23, 197],
    [11, 23, 199],
    [11, 23, 211],
    [11, 23, 223],
    [11, 23, 227],
    [11, 23, 229],
    [11, 23, 233],
    [11, 23, 239],
    [11, 23, 241],
    [11, 23, 251],
    [11, 23, 257],
    [11, 23, 263],
    [11, 23, 269],
    [11, 23, 271],
    [11, 23, 277],
    [11, 23, 281],
    [11, 23, 283],
    [11, 23, 293],
    [11, 23, 307],
    [11, 23, 311],
    [11, 23, 313],
    [11, 23, 317],
    [11, 23, 331],
    [11, 23, 337],
    [11, 23, 347],
    [11, 23, 349],
    [11, 23, 353],
    [11, 23, 359],
    [11, 23, 367],
    [11, 23, 373],
    [11, 23, 379],
    [11, 23, 383],
    [11, 23, 389],
    [11, 29, 31],
    [11, 29, 37],
    [11, 29, 41],
    [11, 29, 43],
    [11, 29, 47],
    [11, 29, 53],
    [11, 29, 59],
    [11, 29, 61],
    [11, 29, 67],
    [11, 29, 71],
    [11, 29, 73],
    [11, 29, 79],
    [11, 29, 83],
    [11, 29, 89],
    [11, 29, 97],
    [11, 29, 101],
    [11, 29, 103],
    [11, 29, 107],
    [11, 29, 109],
    [11, 29, 113],
    [11, 29, 127],
    [11, 29, 131],
    [11, 29, 137],
    [11, 29, 139],
    [11, 29, 149],
    [11, 29, 151],
    [11, 29, 157],
    [11, 29, 163],
    [11, 29, 167],
    [11, 29, 173],
    [11, 29, 179]]

theorem k4PrefixGroup0070_support_covered :
    k4PrefixGroup0070.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0070MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0070_passes :
    k4PrefixGroup0070.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0070_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0070_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0070_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0070_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0070_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0070_mask_primes_pass :
    k4PrefixGroup0070MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  simp only [k4PrefixGroup0070MaskPrimes, List.all_append]
  rw [k4PrefixGroup0070_mask_group0000_passes]
  rw [k4PrefixGroup0070_mask_group0001_passes]
  rw [k4PrefixGroup0070_mask_group0002_passes]
  rw [k4PrefixGroup0070_mask_group0003_passes]
  rw [k4PrefixGroup0070_mask_group0004_passes]
  rfl

theorem k4PrefixGroup0070_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0070) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0070NormalLookup,
    k4PrefixGroup0070TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0070_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0070_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0070MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0070_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0070_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
