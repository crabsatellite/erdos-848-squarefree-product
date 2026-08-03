import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0089NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0089TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0089MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0089 : List (List ℕ) :=
  [[263, 283],
    [263, 293],
    [263, 307],
    [263, 311],
    [263, 313],
    [263, 317],
    [263, 331],
    [263, 337],
    [263, 347],
    [263, 349],
    [263, 353],
    [263, 359],
    [263, 367],
    [263, 373],
    [263, 379],
    [263, 383],
    [269, 271],
    [269, 277],
    [269, 281],
    [269, 283],
    [269, 293],
    [269, 307],
    [269, 311],
    [269, 313],
    [269, 317],
    [269, 331],
    [269, 337],
    [269, 347],
    [269, 349],
    [269, 353],
    [269, 359],
    [269, 367],
    [269, 373],
    [269, 379],
    [271, 277],
    [271, 281],
    [271, 283],
    [271, 293],
    [271, 307],
    [271, 311],
    [271, 313],
    [271, 317],
    [271, 331],
    [271, 337],
    [271, 347],
    [271, 349],
    [271, 353],
    [271, 359],
    [271, 367],
    [271, 373],
    [271, 379],
    [277, 281],
    [277, 283],
    [277, 293],
    [277, 307],
    [277, 311],
    [277, 313],
    [277, 317],
    [277, 331],
    [277, 337],
    [277, 347],
    [277, 349],
    [277, 353],
    [277, 359]]

theorem k3PrefixGroup0089_support_covered :
    k3PrefixGroup0089.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0089MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0089_passes :
    k3PrefixGroup0089.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0089NormalLookup
        k3PrefixGroup0089TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0089_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0089NormalLookup
        k3PrefixGroup0089TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0089NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0089TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0089_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0089NormalLookup
        k3PrefixGroup0089TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0089NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0089TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0089_mask_primes_pass :
    k3PrefixGroup0089MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0089NormalLookup
        k3PrefixGroup0089TwistLookup) = true := by
  simp only [k3PrefixGroup0089MaskPrimes, List.all_append]
  rw [k3PrefixGroup0089_mask_group0003_passes]
  rw [k3PrefixGroup0089_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0089_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0089) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0089NormalLookup,
    k3PrefixGroup0089TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0089_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0089_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0089MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0089_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0089_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
