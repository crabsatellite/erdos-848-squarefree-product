import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0017NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0017TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0017MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0017 : List (List ℕ) :=
  [[3, 19, 23, 31],
    [3, 19, 23, 37],
    [3, 19, 23, 41],
    [3, 19, 23, 43],
    [3, 19, 23, 47],
    [3, 19, 23, 53],
    [3, 19, 23, 59],
    [3, 19, 23, 61],
    [3, 19, 23, 67],
    [3, 19, 23, 71],
    [3, 19, 23, 73],
    [3, 19, 23, 79],
    [3, 19, 23, 83],
    [3, 19, 23, 89],
    [3, 19, 23, 97],
    [3, 19, 23, 101],
    [3, 19, 23, 103],
    [3, 19, 23, 107],
    [3, 19, 23, 109],
    [3, 19, 23, 113],
    [3, 19, 29, 31],
    [3, 19, 29, 37],
    [3, 19, 29, 41],
    [3, 19, 29, 43],
    [3, 19, 29, 47],
    [3, 19, 29, 53],
    [3, 19, 29, 59],
    [3, 19, 29, 61],
    [3, 19, 29, 67],
    [3, 19, 29, 71],
    [3, 19, 29, 73],
    [3, 19, 29, 79],
    [3, 19, 29, 83],
    [3, 19, 29, 89],
    [3, 19, 29, 97],
    [3, 19, 29, 101],
    [3, 19, 29, 103],
    [3, 19, 29, 107],
    [3, 19, 31, 37],
    [3, 19, 31, 41],
    [3, 19, 31, 43],
    [3, 19, 31, 47],
    [3, 19, 31, 53],
    [3, 19, 31, 59],
    [3, 19, 31, 61],
    [3, 19, 31, 67],
    [3, 19, 31, 71],
    [3, 19, 31, 73],
    [3, 19, 31, 79],
    [3, 19, 31, 83],
    [3, 19, 31, 89],
    [3, 19, 31, 97],
    [3, 19, 31, 101],
    [3, 19, 31, 103],
    [3, 19, 37, 41],
    [3, 19, 37, 43],
    [3, 19, 37, 47],
    [3, 19, 37, 53],
    [3, 19, 37, 59],
    [3, 19, 37, 61],
    [3, 19, 37, 67],
    [3, 19, 37, 71],
    [3, 19, 37, 73],
    [3, 19, 37, 79]]

theorem k5PrefixGroup0017_support_covered :
    k5PrefixGroup0017.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0017MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0017_passes :
    k5PrefixGroup0017.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0017NormalLookup
        k5PrefixGroup0017TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0017_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0017NormalLookup
        k5PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0017TwistLookup p =
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

theorem k5PrefixGroup0017_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0017NormalLookup
        k5PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0017TwistLookup p =
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

theorem k5PrefixGroup0017_mask_primes_pass :
    k5PrefixGroup0017MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0017NormalLookup
        k5PrefixGroup0017TwistLookup) = true := by
  simp only [k5PrefixGroup0017MaskPrimes, List.all_append]
  rw [k5PrefixGroup0017_mask_group0000_passes]
  rw [k5PrefixGroup0017_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0017_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0017) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0017NormalLookup,
    k5PrefixGroup0017TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0017_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0017_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0017MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0017_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0017_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
