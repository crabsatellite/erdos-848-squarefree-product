import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0022NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0022TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0022MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0022 : List (List ℕ) :=
  [[7, 11, 19, 89],
    [7, 11, 19, 97],
    [7, 11, 19, 101],
    [7, 11, 19, 103],
    [7, 11, 19, 107],
    [7, 11, 19, 109],
    [7, 11, 23, 29],
    [7, 11, 23, 31],
    [7, 11, 23, 37],
    [7, 11, 23, 41],
    [7, 11, 23, 43],
    [7, 11, 23, 47],
    [7, 11, 23, 53],
    [7, 11, 23, 59],
    [7, 11, 23, 61],
    [7, 11, 23, 67],
    [7, 11, 23, 71],
    [7, 11, 23, 73],
    [7, 11, 23, 79],
    [7, 11, 23, 83],
    [7, 11, 23, 89],
    [7, 11, 23, 97],
    [7, 11, 23, 101],
    [7, 11, 23, 103],
    [7, 11, 29, 31],
    [7, 11, 29, 37],
    [7, 11, 29, 41],
    [7, 11, 29, 43],
    [7, 11, 29, 47],
    [7, 11, 29, 53],
    [7, 11, 29, 59],
    [7, 11, 29, 61],
    [7, 11, 29, 67],
    [7, 11, 29, 71],
    [7, 11, 29, 73],
    [7, 11, 29, 79],
    [7, 11, 29, 83],
    [7, 11, 29, 89],
    [7, 11, 31, 37],
    [7, 11, 31, 41],
    [7, 11, 31, 43],
    [7, 11, 31, 47],
    [7, 11, 31, 53],
    [7, 11, 31, 59],
    [7, 11, 31, 61],
    [7, 11, 31, 67],
    [7, 11, 31, 71],
    [7, 11, 31, 73],
    [7, 11, 31, 79],
    [7, 11, 31, 83],
    [7, 11, 37, 41],
    [7, 11, 37, 43],
    [7, 11, 37, 47],
    [7, 11, 37, 53],
    [7, 11, 37, 59],
    [7, 11, 37, 61],
    [7, 11, 37, 67],
    [7, 11, 37, 71],
    [7, 11, 37, 73],
    [7, 11, 37, 79],
    [7, 11, 41, 43],
    [7, 11, 41, 47],
    [7, 11, 41, 53],
    [7, 11, 41, 59]]

theorem k5PrefixGroup0022_support_covered :
    k5PrefixGroup0022.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0022MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0022_passes :
    k5PrefixGroup0022.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0022_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0022NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0022TwistLookup p =
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

theorem k5PrefixGroup0022_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0022NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0022TwistLookup p =
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

theorem k5PrefixGroup0022_mask_primes_pass :
    k5PrefixGroup0022MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0022NormalLookup
        k5PrefixGroup0022TwistLookup) = true := by
  simp only [k5PrefixGroup0022MaskPrimes, List.all_append]
  rw [k5PrefixGroup0022_mask_group0000_passes]
  rw [k5PrefixGroup0022_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0022_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0022) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0022NormalLookup,
    k5PrefixGroup0022TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0022_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0022_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0022MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0022_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0022_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
