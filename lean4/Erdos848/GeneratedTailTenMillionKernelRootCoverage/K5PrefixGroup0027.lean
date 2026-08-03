import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0027NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0027TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0027MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0027 : List (List ℕ) :=
  [[7, 29, 31, 47],
    [7, 29, 31, 53],
    [7, 29, 37, 41],
    [7, 29, 37, 43],
    [7, 29, 37, 47],
    [7, 29, 41, 43],
    [7, 31, 37, 41],
    [7, 31, 37, 43],
    [7, 31, 41, 43],
    [11, 13, 17, 19],
    [11, 13, 17, 23],
    [11, 13, 17, 29],
    [11, 13, 17, 31],
    [11, 13, 17, 37],
    [11, 13, 17, 41],
    [11, 13, 17, 43],
    [11, 13, 17, 47],
    [11, 13, 17, 53],
    [11, 13, 17, 59],
    [11, 13, 17, 61],
    [11, 13, 17, 67],
    [11, 13, 17, 71],
    [11, 13, 17, 73],
    [11, 13, 17, 79],
    [11, 13, 17, 83],
    [11, 13, 19, 23],
    [11, 13, 19, 29],
    [11, 13, 19, 31],
    [11, 13, 19, 37],
    [11, 13, 19, 41],
    [11, 13, 19, 43],
    [11, 13, 19, 47],
    [11, 13, 19, 53],
    [11, 13, 19, 59],
    [11, 13, 19, 61],
    [11, 13, 19, 67],
    [11, 13, 19, 71],
    [11, 13, 19, 73],
    [11, 13, 19, 79],
    [11, 13, 23, 29],
    [11, 13, 23, 31],
    [11, 13, 23, 37],
    [11, 13, 23, 41],
    [11, 13, 23, 43],
    [11, 13, 23, 47],
    [11, 13, 23, 53],
    [11, 13, 23, 59],
    [11, 13, 23, 61],
    [11, 13, 23, 67],
    [11, 13, 23, 71],
    [11, 13, 23, 73],
    [11, 13, 29, 31],
    [11, 13, 29, 37],
    [11, 13, 29, 41],
    [11, 13, 29, 43],
    [11, 13, 29, 47],
    [11, 13, 29, 53],
    [11, 13, 29, 59],
    [11, 13, 29, 61],
    [11, 13, 29, 67],
    [11, 13, 31, 37],
    [11, 13, 31, 41],
    [11, 13, 31, 43],
    [11, 13, 31, 47]]

theorem k5PrefixGroup0027_support_covered :
    k5PrefixGroup0027.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0027MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0027_passes :
    k5PrefixGroup0027.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0027_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0027TwistLookup p =
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

theorem k5PrefixGroup0027_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0027NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0027TwistLookup p =
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

theorem k5PrefixGroup0027_mask_primes_pass :
    k5PrefixGroup0027MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0027NormalLookup
        k5PrefixGroup0027TwistLookup) = true := by
  simp only [k5PrefixGroup0027MaskPrimes, List.all_append]
  rw [k5PrefixGroup0027_mask_group0000_passes]
  rw [k5PrefixGroup0027_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0027_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0027) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0027NormalLookup,
    k5PrefixGroup0027TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0027_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0027_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0027MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0027_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0027_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
