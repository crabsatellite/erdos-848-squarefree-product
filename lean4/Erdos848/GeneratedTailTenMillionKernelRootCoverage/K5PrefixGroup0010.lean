import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0010NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0010TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0010MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0010 : List (List ℕ) :=
  [[3, 11, 37, 79],
    [3, 11, 37, 83],
    [3, 11, 37, 89],
    [3, 11, 37, 97],
    [3, 11, 37, 101],
    [3, 11, 37, 103],
    [3, 11, 37, 107],
    [3, 11, 37, 109],
    [3, 11, 37, 113],
    [3, 11, 41, 43],
    [3, 11, 41, 47],
    [3, 11, 41, 53],
    [3, 11, 41, 59],
    [3, 11, 41, 61],
    [3, 11, 41, 67],
    [3, 11, 41, 71],
    [3, 11, 41, 73],
    [3, 11, 41, 79],
    [3, 11, 41, 83],
    [3, 11, 41, 89],
    [3, 11, 41, 97],
    [3, 11, 41, 101],
    [3, 11, 41, 103],
    [3, 11, 41, 107],
    [3, 11, 41, 109],
    [3, 11, 41, 113],
    [3, 11, 43, 47],
    [3, 11, 43, 53],
    [3, 11, 43, 59],
    [3, 11, 43, 61],
    [3, 11, 43, 67],
    [3, 11, 43, 71],
    [3, 11, 43, 73],
    [3, 11, 43, 79],
    [3, 11, 43, 83],
    [3, 11, 43, 89],
    [3, 11, 43, 97],
    [3, 11, 43, 101],
    [3, 11, 43, 103],
    [3, 11, 43, 107],
    [3, 11, 43, 109],
    [3, 11, 47, 53],
    [3, 11, 47, 59],
    [3, 11, 47, 61],
    [3, 11, 47, 67],
    [3, 11, 47, 71],
    [3, 11, 47, 73],
    [3, 11, 47, 79],
    [3, 11, 47, 83],
    [3, 11, 47, 89],
    [3, 11, 47, 97],
    [3, 11, 47, 101],
    [3, 11, 47, 103],
    [3, 11, 47, 107],
    [3, 11, 47, 109],
    [3, 11, 53, 59],
    [3, 11, 53, 61],
    [3, 11, 53, 67],
    [3, 11, 53, 71],
    [3, 11, 53, 73],
    [3, 11, 53, 79],
    [3, 11, 53, 83],
    [3, 11, 53, 89],
    [3, 11, 53, 97]]

theorem k5PrefixGroup0010_support_covered :
    k5PrefixGroup0010.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0010MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0010_passes :
    k5PrefixGroup0010.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0010_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0010TwistLookup p =
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

theorem k5PrefixGroup0010_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0010TwistLookup p =
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

theorem k5PrefixGroup0010_mask_primes_pass :
    k5PrefixGroup0010MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0010NormalLookup
        k5PrefixGroup0010TwistLookup) = true := by
  simp only [k5PrefixGroup0010MaskPrimes, List.all_append]
  rw [k5PrefixGroup0010_mask_group0000_passes]
  rw [k5PrefixGroup0010_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0010_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0010) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0010NormalLookup,
    k5PrefixGroup0010TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0010_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0010_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0010MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0010_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0010_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
