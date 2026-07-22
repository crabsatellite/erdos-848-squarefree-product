import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0088NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0088TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0088MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0088 : List (List ℕ) :=
  [[241, 317],
    [241, 331],
    [241, 337],
    [241, 347],
    [241, 349],
    [241, 353],
    [241, 359],
    [241, 367],
    [241, 373],
    [241, 379],
    [241, 383],
    [241, 389],
    [241, 397],
    [241, 401],
    [251, 257],
    [251, 263],
    [251, 269],
    [251, 271],
    [251, 277],
    [251, 281],
    [251, 283],
    [251, 293],
    [251, 307],
    [251, 311],
    [251, 313],
    [251, 317],
    [251, 331],
    [251, 337],
    [251, 347],
    [251, 349],
    [251, 353],
    [251, 359],
    [251, 367],
    [251, 373],
    [251, 379],
    [251, 383],
    [251, 389],
    [251, 397],
    [257, 263],
    [257, 269],
    [257, 271],
    [257, 277],
    [257, 281],
    [257, 283],
    [257, 293],
    [257, 307],
    [257, 311],
    [257, 313],
    [257, 317],
    [257, 331],
    [257, 337],
    [257, 347],
    [257, 349],
    [257, 353],
    [257, 359],
    [257, 367],
    [257, 373],
    [257, 379],
    [257, 383],
    [257, 389],
    [263, 269],
    [263, 271],
    [263, 277],
    [263, 281]]

theorem k3PrefixGroup0088_support_covered :
    k3PrefixGroup0088.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0088MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0088_passes :
    k3PrefixGroup0088.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0088NormalLookup
        k3PrefixGroup0088TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0088_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0088NormalLookup
        k3PrefixGroup0088TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0088NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0088TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0088_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0088NormalLookup
        k3PrefixGroup0088TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0088NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0088TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0088_mask_primes_pass :
    k3PrefixGroup0088MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0088NormalLookup
        k3PrefixGroup0088TwistLookup) = true := by
  simp only [k3PrefixGroup0088MaskPrimes, List.all_append]
  rw [k3PrefixGroup0088_mask_group0003_passes]
  rw [k3PrefixGroup0088_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0088_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0088) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0088NormalLookup,
    k3PrefixGroup0088TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0088_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0088_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0088MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0088_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0088_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
