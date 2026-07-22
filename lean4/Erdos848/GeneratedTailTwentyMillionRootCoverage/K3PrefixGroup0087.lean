import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0087NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0087TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0087MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0087 : List (List ℕ) :=
  [[233, 263],
    [233, 269],
    [233, 271],
    [233, 277],
    [233, 281],
    [233, 283],
    [233, 293],
    [233, 307],
    [233, 311],
    [233, 313],
    [233, 317],
    [233, 331],
    [233, 337],
    [233, 347],
    [233, 349],
    [233, 353],
    [233, 359],
    [233, 367],
    [233, 373],
    [233, 379],
    [233, 383],
    [233, 389],
    [233, 397],
    [233, 401],
    [233, 409],
    [239, 241],
    [239, 251],
    [239, 257],
    [239, 263],
    [239, 269],
    [239, 271],
    [239, 277],
    [239, 281],
    [239, 283],
    [239, 293],
    [239, 307],
    [239, 311],
    [239, 313],
    [239, 317],
    [239, 331],
    [239, 337],
    [239, 347],
    [239, 349],
    [239, 353],
    [239, 359],
    [239, 367],
    [239, 373],
    [239, 379],
    [239, 383],
    [239, 389],
    [239, 397],
    [239, 401],
    [241, 251],
    [241, 257],
    [241, 263],
    [241, 269],
    [241, 271],
    [241, 277],
    [241, 281],
    [241, 283],
    [241, 293],
    [241, 307],
    [241, 311],
    [241, 313]]

theorem k3PrefixGroup0087_support_covered :
    k3PrefixGroup0087.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0087MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0087_passes :
    k3PrefixGroup0087.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0087NormalLookup
        k3PrefixGroup0087TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0087_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0087NormalLookup
        k3PrefixGroup0087TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0087NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0087TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0087_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0087NormalLookup
        k3PrefixGroup0087TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0087NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0087TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0087_mask_primes_pass :
    k3PrefixGroup0087MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0087NormalLookup
        k3PrefixGroup0087TwistLookup) = true := by
  simp only [k3PrefixGroup0087MaskPrimes, List.all_append]
  rw [k3PrefixGroup0087_mask_group0003_passes]
  rw [k3PrefixGroup0087_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0087_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0087) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0087NormalLookup,
    k3PrefixGroup0087TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0087_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0087_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0087MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0087_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0087_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
