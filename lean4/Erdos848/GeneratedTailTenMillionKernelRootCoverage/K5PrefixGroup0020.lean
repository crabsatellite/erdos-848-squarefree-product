import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0020NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0020TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0020MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0020 : List (List ℕ) :=
  [[3, 29, 37, 67],
    [3, 29, 37, 71],
    [3, 29, 37, 73],
    [3, 29, 41, 43],
    [3, 29, 41, 47],
    [3, 29, 41, 53],
    [3, 29, 41, 59],
    [3, 29, 41, 61],
    [3, 29, 41, 67],
    [3, 29, 41, 71],
    [3, 29, 43, 47],
    [3, 29, 43, 53],
    [3, 29, 43, 59],
    [3, 29, 43, 61],
    [3, 29, 43, 67],
    [3, 29, 43, 71],
    [3, 29, 47, 53],
    [3, 29, 47, 59],
    [3, 29, 47, 61],
    [3, 29, 47, 67],
    [3, 29, 53, 59],
    [3, 29, 53, 61],
    [3, 31, 37, 41],
    [3, 31, 37, 43],
    [3, 31, 37, 47],
    [3, 31, 37, 53],
    [3, 31, 37, 59],
    [3, 31, 37, 61],
    [3, 31, 37, 67],
    [3, 31, 37, 71],
    [3, 31, 37, 73],
    [3, 31, 41, 43],
    [3, 31, 41, 47],
    [3, 31, 41, 53],
    [3, 31, 41, 59],
    [3, 31, 41, 61],
    [3, 31, 41, 67],
    [3, 31, 41, 71],
    [3, 31, 43, 47],
    [3, 31, 43, 53],
    [3, 31, 43, 59],
    [3, 31, 43, 61],
    [3, 31, 43, 67],
    [3, 31, 47, 53],
    [3, 31, 47, 59],
    [3, 31, 47, 61],
    [3, 31, 53, 59],
    [3, 37, 41, 43],
    [3, 37, 41, 47],
    [3, 37, 41, 53],
    [3, 37, 41, 59],
    [3, 37, 41, 61],
    [3, 37, 43, 47],
    [3, 37, 43, 53],
    [3, 37, 43, 59],
    [3, 37, 43, 61],
    [3, 37, 47, 53],
    [3, 37, 47, 59],
    [3, 41, 43, 47],
    [3, 41, 43, 53],
    [3, 41, 43, 59],
    [3, 41, 47, 53],
    [3, 43, 47, 53],
    [7, 11, 13, 17]]

theorem k5PrefixGroup0020_support_covered :
    k5PrefixGroup0020.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0020MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0020_passes :
    k5PrefixGroup0020.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0020_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0020NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0020TwistLookup p =
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

theorem k5PrefixGroup0020_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0020NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0020TwistLookup p =
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

theorem k5PrefixGroup0020_mask_primes_pass :
    k5PrefixGroup0020MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0020NormalLookup
        k5PrefixGroup0020TwistLookup) = true := by
  simp only [k5PrefixGroup0020MaskPrimes, List.all_append]
  rw [k5PrefixGroup0020_mask_group0000_passes]
  rw [k5PrefixGroup0020_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0020_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0020) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0020NormalLookup,
    k5PrefixGroup0020TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0020_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0020_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0020MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0020_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0020_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
