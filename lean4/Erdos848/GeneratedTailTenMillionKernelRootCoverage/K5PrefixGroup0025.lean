import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0025NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0025TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0025MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0025 : List (List ℕ) :=
  [[7, 17, 19, 31],
    [7, 17, 19, 37],
    [7, 17, 19, 41],
    [7, 17, 19, 43],
    [7, 17, 19, 47],
    [7, 17, 19, 53],
    [7, 17, 19, 59],
    [7, 17, 19, 61],
    [7, 17, 19, 67],
    [7, 17, 19, 71],
    [7, 17, 19, 73],
    [7, 17, 19, 79],
    [7, 17, 19, 83],
    [7, 17, 19, 89],
    [7, 17, 23, 29],
    [7, 17, 23, 31],
    [7, 17, 23, 37],
    [7, 17, 23, 41],
    [7, 17, 23, 43],
    [7, 17, 23, 47],
    [7, 17, 23, 53],
    [7, 17, 23, 59],
    [7, 17, 23, 61],
    [7, 17, 23, 67],
    [7, 17, 23, 71],
    [7, 17, 23, 73],
    [7, 17, 23, 79],
    [7, 17, 29, 31],
    [7, 17, 29, 37],
    [7, 17, 29, 41],
    [7, 17, 29, 43],
    [7, 17, 29, 47],
    [7, 17, 29, 53],
    [7, 17, 29, 59],
    [7, 17, 29, 61],
    [7, 17, 29, 67],
    [7, 17, 29, 71],
    [7, 17, 29, 73],
    [7, 17, 31, 37],
    [7, 17, 31, 41],
    [7, 17, 31, 43],
    [7, 17, 31, 47],
    [7, 17, 31, 53],
    [7, 17, 31, 59],
    [7, 17, 31, 61],
    [7, 17, 31, 67],
    [7, 17, 31, 71],
    [7, 17, 37, 41],
    [7, 17, 37, 43],
    [7, 17, 37, 47],
    [7, 17, 37, 53],
    [7, 17, 37, 59],
    [7, 17, 37, 61],
    [7, 17, 41, 43],
    [7, 17, 41, 47],
    [7, 17, 41, 53],
    [7, 17, 41, 59],
    [7, 17, 41, 61],
    [7, 17, 43, 47],
    [7, 17, 43, 53],
    [7, 17, 43, 59],
    [7, 17, 47, 53],
    [7, 19, 23, 29],
    [7, 19, 23, 31]]

theorem k5PrefixGroup0025_support_covered :
    k5PrefixGroup0025.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0025MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0025_passes :
    k5PrefixGroup0025.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0025NormalLookup
        k5PrefixGroup0025TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0025_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0025NormalLookup
        k5PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0025TwistLookup p =
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

theorem k5PrefixGroup0025_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0025NormalLookup
        k5PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0025TwistLookup p =
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

theorem k5PrefixGroup0025_mask_primes_pass :
    k5PrefixGroup0025MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0025NormalLookup
        k5PrefixGroup0025TwistLookup) = true := by
  simp only [k5PrefixGroup0025MaskPrimes, List.all_append]
  rw [k5PrefixGroup0025_mask_group0000_passes]
  rw [k5PrefixGroup0025_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0025_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0025) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0025NormalLookup,
    k5PrefixGroup0025TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0025_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0025_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0025MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0025_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0025_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
