import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0002NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  []

def k6PrefixGroup0002TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  []

def k6PrefixGroup0002MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000

def k6PrefixGroup0002 : List (List ℕ) :=
  [[3, 11, 13, 19, 23],
    [3, 11, 13, 19, 29],
    [3, 11, 13, 19, 31],
    [3, 11, 13, 19, 37],
    [3, 11, 13, 19, 41],
    [3, 11, 13, 19, 43],
    [3, 11, 13, 23, 29],
    [3, 11, 13, 23, 31],
    [3, 11, 13, 23, 37],
    [3, 11, 13, 23, 41],
    [3, 11, 13, 23, 43],
    [3, 11, 13, 29, 31],
    [3, 11, 13, 29, 37],
    [3, 11, 17, 19, 23],
    [3, 11, 17, 19, 29],
    [3, 11, 17, 19, 31],
    [3, 11, 17, 19, 37],
    [3, 11, 17, 19, 41],
    [3, 11, 17, 23, 29],
    [3, 11, 17, 23, 31],
    [3, 11, 17, 23, 37],
    [3, 11, 17, 29, 31],
    [3, 11, 19, 23, 29],
    [3, 11, 19, 23, 31],
    [3, 13, 17, 19, 23],
    [3, 13, 17, 19, 29],
    [3, 13, 17, 19, 31],
    [3, 13, 17, 19, 37],
    [3, 13, 17, 23, 29],
    [3, 13, 17, 23, 31],
    [3, 13, 19, 23, 29],
    [3, 13, 19, 23, 31],
    [7, 11, 13, 17, 19],
    [7, 11, 13, 17, 23],
    [7, 11, 13, 17, 29],
    [7, 11, 13, 17, 31],
    [7, 11, 13, 19, 23],
    [7, 11, 13, 19, 29],
    [7, 11, 17, 19, 23],
    [7, 13, 17, 19, 23]]

theorem k6PrefixGroup0002_support_covered :
    k6PrefixGroup0002.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0002MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0002_passes :
    k6PrefixGroup0002.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0002_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0002TwistLookup p =
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

theorem k6PrefixGroup0002_mask_primes_pass :
    k6PrefixGroup0002MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0002NormalLookup
        k6PrefixGroup0002TwistLookup) = true := by
  simpa only [k6PrefixGroup0002MaskPrimes] using k6PrefixGroup0002_mask_group0000_passes

theorem k6PrefixGroup0002_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0002) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0002NormalLookup,
    k6PrefixGroup0002TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0002_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0002_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0002MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0002_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0002_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
