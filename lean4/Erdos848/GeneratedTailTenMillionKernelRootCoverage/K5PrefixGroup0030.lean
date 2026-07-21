import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0030NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  []

def k5PrefixGroup0030TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  []

def k5PrefixGroup0030MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000

def k5PrefixGroup0030 : List (List ℕ) :=
  [[13, 19, 29, 41],
    [13, 19, 29, 43],
    [13, 19, 29, 47],
    [13, 19, 31, 37],
    [13, 19, 31, 41],
    [13, 19, 31, 43],
    [13, 19, 31, 47],
    [13, 19, 37, 41],
    [13, 19, 37, 43],
    [13, 23, 29, 31],
    [13, 23, 29, 37],
    [13, 23, 29, 41],
    [13, 23, 29, 43],
    [13, 23, 31, 37],
    [13, 23, 31, 41],
    [13, 23, 31, 43],
    [13, 23, 37, 41],
    [13, 29, 31, 37],
    [17, 19, 23, 29],
    [17, 19, 23, 31],
    [17, 19, 23, 37],
    [17, 19, 23, 41],
    [17, 19, 23, 43],
    [17, 19, 23, 47],
    [17, 19, 29, 31],
    [17, 19, 29, 37],
    [17, 19, 29, 41],
    [17, 19, 29, 43],
    [17, 19, 31, 37],
    [17, 19, 31, 41],
    [17, 23, 29, 31],
    [17, 23, 29, 37],
    [17, 23, 29, 41],
    [17, 23, 31, 37],
    [19, 23, 29, 31],
    [19, 23, 29, 37]]

theorem k5PrefixGroup0030_support_covered :
    k5PrefixGroup0030.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0030MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0030_passes :
    k5PrefixGroup0030.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0030NormalLookup
        k5PrefixGroup0030TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0030_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0030NormalLookup
        k5PrefixGroup0030TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0030NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0030TwistLookup p =
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

theorem k5PrefixGroup0030_mask_primes_pass :
    k5PrefixGroup0030MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0030NormalLookup
        k5PrefixGroup0030TwistLookup) = true := by
  simpa only [k5PrefixGroup0030MaskPrimes] using k5PrefixGroup0030_mask_group0000_passes

theorem k5PrefixGroup0030_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0030) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0030NormalLookup,
    k5PrefixGroup0030TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0030_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0030_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0030MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0030_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0030_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
