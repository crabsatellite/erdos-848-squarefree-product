import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0024NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0024TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0024MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0024 : List (List ℕ) :=
  [[7, 13, 23, 41],
    [7, 13, 23, 43],
    [7, 13, 23, 47],
    [7, 13, 23, 53],
    [7, 13, 23, 59],
    [7, 13, 23, 61],
    [7, 13, 23, 67],
    [7, 13, 23, 71],
    [7, 13, 23, 73],
    [7, 13, 23, 79],
    [7, 13, 23, 83],
    [7, 13, 23, 89],
    [7, 13, 29, 31],
    [7, 13, 29, 37],
    [7, 13, 29, 41],
    [7, 13, 29, 43],
    [7, 13, 29, 47],
    [7, 13, 29, 53],
    [7, 13, 29, 59],
    [7, 13, 29, 61],
    [7, 13, 29, 67],
    [7, 13, 29, 71],
    [7, 13, 29, 73],
    [7, 13, 29, 79],
    [7, 13, 29, 83],
    [7, 13, 31, 37],
    [7, 13, 31, 41],
    [7, 13, 31, 43],
    [7, 13, 31, 47],
    [7, 13, 31, 53],
    [7, 13, 31, 59],
    [7, 13, 31, 61],
    [7, 13, 31, 67],
    [7, 13, 31, 71],
    [7, 13, 31, 73],
    [7, 13, 31, 79],
    [7, 13, 37, 41],
    [7, 13, 37, 43],
    [7, 13, 37, 47],
    [7, 13, 37, 53],
    [7, 13, 37, 59],
    [7, 13, 37, 61],
    [7, 13, 37, 67],
    [7, 13, 37, 71],
    [7, 13, 37, 73],
    [7, 13, 41, 43],
    [7, 13, 41, 47],
    [7, 13, 41, 53],
    [7, 13, 41, 59],
    [7, 13, 41, 61],
    [7, 13, 41, 67],
    [7, 13, 41, 71],
    [7, 13, 43, 47],
    [7, 13, 43, 53],
    [7, 13, 43, 59],
    [7, 13, 43, 61],
    [7, 13, 43, 67],
    [7, 13, 47, 53],
    [7, 13, 47, 59],
    [7, 13, 47, 61],
    [7, 13, 53, 59],
    [7, 13, 53, 61],
    [7, 17, 19, 23],
    [7, 17, 19, 29]]

theorem k5PrefixGroup0024_support_covered :
    k5PrefixGroup0024.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0024MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0024_passes :
    k5PrefixGroup0024.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0024_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0024TwistLookup p =
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

theorem k5PrefixGroup0024_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0024TwistLookup p =
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

theorem k5PrefixGroup0024_mask_primes_pass :
    k5PrefixGroup0024MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0024NormalLookup
        k5PrefixGroup0024TwistLookup) = true := by
  simp only [k5PrefixGroup0024MaskPrimes, List.all_append]
  rw [k5PrefixGroup0024_mask_group0000_passes]
  rw [k5PrefixGroup0024_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0024_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0024) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0024NormalLookup,
    k5PrefixGroup0024TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0024_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0024_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0024MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0024_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0024_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
