import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0000NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k6PrefixGroup0000TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k6PrefixGroup0000MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k6PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17],
    [3, 7, 11, 13, 19],
    [3, 7, 11, 13, 23],
    [3, 7, 11, 13, 29],
    [3, 7, 11, 13, 31],
    [3, 7, 11, 13, 37],
    [3, 7, 11, 13, 41],
    [3, 7, 11, 13, 43],
    [3, 7, 11, 13, 47],
    [3, 7, 11, 13, 53],
    [3, 7, 11, 13, 59],
    [3, 7, 11, 13, 61],
    [3, 7, 11, 13, 67],
    [3, 7, 11, 13, 71],
    [3, 7, 11, 13, 73],
    [3, 7, 11, 13, 79],
    [3, 7, 11, 17, 19],
    [3, 7, 11, 17, 23],
    [3, 7, 11, 17, 29],
    [3, 7, 11, 17, 31],
    [3, 7, 11, 17, 37],
    [3, 7, 11, 17, 41],
    [3, 7, 11, 17, 43],
    [3, 7, 11, 17, 47],
    [3, 7, 11, 17, 53],
    [3, 7, 11, 17, 59],
    [3, 7, 11, 17, 61],
    [3, 7, 11, 17, 67],
    [3, 7, 11, 19, 23],
    [3, 7, 11, 19, 29],
    [3, 7, 11, 19, 31],
    [3, 7, 11, 19, 37],
    [3, 7, 11, 19, 41],
    [3, 7, 11, 19, 43],
    [3, 7, 11, 19, 47],
    [3, 7, 11, 19, 53],
    [3, 7, 11, 19, 59],
    [3, 7, 11, 19, 61],
    [3, 7, 11, 23, 29],
    [3, 7, 11, 23, 31],
    [3, 7, 11, 23, 37],
    [3, 7, 11, 23, 41],
    [3, 7, 11, 23, 43],
    [3, 7, 11, 23, 47],
    [3, 7, 11, 23, 53],
    [3, 7, 11, 23, 59],
    [3, 7, 11, 29, 31],
    [3, 7, 11, 29, 37],
    [3, 7, 11, 29, 41],
    [3, 7, 11, 29, 43],
    [3, 7, 11, 29, 47],
    [3, 7, 11, 31, 37],
    [3, 7, 11, 31, 41],
    [3, 7, 11, 31, 43],
    [3, 7, 11, 31, 47],
    [3, 7, 11, 37, 41],
    [3, 7, 11, 37, 43],
    [3, 7, 11, 41, 43],
    [3, 7, 13, 17, 19],
    [3, 7, 13, 17, 23],
    [3, 7, 13, 17, 29],
    [3, 7, 13, 17, 31],
    [3, 7, 13, 17, 37],
    [3, 7, 13, 17, 41]]

theorem k6PrefixGroup0000_support_covered :
    k6PrefixGroup0000.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k6PrefixGroup0000MaskPrimes))) = true := by
  rfl

theorem k6PrefixGroup0000_passes :
    k6PrefixGroup0000.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k6PrefixGroup0000NormalLookup
        k6PrefixGroup0000TwistLookup rootBaseWords 6) = true := by
  rfl

theorem k6PrefixGroup0000_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0000NormalLookup
        k6PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k6PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0000TwistLookup p =
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

theorem k6PrefixGroup0000_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0000NormalLookup
        k6PrefixGroup0000TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k6PrefixGroup0000NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k6PrefixGroup0000TwistLookup p =
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

theorem k6PrefixGroup0000_mask_primes_pass :
    k6PrefixGroup0000MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k6PrefixGroup0000NormalLookup
        k6PrefixGroup0000TwistLookup) = true := by
  simp only [k6PrefixGroup0000MaskPrimes, List.all_append]
  rw [k6PrefixGroup0000_mask_group0000_passes]
  rw [k6PrefixGroup0000_mask_group0001_passes]
  rfl

theorem k6PrefixGroup0000_certified
    {support : List ℕ} (hsupport : support ∈ k6PrefixGroup0000) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  refine ⟨k6PrefixGroup0000NormalLookup,
    k6PrefixGroup0000TwistLookup, ?_,
    (List.all_eq_true.mp
      k6PrefixGroup0000_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k6PrefixGroup0000_support_covered) support hsupport
  have hmem : p ∈
      k6PrefixGroup0000MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k6PrefixGroup0000_mask_primes_pass) p hmem

#print axioms k6PrefixGroup0000_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
