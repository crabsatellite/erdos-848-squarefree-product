import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0077NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0077TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0077MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0077 : List (List ℕ) :=
  [[37, 43, 71],
    [37, 43, 73],
    [37, 43, 79],
    [37, 43, 83],
    [37, 43, 89],
    [37, 43, 97],
    [37, 43, 101],
    [37, 43, 103],
    [37, 43, 107],
    [37, 43, 109],
    [37, 47, 53],
    [37, 47, 59],
    [37, 47, 61],
    [37, 47, 67],
    [37, 47, 71],
    [37, 47, 73],
    [37, 47, 79],
    [37, 47, 83],
    [37, 47, 89],
    [37, 47, 97],
    [37, 47, 101],
    [37, 47, 103],
    [37, 53, 59],
    [37, 53, 61],
    [37, 53, 67],
    [37, 53, 71],
    [37, 53, 73],
    [37, 53, 79],
    [37, 53, 83],
    [37, 53, 89],
    [37, 53, 97],
    [37, 59, 61],
    [37, 59, 67],
    [37, 59, 71],
    [37, 59, 73],
    [37, 59, 79],
    [37, 59, 83],
    [37, 59, 89],
    [37, 61, 67],
    [37, 61, 71],
    [37, 61, 73],
    [37, 61, 79],
    [37, 61, 83],
    [37, 61, 89],
    [37, 67, 71],
    [37, 67, 73],
    [37, 67, 79],
    [37, 67, 83],
    [37, 71, 73],
    [37, 71, 79],
    [37, 71, 83],
    [37, 73, 79],
    [37, 73, 83],
    [41, 43, 47],
    [41, 43, 53],
    [41, 43, 59],
    [41, 43, 61],
    [41, 43, 67],
    [41, 43, 71],
    [41, 43, 73],
    [41, 43, 79],
    [41, 43, 83],
    [41, 43, 89],
    [41, 43, 97]]

theorem k4PrefixGroup0077_support_covered :
    k4PrefixGroup0077.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0077MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0077_passes :
    k4PrefixGroup0077.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0077_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0077TwistLookup p =
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

theorem k4PrefixGroup0077_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0077NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0077TwistLookup p =
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

theorem k4PrefixGroup0077_mask_primes_pass :
    k4PrefixGroup0077MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0077NormalLookup
        k4PrefixGroup0077TwistLookup) = true := by
  simp only [k4PrefixGroup0077MaskPrimes, List.all_append]
  rw [k4PrefixGroup0077_mask_group0000_passes]
  rw [k4PrefixGroup0077_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0077_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0077) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0077NormalLookup,
    k4PrefixGroup0077TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0077_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0077_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0077MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0077_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0077_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
