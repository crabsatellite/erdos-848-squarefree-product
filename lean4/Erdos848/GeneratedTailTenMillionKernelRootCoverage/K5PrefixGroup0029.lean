import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0029NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0029TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0029MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0029 : List (List ℕ) :=
  [[11, 19, 29, 47],
    [11, 19, 29, 53],
    [11, 19, 31, 37],
    [11, 19, 31, 41],
    [11, 19, 31, 43],
    [11, 19, 31, 47],
    [11, 19, 37, 41],
    [11, 19, 37, 43],
    [11, 19, 37, 47],
    [11, 19, 41, 43],
    [11, 23, 29, 31],
    [11, 23, 29, 37],
    [11, 23, 29, 41],
    [11, 23, 29, 43],
    [11, 23, 29, 47],
    [11, 23, 31, 37],
    [11, 23, 31, 41],
    [11, 23, 31, 43],
    [11, 23, 31, 47],
    [11, 23, 37, 41],
    [11, 23, 37, 43],
    [11, 29, 31, 37],
    [11, 29, 31, 41],
    [11, 29, 31, 43],
    [13, 17, 19, 23],
    [13, 17, 19, 29],
    [13, 17, 19, 31],
    [13, 17, 19, 37],
    [13, 17, 19, 41],
    [13, 17, 19, 43],
    [13, 17, 19, 47],
    [13, 17, 19, 53],
    [13, 17, 19, 59],
    [13, 17, 19, 61],
    [13, 17, 19, 67],
    [13, 17, 23, 29],
    [13, 17, 23, 31],
    [13, 17, 23, 37],
    [13, 17, 23, 41],
    [13, 17, 23, 43],
    [13, 17, 23, 47],
    [13, 17, 23, 53],
    [13, 17, 23, 59],
    [13, 17, 29, 31],
    [13, 17, 29, 37],
    [13, 17, 29, 41],
    [13, 17, 29, 43],
    [13, 17, 29, 47],
    [13, 17, 31, 37],
    [13, 17, 31, 41],
    [13, 17, 31, 43],
    [13, 17, 31, 47],
    [13, 17, 37, 41],
    [13, 17, 37, 43],
    [13, 17, 41, 43],
    [13, 19, 23, 29],
    [13, 19, 23, 31],
    [13, 19, 23, 37],
    [13, 19, 23, 41],
    [13, 19, 23, 43],
    [13, 19, 23, 47],
    [13, 19, 23, 53],
    [13, 19, 29, 31],
    [13, 19, 29, 37]]

theorem k5PrefixGroup0029_support_covered :
    k5PrefixGroup0029.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0029MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0029_passes :
    k5PrefixGroup0029.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0029_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0029NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0029TwistLookup p =
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

theorem k5PrefixGroup0029_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0029NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0029TwistLookup p =
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

theorem k5PrefixGroup0029_mask_primes_pass :
    k5PrefixGroup0029MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0029NormalLookup
        k5PrefixGroup0029TwistLookup) = true := by
  simp only [k5PrefixGroup0029MaskPrimes, List.all_append]
  rw [k5PrefixGroup0029_mask_group0000_passes]
  rw [k5PrefixGroup0029_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0029_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0029) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0029NormalLookup,
    k5PrefixGroup0029TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0029_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0029_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0029MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0029_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0029_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
