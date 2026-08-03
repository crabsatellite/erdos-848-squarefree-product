import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0013NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0013TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0013MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0013 : List (List ℕ) :=
  [[3, 13, 29, 97],
    [3, 13, 29, 101],
    [3, 13, 29, 103],
    [3, 13, 29, 107],
    [3, 13, 29, 109],
    [3, 13, 29, 113],
    [3, 13, 29, 127],
    [3, 13, 31, 37],
    [3, 13, 31, 41],
    [3, 13, 31, 43],
    [3, 13, 31, 47],
    [3, 13, 31, 53],
    [3, 13, 31, 59],
    [3, 13, 31, 61],
    [3, 13, 31, 67],
    [3, 13, 31, 71],
    [3, 13, 31, 73],
    [3, 13, 31, 79],
    [3, 13, 31, 83],
    [3, 13, 31, 89],
    [3, 13, 31, 97],
    [3, 13, 31, 101],
    [3, 13, 31, 103],
    [3, 13, 31, 107],
    [3, 13, 31, 109],
    [3, 13, 31, 113],
    [3, 13, 37, 41],
    [3, 13, 37, 43],
    [3, 13, 37, 47],
    [3, 13, 37, 53],
    [3, 13, 37, 59],
    [3, 13, 37, 61],
    [3, 13, 37, 67],
    [3, 13, 37, 71],
    [3, 13, 37, 73],
    [3, 13, 37, 79],
    [3, 13, 37, 83],
    [3, 13, 37, 89],
    [3, 13, 37, 97],
    [3, 13, 37, 101],
    [3, 13, 37, 103],
    [3, 13, 37, 107],
    [3, 13, 37, 109],
    [3, 13, 41, 43],
    [3, 13, 41, 47],
    [3, 13, 41, 53],
    [3, 13, 41, 59],
    [3, 13, 41, 61],
    [3, 13, 41, 67],
    [3, 13, 41, 71],
    [3, 13, 41, 73],
    [3, 13, 41, 79],
    [3, 13, 41, 83],
    [3, 13, 41, 89],
    [3, 13, 41, 97],
    [3, 13, 41, 101],
    [3, 13, 41, 103],
    [3, 13, 41, 107],
    [3, 13, 41, 109],
    [3, 13, 43, 47],
    [3, 13, 43, 53],
    [3, 13, 43, 59],
    [3, 13, 43, 61],
    [3, 13, 43, 67]]

theorem k5PrefixGroup0013_support_covered :
    k5PrefixGroup0013.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0013MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0013_passes :
    k5PrefixGroup0013.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0013NormalLookup
        k5PrefixGroup0013TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0013_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0013NormalLookup
        k5PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0013TwistLookup p =
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

theorem k5PrefixGroup0013_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0013NormalLookup
        k5PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0013TwistLookup p =
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

theorem k5PrefixGroup0013_mask_primes_pass :
    k5PrefixGroup0013MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0013NormalLookup
        k5PrefixGroup0013TwistLookup) = true := by
  simp only [k5PrefixGroup0013MaskPrimes, List.all_append]
  rw [k5PrefixGroup0013_mask_group0000_passes]
  rw [k5PrefixGroup0013_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0013_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0013) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0013NormalLookup,
    k5PrefixGroup0013TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0013_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0013_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0013MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0013_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0013_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
