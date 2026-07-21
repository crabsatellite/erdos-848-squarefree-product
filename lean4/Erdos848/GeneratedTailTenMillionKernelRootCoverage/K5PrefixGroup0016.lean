import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0016NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0016TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0016MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0016 : List (List ℕ) :=
  [[3, 17, 31, 103],
    [3, 17, 31, 107],
    [3, 17, 31, 109],
    [3, 17, 37, 41],
    [3, 17, 37, 43],
    [3, 17, 37, 47],
    [3, 17, 37, 53],
    [3, 17, 37, 59],
    [3, 17, 37, 61],
    [3, 17, 37, 67],
    [3, 17, 37, 71],
    [3, 17, 37, 73],
    [3, 17, 37, 79],
    [3, 17, 37, 83],
    [3, 17, 37, 89],
    [3, 17, 37, 97],
    [3, 17, 37, 101],
    [3, 17, 41, 43],
    [3, 17, 41, 47],
    [3, 17, 41, 53],
    [3, 17, 41, 59],
    [3, 17, 41, 61],
    [3, 17, 41, 67],
    [3, 17, 41, 71],
    [3, 17, 41, 73],
    [3, 17, 41, 79],
    [3, 17, 41, 83],
    [3, 17, 41, 89],
    [3, 17, 43, 47],
    [3, 17, 43, 53],
    [3, 17, 43, 59],
    [3, 17, 43, 61],
    [3, 17, 43, 67],
    [3, 17, 43, 71],
    [3, 17, 43, 73],
    [3, 17, 43, 79],
    [3, 17, 43, 83],
    [3, 17, 43, 89],
    [3, 17, 47, 53],
    [3, 17, 47, 59],
    [3, 17, 47, 61],
    [3, 17, 47, 67],
    [3, 17, 47, 71],
    [3, 17, 47, 73],
    [3, 17, 47, 79],
    [3, 17, 47, 83],
    [3, 17, 53, 59],
    [3, 17, 53, 61],
    [3, 17, 53, 67],
    [3, 17, 53, 71],
    [3, 17, 53, 73],
    [3, 17, 53, 79],
    [3, 17, 53, 83],
    [3, 17, 59, 61],
    [3, 17, 59, 67],
    [3, 17, 59, 71],
    [3, 17, 59, 73],
    [3, 17, 59, 79],
    [3, 17, 61, 67],
    [3, 17, 61, 71],
    [3, 17, 61, 73],
    [3, 17, 67, 71],
    [3, 17, 67, 73],
    [3, 19, 23, 29]]

theorem k5PrefixGroup0016_support_covered :
    k5PrefixGroup0016.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0016MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0016_passes :
    k5PrefixGroup0016.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0016NormalLookup
        k5PrefixGroup0016TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0016_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0016NormalLookup
        k5PrefixGroup0016TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0016NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0016TwistLookup p =
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

theorem k5PrefixGroup0016_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0016NormalLookup
        k5PrefixGroup0016TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0016NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0016TwistLookup p =
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

theorem k5PrefixGroup0016_mask_primes_pass :
    k5PrefixGroup0016MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0016NormalLookup
        k5PrefixGroup0016TwistLookup) = true := by
  simp only [k5PrefixGroup0016MaskPrimes, List.all_append]
  rw [k5PrefixGroup0016_mask_group0000_passes]
  rw [k5PrefixGroup0016_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0016_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0016) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0016NormalLookup,
    k5PrefixGroup0016TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0016_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0016_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0016MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0016_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0016_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
