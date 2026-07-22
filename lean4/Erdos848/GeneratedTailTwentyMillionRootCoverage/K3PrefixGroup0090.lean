import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0090NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k3PrefixGroup0090TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k3PrefixGroup0090MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k3PrefixGroup0090 : List (List ℕ) :=
  [[277, 367],
    [277, 373],
    [281, 283],
    [281, 293],
    [281, 307],
    [281, 311],
    [281, 313],
    [281, 317],
    [281, 331],
    [281, 337],
    [281, 347],
    [281, 349],
    [281, 353],
    [281, 359],
    [281, 367],
    [281, 373],
    [283, 293],
    [283, 307],
    [283, 311],
    [283, 313],
    [283, 317],
    [283, 331],
    [283, 337],
    [283, 347],
    [283, 349],
    [283, 353],
    [283, 359],
    [283, 367],
    [293, 307],
    [293, 311],
    [293, 313],
    [293, 317],
    [293, 331],
    [293, 337],
    [293, 347],
    [293, 349],
    [293, 353],
    [293, 359],
    [307, 311],
    [307, 313],
    [307, 317],
    [307, 331],
    [307, 337],
    [307, 347],
    [307, 349],
    [307, 353],
    [311, 313],
    [311, 317],
    [311, 331],
    [311, 337],
    [311, 347],
    [311, 349],
    [311, 353],
    [313, 317],
    [313, 331],
    [313, 337],
    [313, 347],
    [313, 349],
    [313, 353],
    [317, 331],
    [317, 337],
    [317, 347],
    [317, 349],
    [331, 337]]

theorem k3PrefixGroup0090_support_covered :
    k3PrefixGroup0090.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0090MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0090_passes :
    k3PrefixGroup0090.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0090NormalLookup
        k3PrefixGroup0090TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0090_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0090NormalLookup
        k3PrefixGroup0090TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0090NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0090TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0090_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0090NormalLookup
        k3PrefixGroup0090TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0090NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0090TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0090_mask_primes_pass :
    k3PrefixGroup0090MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0090NormalLookup
        k3PrefixGroup0090TwistLookup) = true := by
  simp only [k3PrefixGroup0090MaskPrimes, List.all_append]
  rw [k3PrefixGroup0090_mask_group0003_passes]
  rw [k3PrefixGroup0090_mask_group0004_passes]
  rfl

theorem k3PrefixGroup0090_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0090) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0090NormalLookup,
    k3PrefixGroup0090TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0090_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0090_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0090MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0090_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0090_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
