import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0011NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0011TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0011MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0011 : List (List ℕ) :=
  [[3, 11, 53, 101],
    [3, 11, 53, 103],
    [3, 11, 59, 61],
    [3, 11, 59, 67],
    [3, 11, 59, 71],
    [3, 11, 59, 73],
    [3, 11, 59, 79],
    [3, 11, 59, 83],
    [3, 11, 59, 89],
    [3, 11, 59, 97],
    [3, 11, 61, 67],
    [3, 11, 61, 71],
    [3, 11, 61, 73],
    [3, 11, 61, 79],
    [3, 11, 61, 83],
    [3, 11, 61, 89],
    [3, 11, 61, 97],
    [3, 11, 67, 71],
    [3, 11, 67, 73],
    [3, 11, 67, 79],
    [3, 11, 67, 83],
    [3, 11, 67, 89],
    [3, 11, 71, 73],
    [3, 11, 71, 79],
    [3, 11, 71, 83],
    [3, 11, 73, 79],
    [3, 11, 73, 83],
    [3, 11, 79, 83],
    [3, 13, 17, 19],
    [3, 13, 17, 23],
    [3, 13, 17, 29],
    [3, 13, 17, 31],
    [3, 13, 17, 37],
    [3, 13, 17, 41],
    [3, 13, 17, 43],
    [3, 13, 17, 47],
    [3, 13, 17, 53],
    [3, 13, 17, 59],
    [3, 13, 17, 61],
    [3, 13, 17, 67],
    [3, 13, 17, 71],
    [3, 13, 17, 73],
    [3, 13, 17, 79],
    [3, 13, 17, 83],
    [3, 13, 17, 89],
    [3, 13, 17, 97],
    [3, 13, 17, 101],
    [3, 13, 17, 103],
    [3, 13, 17, 107],
    [3, 13, 17, 109],
    [3, 13, 17, 113],
    [3, 13, 17, 127],
    [3, 13, 17, 131],
    [3, 13, 17, 137],
    [3, 13, 17, 139],
    [3, 13, 17, 149],
    [3, 13, 17, 151],
    [3, 13, 17, 157],
    [3, 13, 17, 163],
    [3, 13, 17, 167],
    [3, 13, 19, 23],
    [3, 13, 19, 29],
    [3, 13, 19, 31],
    [3, 13, 19, 37]]

theorem k5PrefixGroup0011_support_covered :
    k5PrefixGroup0011.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0011MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0011_passes :
    k5PrefixGroup0011.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0011_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
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

theorem k5PrefixGroup0011_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
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

theorem k5PrefixGroup0011_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k5PrefixGroup0011_mask_primes_pass :
    k5PrefixGroup0011MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0011NormalLookup
        k5PrefixGroup0011TwistLookup) = true := by
  simp only [k5PrefixGroup0011MaskPrimes, List.all_append]
  rw [k5PrefixGroup0011_mask_group0000_passes]
  rw [k5PrefixGroup0011_mask_group0001_passes]
  rw [k5PrefixGroup0011_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0011_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0011) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0011NormalLookup,
    k5PrefixGroup0011TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0011_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0011_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0011MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0011_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0011_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
