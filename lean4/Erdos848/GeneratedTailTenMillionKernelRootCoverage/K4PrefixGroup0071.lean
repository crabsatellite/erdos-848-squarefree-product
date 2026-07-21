import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0071NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0071TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0071MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0071 : List (List ℕ) :=
  [[23, 41, 101],
    [23, 41, 103],
    [23, 41, 107],
    [23, 41, 109],
    [23, 41, 113],
    [23, 41, 127],
    [23, 41, 131],
    [23, 41, 137],
    [23, 41, 139],
    [23, 43, 47],
    [23, 43, 53],
    [23, 43, 59],
    [23, 43, 61],
    [23, 43, 67],
    [23, 43, 71],
    [23, 43, 73],
    [23, 43, 79],
    [23, 43, 83],
    [23, 43, 89],
    [23, 43, 97],
    [23, 43, 101],
    [23, 43, 103],
    [23, 43, 107],
    [23, 43, 109],
    [23, 43, 113],
    [23, 43, 127],
    [23, 43, 131],
    [23, 43, 137],
    [23, 47, 53],
    [23, 47, 59],
    [23, 47, 61],
    [23, 47, 67],
    [23, 47, 71],
    [23, 47, 73],
    [23, 47, 79],
    [23, 47, 83],
    [23, 47, 89],
    [23, 47, 97],
    [23, 47, 101],
    [23, 47, 103],
    [23, 47, 107],
    [23, 47, 109],
    [23, 47, 113],
    [23, 47, 127],
    [23, 47, 131],
    [23, 53, 59],
    [23, 53, 61],
    [23, 53, 67],
    [23, 53, 71],
    [23, 53, 73],
    [23, 53, 79],
    [23, 53, 83],
    [23, 53, 89],
    [23, 53, 97],
    [23, 53, 101],
    [23, 53, 103],
    [23, 53, 107],
    [23, 53, 109],
    [23, 53, 113],
    [23, 59, 61],
    [23, 59, 67],
    [23, 59, 71],
    [23, 59, 73],
    [23, 59, 79]]

theorem k4PrefixGroup0071_support_covered :
    k4PrefixGroup0071.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0071MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0071_passes :
    k4PrefixGroup0071.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0071NormalLookup
        k4PrefixGroup0071TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0071_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0071NormalLookup
        k4PrefixGroup0071TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0071NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0071TwistLookup p =
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

theorem k4PrefixGroup0071_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0071NormalLookup
        k4PrefixGroup0071TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0071NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0071TwistLookup p =
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

theorem k4PrefixGroup0071_mask_primes_pass :
    k4PrefixGroup0071MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0071NormalLookup
        k4PrefixGroup0071TwistLookup) = true := by
  simp only [k4PrefixGroup0071MaskPrimes, List.all_append]
  rw [k4PrefixGroup0071_mask_group0000_passes]
  rw [k4PrefixGroup0071_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0071_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0071) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0071NormalLookup,
    k4PrefixGroup0071TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0071_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0071_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0071MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0071_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0071_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
