import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0005

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0050NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  []

def k4PrefixGroup0050TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  []

def k4PrefixGroup0050MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005

def k4PrefixGroup0050 : List (List ℕ) :=
  [[7, 23, 239],
    [7, 23, 241],
    [7, 23, 251],
    [7, 23, 257],
    [7, 23, 263],
    [7, 23, 269],
    [7, 23, 271],
    [7, 23, 277],
    [7, 23, 281],
    [7, 23, 283],
    [7, 23, 293],
    [7, 23, 307],
    [7, 23, 311],
    [7, 23, 313],
    [7, 23, 317],
    [7, 23, 331],
    [7, 23, 337],
    [7, 23, 347],
    [7, 23, 349],
    [7, 23, 353],
    [7, 23, 359],
    [7, 23, 367],
    [7, 23, 373],
    [7, 23, 379],
    [7, 23, 383],
    [7, 23, 389],
    [7, 23, 397],
    [7, 23, 401],
    [7, 23, 409],
    [7, 23, 419],
    [7, 23, 421],
    [7, 23, 431],
    [7, 23, 433],
    [7, 23, 439],
    [7, 23, 443],
    [7, 23, 449],
    [7, 23, 457],
    [7, 23, 461],
    [7, 23, 463],
    [7, 23, 467],
    [7, 23, 479],
    [7, 23, 487],
    [7, 23, 491],
    [7, 29, 31],
    [7, 29, 37],
    [7, 29, 41],
    [7, 29, 43],
    [7, 29, 47],
    [7, 29, 53],
    [7, 29, 59],
    [7, 29, 61],
    [7, 29, 67],
    [7, 29, 71],
    [7, 29, 73],
    [7, 29, 79],
    [7, 29, 83],
    [7, 29, 89],
    [7, 29, 97],
    [7, 29, 101],
    [7, 29, 103],
    [7, 29, 107],
    [7, 29, 109],
    [7, 29, 113],
    [7, 29, 127]]

theorem k4PrefixGroup0050_support_covered :
    k4PrefixGroup0050.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0050MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0050_passes :
    k4PrefixGroup0050.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0050_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0050_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0050_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0050_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0050_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0050_mask_primes_pass :
    k4PrefixGroup0050MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  simp only [k4PrefixGroup0050MaskPrimes, List.all_append]
  rw [k4PrefixGroup0050_mask_group0000_passes]
  rw [k4PrefixGroup0050_mask_group0001_passes]
  rw [k4PrefixGroup0050_mask_group0003_passes]
  rw [k4PrefixGroup0050_mask_group0004_passes]
  rw [k4PrefixGroup0050_mask_group0005_passes]
  rfl

theorem k4PrefixGroup0050_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0050) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0050NormalLookup,
    k4PrefixGroup0050TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0050_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0050_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0050MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0050_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0050_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
