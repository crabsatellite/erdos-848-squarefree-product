import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0005

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0066NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  []

def k4PrefixGroup0066TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  []

def k4PrefixGroup0066MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005

def k4PrefixGroup0066 : List (List ℕ) :=
  [[11, 13, 151],
    [11, 13, 157],
    [11, 13, 163],
    [11, 13, 167],
    [11, 13, 173],
    [11, 13, 179],
    [11, 13, 181],
    [11, 13, 191],
    [11, 13, 193],
    [11, 13, 197],
    [11, 13, 199],
    [11, 13, 211],
    [11, 13, 223],
    [11, 13, 227],
    [11, 13, 229],
    [11, 13, 233],
    [11, 13, 239],
    [11, 13, 241],
    [11, 13, 251],
    [11, 13, 257],
    [11, 13, 263],
    [11, 13, 269],
    [11, 13, 271],
    [11, 13, 277],
    [11, 13, 281],
    [11, 13, 283],
    [11, 13, 293],
    [11, 13, 307],
    [11, 13, 311],
    [11, 13, 313],
    [11, 13, 317],
    [11, 13, 331],
    [11, 13, 337],
    [11, 13, 347],
    [11, 13, 349],
    [11, 13, 353],
    [11, 13, 359],
    [11, 13, 367],
    [11, 13, 373],
    [11, 13, 379],
    [11, 13, 383],
    [11, 13, 389],
    [11, 13, 397],
    [11, 13, 401],
    [11, 13, 409],
    [11, 13, 419],
    [11, 13, 421],
    [11, 13, 431],
    [11, 13, 433],
    [11, 13, 439],
    [11, 13, 443],
    [11, 13, 449],
    [11, 13, 457],
    [11, 13, 461],
    [11, 13, 463],
    [11, 13, 467],
    [11, 13, 479],
    [11, 13, 487],
    [11, 13, 491],
    [11, 13, 499],
    [11, 13, 503],
    [11, 13, 509],
    [11, 13, 521],
    [11, 17, 19]]

theorem k4PrefixGroup0066_support_covered :
    k4PrefixGroup0066.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0066MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0066_passes :
    k4PrefixGroup0066.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0066_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0066_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0066_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0066_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0066_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0066_mask_primes_pass :
    k4PrefixGroup0066MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  simp only [k4PrefixGroup0066MaskPrimes, List.all_append]
  rw [k4PrefixGroup0066_mask_group0000_passes]
  rw [k4PrefixGroup0066_mask_group0002_passes]
  rw [k4PrefixGroup0066_mask_group0003_passes]
  rw [k4PrefixGroup0066_mask_group0004_passes]
  rw [k4PrefixGroup0066_mask_group0005_passes]
  rfl

theorem k4PrefixGroup0066_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0066) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0066NormalLookup,
    k4PrefixGroup0066TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0066_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0066_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0066MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0066_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0066_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
