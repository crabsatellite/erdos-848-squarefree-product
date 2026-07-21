import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0072NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0072TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0072MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0072 : List (List ℕ) :=
  [[23, 59, 83],
    [23, 59, 89],
    [23, 59, 97],
    [23, 59, 101],
    [23, 59, 103],
    [23, 59, 107],
    [23, 59, 109],
    [23, 59, 113],
    [23, 61, 67],
    [23, 61, 71],
    [23, 61, 73],
    [23, 61, 79],
    [23, 61, 83],
    [23, 61, 89],
    [23, 61, 97],
    [23, 61, 101],
    [23, 61, 103],
    [23, 61, 107],
    [23, 61, 109],
    [23, 67, 71],
    [23, 67, 73],
    [23, 67, 79],
    [23, 67, 83],
    [23, 67, 89],
    [23, 67, 97],
    [23, 67, 101],
    [23, 67, 103],
    [23, 67, 107],
    [23, 67, 109],
    [23, 71, 73],
    [23, 71, 79],
    [23, 71, 83],
    [23, 71, 89],
    [23, 71, 97],
    [23, 71, 101],
    [23, 71, 103],
    [23, 71, 107],
    [23, 73, 79],
    [23, 73, 83],
    [23, 73, 89],
    [23, 73, 97],
    [23, 73, 101],
    [23, 73, 103],
    [23, 73, 107],
    [23, 79, 83],
    [23, 79, 89],
    [23, 79, 97],
    [23, 79, 101],
    [23, 83, 89],
    [23, 83, 97],
    [23, 83, 101],
    [29, 31, 37],
    [29, 31, 41],
    [29, 31, 43],
    [29, 31, 47],
    [29, 31, 53],
    [29, 31, 59],
    [29, 31, 61],
    [29, 31, 67],
    [29, 31, 71],
    [29, 31, 73],
    [29, 31, 79],
    [29, 31, 83],
    [29, 31, 89]]

theorem k4PrefixGroup0072_support_covered :
    k4PrefixGroup0072.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0072MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0072_passes :
    k4PrefixGroup0072.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0072NormalLookup
        k4PrefixGroup0072TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0072_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0072NormalLookup
        k4PrefixGroup0072TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0072NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0072TwistLookup p =
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

theorem k4PrefixGroup0072_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0072NormalLookup
        k4PrefixGroup0072TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0072NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0072TwistLookup p =
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

theorem k4PrefixGroup0072_mask_primes_pass :
    k4PrefixGroup0072MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0072NormalLookup
        k4PrefixGroup0072TwistLookup) = true := by
  simp only [k4PrefixGroup0072MaskPrimes, List.all_append]
  rw [k4PrefixGroup0072_mask_group0000_passes]
  rw [k4PrefixGroup0072_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0072_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0072) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0072NormalLookup,
    k4PrefixGroup0072TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0072_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0072_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0072MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0072_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0072_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
