import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0001NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  []

def k6PrefixGroup0001TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  []

def k6PrefixGroup0001MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000

def k6PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 13, 17, 43],
    [3, 7, 13, 17, 47],
    [3, 7, 13, 17, 53],
    [3, 7, 13, 17, 59],
    [3, 7, 13, 17, 61],
    [3, 7, 13, 19, 23],
    [3, 7, 13, 19, 29],
    [3, 7, 13, 19, 31],
    [3, 7, 13, 19, 37],
    [3, 7, 13, 19, 41],
    [3, 7, 13, 19, 43],
    [3, 7, 13, 19, 47],
    [3, 7, 13, 19, 53],
    [3, 7, 13, 19, 59],
    [3, 7, 13, 23, 29],
    [3, 7, 13, 23, 31],
    [3, 7, 13, 23, 37],
    [3, 7, 13, 23, 41],
    [3, 7, 13, 23, 43],
    [3, 7, 13, 23, 47],
    [3, 7, 13, 23, 53],
    [3, 7, 13, 29, 31],
    [3, 7, 13, 29, 37],
    [3, 7, 13, 29, 41],
    [3, 7, 13, 29, 43],
    [3, 7, 13, 29, 47],
    [3, 7, 13, 31, 37],
    [3, 7, 13, 31, 41],
    [3, 7, 13, 31, 43],
    [3, 7, 13, 37, 41],
    [3, 7, 17, 19, 23],
    [3, 7, 17, 19, 29],
    [3, 7, 17, 19, 31],
    [3, 7, 17, 19, 37],
    [3, 7, 17, 19, 41],
    [3, 7, 17, 19, 43],
    [3, 7, 17, 19, 47],
    [3, 7, 17, 23, 29],
    [3, 7, 17, 23, 31],
    [3, 7, 17, 23, 37],
    [3, 7, 17, 23, 41],
    [3, 7, 17, 23, 43],
    [3, 7, 17, 29, 31],
    [3, 7, 17, 29, 37],
    [3, 7, 17, 29, 41],
    [3, 7, 17, 31, 37],
    [3, 7, 17, 31, 41],
    [3, 7, 19, 23, 29],
    [3, 7, 19, 23, 31],
    [3, 7, 19, 23, 37],
    [3, 7, 19, 23, 41],
    [3, 7, 19, 23, 43],
    [3, 7, 19, 29, 31],
    [3, 7, 19, 29, 37],
    [3, 7, 19, 31, 37],
    [3, 7, 23, 29, 31],
    [3, 11, 13, 17, 19],
    [3, 11, 13, 17, 23],
    [3, 11, 13, 17, 29],
    [3, 11, 13, 17, 31],
    [3, 11, 13, 17, 37],
    [3, 11, 13, 17, 41],
    [3, 11, 13, 17, 43],
    [3, 11, 13, 17, 47]]

theorem k6PrefixGroup0001_support_covered :
    k6PrefixGroup0001.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0001MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0001_passes :
    k6PrefixGroup0001.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0001_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0001NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0001TwistLookup p =
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

theorem k6PrefixGroup0001_mask_primes_pass :
    k6PrefixGroup0001MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0001NormalLookup
        k6PrefixGroup0001TwistLookup) = true := by
  simpa only [k6PrefixGroup0001MaskPrimes] using k6PrefixGroup0001_mask_group0000_passes

theorem k6PrefixGroup0001_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0001) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0001NormalLookup,
    k6PrefixGroup0001TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0001_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0001_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0001MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0001_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0001_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
