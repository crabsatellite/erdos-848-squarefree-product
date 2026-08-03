import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0018NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0018TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0018MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0018 : List (List ℕ) :=
  [[3, 19, 37, 83],
    [3, 19, 37, 89],
    [3, 19, 41, 43],
    [3, 19, 41, 47],
    [3, 19, 41, 53],
    [3, 19, 41, 59],
    [3, 19, 41, 61],
    [3, 19, 41, 67],
    [3, 19, 41, 71],
    [3, 19, 41, 73],
    [3, 19, 41, 79],
    [3, 19, 41, 83],
    [3, 19, 43, 47],
    [3, 19, 43, 53],
    [3, 19, 43, 59],
    [3, 19, 43, 61],
    [3, 19, 43, 67],
    [3, 19, 43, 71],
    [3, 19, 43, 73],
    [3, 19, 43, 79],
    [3, 19, 43, 83],
    [3, 19, 47, 53],
    [3, 19, 47, 59],
    [3, 19, 47, 61],
    [3, 19, 47, 67],
    [3, 19, 47, 71],
    [3, 19, 47, 73],
    [3, 19, 47, 79],
    [3, 19, 47, 83],
    [3, 19, 53, 59],
    [3, 19, 53, 61],
    [3, 19, 53, 67],
    [3, 19, 53, 71],
    [3, 19, 53, 73],
    [3, 19, 53, 79],
    [3, 19, 59, 61],
    [3, 19, 59, 67],
    [3, 19, 59, 71],
    [3, 19, 59, 73],
    [3, 19, 61, 67],
    [3, 19, 61, 71],
    [3, 19, 67, 71],
    [3, 23, 29, 31],
    [3, 23, 29, 37],
    [3, 23, 29, 41],
    [3, 23, 29, 43],
    [3, 23, 29, 47],
    [3, 23, 29, 53],
    [3, 23, 29, 59],
    [3, 23, 29, 61],
    [3, 23, 29, 67],
    [3, 23, 29, 71],
    [3, 23, 29, 73],
    [3, 23, 29, 79],
    [3, 23, 29, 83],
    [3, 23, 29, 89],
    [3, 23, 29, 97],
    [3, 23, 31, 37],
    [3, 23, 31, 41],
    [3, 23, 31, 43],
    [3, 23, 31, 47],
    [3, 23, 31, 53],
    [3, 23, 31, 59],
    [3, 23, 31, 61]]

theorem k5PrefixGroup0018_support_covered :
    k5PrefixGroup0018.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0018MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0018_passes :
    k5PrefixGroup0018.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0018_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0018NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0018TwistLookup p =
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

theorem k5PrefixGroup0018_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0018NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0018TwistLookup p =
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

theorem k5PrefixGroup0018_mask_primes_pass :
    k5PrefixGroup0018MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0018NormalLookup
        k5PrefixGroup0018TwistLookup) = true := by
  simp only [k5PrefixGroup0018MaskPrimes, List.all_append]
  rw [k5PrefixGroup0018_mask_group0000_passes]
  rw [k5PrefixGroup0018_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0018_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0018) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0018NormalLookup,
    k5PrefixGroup0018TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0018_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0018_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0018MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0018_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0018_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
