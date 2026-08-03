import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0023NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0023TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0023MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0023 : List (List ℕ) :=
  [[7, 11, 41, 61],
    [7, 11, 41, 67],
    [7, 11, 41, 71],
    [7, 11, 41, 73],
    [7, 11, 43, 47],
    [7, 11, 43, 53],
    [7, 11, 43, 59],
    [7, 11, 43, 61],
    [7, 11, 43, 67],
    [7, 11, 43, 71],
    [7, 11, 43, 73],
    [7, 11, 47, 53],
    [7, 11, 47, 59],
    [7, 11, 47, 61],
    [7, 11, 47, 67],
    [7, 11, 47, 71],
    [7, 11, 53, 59],
    [7, 11, 53, 61],
    [7, 11, 53, 67],
    [7, 11, 59, 61],
    [7, 13, 17, 19],
    [7, 13, 17, 23],
    [7, 13, 17, 29],
    [7, 13, 17, 31],
    [7, 13, 17, 37],
    [7, 13, 17, 41],
    [7, 13, 17, 43],
    [7, 13, 17, 47],
    [7, 13, 17, 53],
    [7, 13, 17, 59],
    [7, 13, 17, 61],
    [7, 13, 17, 67],
    [7, 13, 17, 71],
    [7, 13, 17, 73],
    [7, 13, 17, 79],
    [7, 13, 17, 83],
    [7, 13, 17, 89],
    [7, 13, 17, 97],
    [7, 13, 17, 101],
    [7, 13, 17, 103],
    [7, 13, 17, 107],
    [7, 13, 17, 109],
    [7, 13, 19, 23],
    [7, 13, 19, 29],
    [7, 13, 19, 31],
    [7, 13, 19, 37],
    [7, 13, 19, 41],
    [7, 13, 19, 43],
    [7, 13, 19, 47],
    [7, 13, 19, 53],
    [7, 13, 19, 59],
    [7, 13, 19, 61],
    [7, 13, 19, 67],
    [7, 13, 19, 71],
    [7, 13, 19, 73],
    [7, 13, 19, 79],
    [7, 13, 19, 83],
    [7, 13, 19, 89],
    [7, 13, 19, 97],
    [7, 13, 19, 101],
    [7, 13, 19, 103],
    [7, 13, 23, 29],
    [7, 13, 23, 31],
    [7, 13, 23, 37]]

theorem k5PrefixGroup0023_support_covered :
    k5PrefixGroup0023.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0023MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0023_passes :
    k5PrefixGroup0023.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0023_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0023TwistLookup p =
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

theorem k5PrefixGroup0023_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0023TwistLookup p =
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

theorem k5PrefixGroup0023_mask_primes_pass :
    k5PrefixGroup0023MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0023NormalLookup
        k5PrefixGroup0023TwistLookup) = true := by
  simp only [k5PrefixGroup0023MaskPrimes, List.all_append]
  rw [k5PrefixGroup0023_mask_group0000_passes]
  rw [k5PrefixGroup0023_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0023_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0023) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0023NormalLookup,
    k5PrefixGroup0023TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0023_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0023_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0023MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0023_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0023_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
