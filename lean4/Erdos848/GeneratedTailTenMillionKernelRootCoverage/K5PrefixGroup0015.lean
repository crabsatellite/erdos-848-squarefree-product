import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0015NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0015TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0015MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0015 : List (List ℕ) :=
  [[3, 17, 19, 101],
    [3, 17, 19, 103],
    [3, 17, 19, 107],
    [3, 17, 19, 109],
    [3, 17, 19, 113],
    [3, 17, 19, 127],
    [3, 17, 19, 131],
    [3, 17, 19, 137],
    [3, 17, 23, 29],
    [3, 17, 23, 31],
    [3, 17, 23, 37],
    [3, 17, 23, 41],
    [3, 17, 23, 43],
    [3, 17, 23, 47],
    [3, 17, 23, 53],
    [3, 17, 23, 59],
    [3, 17, 23, 61],
    [3, 17, 23, 67],
    [3, 17, 23, 71],
    [3, 17, 23, 73],
    [3, 17, 23, 79],
    [3, 17, 23, 83],
    [3, 17, 23, 89],
    [3, 17, 23, 97],
    [3, 17, 23, 101],
    [3, 17, 23, 103],
    [3, 17, 23, 107],
    [3, 17, 23, 109],
    [3, 17, 23, 113],
    [3, 17, 23, 127],
    [3, 17, 29, 31],
    [3, 17, 29, 37],
    [3, 17, 29, 41],
    [3, 17, 29, 43],
    [3, 17, 29, 47],
    [3, 17, 29, 53],
    [3, 17, 29, 59],
    [3, 17, 29, 61],
    [3, 17, 29, 67],
    [3, 17, 29, 71],
    [3, 17, 29, 73],
    [3, 17, 29, 79],
    [3, 17, 29, 83],
    [3, 17, 29, 89],
    [3, 17, 29, 97],
    [3, 17, 29, 101],
    [3, 17, 29, 103],
    [3, 17, 29, 107],
    [3, 17, 29, 109],
    [3, 17, 31, 37],
    [3, 17, 31, 41],
    [3, 17, 31, 43],
    [3, 17, 31, 47],
    [3, 17, 31, 53],
    [3, 17, 31, 59],
    [3, 17, 31, 61],
    [3, 17, 31, 67],
    [3, 17, 31, 71],
    [3, 17, 31, 73],
    [3, 17, 31, 79],
    [3, 17, 31, 83],
    [3, 17, 31, 89],
    [3, 17, 31, 97],
    [3, 17, 31, 101]]

theorem k5PrefixGroup0015_support_covered :
    k5PrefixGroup0015.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0015MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0015_passes :
    k5PrefixGroup0015.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0015NormalLookup
        k5PrefixGroup0015TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0015_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0015NormalLookup
        k5PrefixGroup0015TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0015NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0015TwistLookup p =
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

theorem k5PrefixGroup0015_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0015NormalLookup
        k5PrefixGroup0015TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0015NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0015TwistLookup p =
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

theorem k5PrefixGroup0015_mask_primes_pass :
    k5PrefixGroup0015MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0015NormalLookup
        k5PrefixGroup0015TwistLookup) = true := by
  simp only [k5PrefixGroup0015MaskPrimes, List.all_append]
  rw [k5PrefixGroup0015_mask_group0000_passes]
  rw [k5PrefixGroup0015_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0015_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0015) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0015NormalLookup,
    k5PrefixGroup0015TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0015_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0015_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0015MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0015_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0015_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
