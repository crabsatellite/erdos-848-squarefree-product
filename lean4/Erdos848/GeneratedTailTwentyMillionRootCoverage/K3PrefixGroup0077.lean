import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0005

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0077NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  []

def k3PrefixGroup0077TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  []

def k3PrefixGroup0077MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005

def k3PrefixGroup0077 : List (List ℕ) :=
  [[151, 379],
    [151, 383],
    [151, 389],
    [151, 397],
    [151, 401],
    [151, 409],
    [151, 419],
    [151, 421],
    [151, 431],
    [151, 433],
    [151, 439],
    [151, 443],
    [151, 449],
    [151, 457],
    [151, 461],
    [151, 463],
    [151, 467],
    [151, 479],
    [151, 487],
    [151, 491],
    [151, 499],
    [151, 503],
    [157, 163],
    [157, 167],
    [157, 173],
    [157, 179],
    [157, 181],
    [157, 191],
    [157, 193],
    [157, 197],
    [157, 199],
    [157, 211],
    [157, 223],
    [157, 227],
    [157, 229],
    [157, 233],
    [157, 239],
    [157, 241],
    [157, 251],
    [157, 257],
    [157, 263],
    [157, 269],
    [157, 271],
    [157, 277],
    [157, 281],
    [157, 283],
    [157, 293],
    [157, 307],
    [157, 311],
    [157, 313],
    [157, 317],
    [157, 331],
    [157, 337],
    [157, 347],
    [157, 349],
    [157, 353],
    [157, 359],
    [157, 367],
    [157, 373],
    [157, 379],
    [157, 383],
    [157, 389],
    [157, 397],
    [157, 401]]

theorem k3PrefixGroup0077_support_covered :
    k3PrefixGroup0077.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0077MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0077_passes :
    k3PrefixGroup0077.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0077NormalLookup
        k3PrefixGroup0077TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0077_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0077NormalLookup
        k3PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0077_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0077NormalLookup
        k3PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0077_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0077NormalLookup
        k3PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0077_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0077NormalLookup
        k3PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k3PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0077TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0077_mask_primes_pass :
    k3PrefixGroup0077MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0077NormalLookup
        k3PrefixGroup0077TwistLookup) = true := by
  simp only [k3PrefixGroup0077MaskPrimes, List.all_append]
  rw [k3PrefixGroup0077_mask_group0002_passes]
  rw [k3PrefixGroup0077_mask_group0003_passes]
  rw [k3PrefixGroup0077_mask_group0004_passes]
  rw [k3PrefixGroup0077_mask_group0005_passes]
  rfl

theorem k3PrefixGroup0077_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0077) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0077NormalLookup,
    k3PrefixGroup0077TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0077_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0077_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0077MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0077_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0077_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
