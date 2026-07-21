import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0014NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0014TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0014MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0014 : List (List ℕ) :=
  [[3, 13, 43, 71],
    [3, 13, 43, 73],
    [3, 13, 43, 79],
    [3, 13, 43, 83],
    [3, 13, 43, 89],
    [3, 13, 43, 97],
    [3, 13, 43, 101],
    [3, 13, 43, 103],
    [3, 13, 43, 107],
    [3, 13, 47, 53],
    [3, 13, 47, 59],
    [3, 13, 47, 61],
    [3, 13, 47, 67],
    [3, 13, 47, 71],
    [3, 13, 47, 73],
    [3, 13, 47, 79],
    [3, 13, 47, 83],
    [3, 13, 47, 89],
    [3, 13, 47, 97],
    [3, 13, 47, 101],
    [3, 13, 53, 59],
    [3, 13, 53, 61],
    [3, 13, 53, 67],
    [3, 13, 53, 71],
    [3, 13, 53, 73],
    [3, 13, 53, 79],
    [3, 13, 53, 83],
    [3, 13, 53, 89],
    [3, 13, 59, 61],
    [3, 13, 59, 67],
    [3, 13, 59, 71],
    [3, 13, 59, 73],
    [3, 13, 59, 79],
    [3, 13, 59, 83],
    [3, 13, 59, 89],
    [3, 13, 61, 67],
    [3, 13, 61, 71],
    [3, 13, 61, 73],
    [3, 13, 61, 79],
    [3, 13, 61, 83],
    [3, 13, 67, 71],
    [3, 13, 67, 73],
    [3, 13, 67, 79],
    [3, 13, 67, 83],
    [3, 13, 71, 73],
    [3, 13, 71, 79],
    [3, 13, 73, 79],
    [3, 17, 19, 23],
    [3, 17, 19, 29],
    [3, 17, 19, 31],
    [3, 17, 19, 37],
    [3, 17, 19, 41],
    [3, 17, 19, 43],
    [3, 17, 19, 47],
    [3, 17, 19, 53],
    [3, 17, 19, 59],
    [3, 17, 19, 61],
    [3, 17, 19, 67],
    [3, 17, 19, 71],
    [3, 17, 19, 73],
    [3, 17, 19, 79],
    [3, 17, 19, 83],
    [3, 17, 19, 89],
    [3, 17, 19, 97]]

theorem k5PrefixGroup0014_support_covered :
    k5PrefixGroup0014.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0014MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0014_passes :
    k5PrefixGroup0014.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0014_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0014NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0014TwistLookup p =
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

theorem k5PrefixGroup0014_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0014NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0014TwistLookup p =
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

theorem k5PrefixGroup0014_mask_primes_pass :
    k5PrefixGroup0014MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0014NormalLookup
        k5PrefixGroup0014TwistLookup) = true := by
  simp only [k5PrefixGroup0014MaskPrimes, List.all_append]
  rw [k5PrefixGroup0014_mask_group0000_passes]
  rw [k5PrefixGroup0014_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0014_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0014) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0014NormalLookup,
    k5PrefixGroup0014TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0014_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0014_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0014MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0014_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0014_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
