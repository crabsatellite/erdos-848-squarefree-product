import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0086NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0086TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0086MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0086 : List (List ℕ) :=
  [[227, 233],
    [227, 239],
    [227, 241],
    [227, 251],
    [227, 257],
    [227, 263],
    [227, 269],
    [227, 271],
    [227, 277],
    [227, 281],
    [227, 283],
    [227, 293],
    [227, 307],
    [227, 311],
    [227, 313],
    [227, 317],
    [227, 331],
    [227, 337],
    [227, 347],
    [227, 349],
    [227, 353],
    [227, 359],
    [227, 367],
    [227, 373],
    [227, 379],
    [227, 383],
    [227, 389],
    [227, 397],
    [227, 401],
    [227, 409],
    [229, 233],
    [229, 239],
    [229, 241],
    [229, 251],
    [229, 257],
    [229, 263],
    [229, 269],
    [229, 271],
    [229, 277],
    [229, 281],
    [229, 283],
    [229, 293],
    [229, 307],
    [229, 311],
    [229, 313],
    [229, 317],
    [229, 331],
    [229, 337],
    [229, 347],
    [229, 349],
    [229, 353],
    [229, 359],
    [229, 367],
    [229, 373],
    [229, 379],
    [229, 383],
    [229, 389],
    [229, 397],
    [229, 401],
    [229, 409],
    [233, 239],
    [233, 241],
    [233, 251],
    [233, 257]]

theorem k3PrefixGroup0086_support_covered :
    k3PrefixGroup0086.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0086MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0086_passes :
    k3PrefixGroup0086.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0086NormalLookup
        k3PrefixGroup0086TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0086_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0086NormalLookup
        k3PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0086_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0086NormalLookup
        k3PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0086_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0086NormalLookup
        k3PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0086_mask_primes_pass :
    k3PrefixGroup0086MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0086NormalLookup
        k3PrefixGroup0086TwistLookup) = true := by
  simp only [k3PrefixGroup0086MaskPrimes, List.all_append]
  rw [k3PrefixGroup0086_mask_group0002_passes]
  rw [k3PrefixGroup0086_mask_group0003_passes]
  rw [k3PrefixGroup0086_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0086_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0086) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0086NormalLookup,
    k3PrefixGroup0086TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0086_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0086_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0086MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0086_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0086_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
