import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0006NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0006TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0006MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0006 : List (List ℕ) :=
  [[3, 7, 53, 127],
    [3, 7, 53, 131],
    [3, 7, 59, 61],
    [3, 7, 59, 67],
    [3, 7, 59, 71],
    [3, 7, 59, 73],
    [3, 7, 59, 79],
    [3, 7, 59, 83],
    [3, 7, 59, 89],
    [3, 7, 59, 97],
    [3, 7, 59, 101],
    [3, 7, 59, 103],
    [3, 7, 59, 107],
    [3, 7, 59, 109],
    [3, 7, 59, 113],
    [3, 7, 61, 67],
    [3, 7, 61, 71],
    [3, 7, 61, 73],
    [3, 7, 61, 79],
    [3, 7, 61, 83],
    [3, 7, 61, 89],
    [3, 7, 61, 97],
    [3, 7, 61, 101],
    [3, 7, 61, 103],
    [3, 7, 61, 107],
    [3, 7, 61, 109],
    [3, 7, 61, 113],
    [3, 7, 67, 71],
    [3, 7, 67, 73],
    [3, 7, 67, 79],
    [3, 7, 67, 83],
    [3, 7, 67, 89],
    [3, 7, 67, 97],
    [3, 7, 67, 101],
    [3, 7, 67, 103],
    [3, 7, 67, 107],
    [3, 7, 67, 109],
    [3, 7, 71, 73],
    [3, 7, 71, 79],
    [3, 7, 71, 83],
    [3, 7, 71, 89],
    [3, 7, 71, 97],
    [3, 7, 71, 101],
    [3, 7, 71, 103],
    [3, 7, 71, 107],
    [3, 7, 71, 109],
    [3, 7, 73, 79],
    [3, 7, 73, 83],
    [3, 7, 73, 89],
    [3, 7, 73, 97],
    [3, 7, 73, 101],
    [3, 7, 73, 103],
    [3, 7, 73, 107],
    [3, 7, 73, 109],
    [3, 7, 79, 83],
    [3, 7, 79, 89],
    [3, 7, 79, 97],
    [3, 7, 79, 101],
    [3, 7, 79, 103],
    [3, 7, 79, 107],
    [3, 7, 83, 89],
    [3, 7, 83, 97],
    [3, 7, 83, 101],
    [3, 7, 83, 103]]

theorem k5PrefixGroup0006_support_covered :
    k5PrefixGroup0006.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0006MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0006_passes :
    k5PrefixGroup0006.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0006_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0006_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0006_mask_primes_pass :
    k5PrefixGroup0006MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0006NormalLookup
        k5PrefixGroup0006TwistLookup) = true := by
  simp only [k5PrefixGroup0006MaskPrimes, List.all_append]
  rw [k5PrefixGroup0006_mask_group0000_passes]
  rw [k5PrefixGroup0006_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0006_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0006) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0006NormalLookup,
    k5PrefixGroup0006TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0006_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0006_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0006MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0006_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0006_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
