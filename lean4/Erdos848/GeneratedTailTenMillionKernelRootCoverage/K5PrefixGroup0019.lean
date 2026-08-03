import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0019NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0019TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0019MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0019 : List (List ℕ) :=
  [[3, 23, 31, 67],
    [3, 23, 31, 71],
    [3, 23, 31, 73],
    [3, 23, 31, 79],
    [3, 23, 31, 83],
    [3, 23, 31, 89],
    [3, 23, 37, 41],
    [3, 23, 37, 43],
    [3, 23, 37, 47],
    [3, 23, 37, 53],
    [3, 23, 37, 59],
    [3, 23, 37, 61],
    [3, 23, 37, 67],
    [3, 23, 37, 71],
    [3, 23, 37, 73],
    [3, 23, 37, 79],
    [3, 23, 37, 83],
    [3, 23, 41, 43],
    [3, 23, 41, 47],
    [3, 23, 41, 53],
    [3, 23, 41, 59],
    [3, 23, 41, 61],
    [3, 23, 41, 67],
    [3, 23, 41, 71],
    [3, 23, 41, 73],
    [3, 23, 41, 79],
    [3, 23, 43, 47],
    [3, 23, 43, 53],
    [3, 23, 43, 59],
    [3, 23, 43, 61],
    [3, 23, 43, 67],
    [3, 23, 43, 71],
    [3, 23, 43, 73],
    [3, 23, 43, 79],
    [3, 23, 47, 53],
    [3, 23, 47, 59],
    [3, 23, 47, 61],
    [3, 23, 47, 67],
    [3, 23, 47, 71],
    [3, 23, 47, 73],
    [3, 23, 53, 59],
    [3, 23, 53, 61],
    [3, 23, 53, 67],
    [3, 23, 53, 71],
    [3, 23, 59, 61],
    [3, 23, 59, 67],
    [3, 29, 31, 37],
    [3, 29, 31, 41],
    [3, 29, 31, 43],
    [3, 29, 31, 47],
    [3, 29, 31, 53],
    [3, 29, 31, 59],
    [3, 29, 31, 61],
    [3, 29, 31, 67],
    [3, 29, 31, 71],
    [3, 29, 31, 73],
    [3, 29, 31, 79],
    [3, 29, 31, 83],
    [3, 29, 37, 41],
    [3, 29, 37, 43],
    [3, 29, 37, 47],
    [3, 29, 37, 53],
    [3, 29, 37, 59],
    [3, 29, 37, 61]]

theorem k5PrefixGroup0019_support_covered :
    k5PrefixGroup0019.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0019MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0019_passes :
    k5PrefixGroup0019.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0019_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0019NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0019TwistLookup p =
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

theorem k5PrefixGroup0019_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0019NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0019TwistLookup p =
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

theorem k5PrefixGroup0019_mask_primes_pass :
    k5PrefixGroup0019MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0019NormalLookup
        k5PrefixGroup0019TwistLookup) = true := by
  simp only [k5PrefixGroup0019MaskPrimes, List.all_append]
  rw [k5PrefixGroup0019_mask_group0000_passes]
  rw [k5PrefixGroup0019_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0019_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0019) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0019NormalLookup,
    k5PrefixGroup0019TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0019_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0019_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0019MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0019_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0019_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
