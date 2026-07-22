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

def k3PrefixGroup0085NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 521 then rootNormalQrMaskWords0005 p else
  []

def k3PrefixGroup0085TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 521 then rootTwistQrMaskWords0005 p else
  []

def k3PrefixGroup0085MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0005

def k3PrefixGroup0085 : List (List ℕ) :=
  [[211, 251],
    [211, 257],
    [211, 263],
    [211, 269],
    [211, 271],
    [211, 277],
    [211, 281],
    [211, 283],
    [211, 293],
    [211, 307],
    [211, 311],
    [211, 313],
    [211, 317],
    [211, 331],
    [211, 337],
    [211, 347],
    [211, 349],
    [211, 353],
    [211, 359],
    [211, 367],
    [211, 373],
    [211, 379],
    [211, 383],
    [211, 389],
    [211, 397],
    [211, 401],
    [211, 409],
    [211, 419],
    [211, 421],
    [211, 431],
    [223, 227],
    [223, 229],
    [223, 233],
    [223, 239],
    [223, 241],
    [223, 251],
    [223, 257],
    [223, 263],
    [223, 269],
    [223, 271],
    [223, 277],
    [223, 281],
    [223, 283],
    [223, 293],
    [223, 307],
    [223, 311],
    [223, 313],
    [223, 317],
    [223, 331],
    [223, 337],
    [223, 347],
    [223, 349],
    [223, 353],
    [223, 359],
    [223, 367],
    [223, 373],
    [223, 379],
    [223, 383],
    [223, 389],
    [223, 397],
    [223, 401],
    [223, 409],
    [223, 419],
    [227, 229]]

theorem k3PrefixGroup0085_support_covered :
    k3PrefixGroup0085.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0085MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0085_passes :
    k3PrefixGroup0085.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0085NormalLookup
        k3PrefixGroup0085TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0085_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0085NormalLookup
        k3PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0085_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0085NormalLookup
        k3PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0085_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0085NormalLookup
        k3PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0085_mask_group0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0085NormalLookup
        k3PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0005_passes) p hp
  have hnormal : k3PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0005 p := by
    simp only [rootMaskSemanticGroup0005,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0085_mask_primes_pass :
    k3PrefixGroup0085MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0085NormalLookup
        k3PrefixGroup0085TwistLookup) = true := by
  simp only [k3PrefixGroup0085MaskPrimes, List.all_append]
  rw [k3PrefixGroup0085_mask_group0002_passes]
  rw [k3PrefixGroup0085_mask_group0003_passes]
  rw [k3PrefixGroup0085_mask_group0004_passes]
  rw [k3PrefixGroup0085_mask_group0005_passes]
  rfl

theorem k3PrefixGroup0085_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0085) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0085NormalLookup,
    k3PrefixGroup0085TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0085_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0085_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0085MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0085_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0085_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
