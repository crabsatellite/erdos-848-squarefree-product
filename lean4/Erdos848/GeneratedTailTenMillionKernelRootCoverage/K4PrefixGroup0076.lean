import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0076NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0076TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0076MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0076 : List (List ℕ) :=
  [[31, 47, 109],
    [31, 53, 59],
    [31, 53, 61],
    [31, 53, 67],
    [31, 53, 71],
    [31, 53, 73],
    [31, 53, 79],
    [31, 53, 83],
    [31, 53, 89],
    [31, 53, 97],
    [31, 53, 101],
    [31, 53, 103],
    [31, 53, 107],
    [31, 59, 61],
    [31, 59, 67],
    [31, 59, 71],
    [31, 59, 73],
    [31, 59, 79],
    [31, 59, 83],
    [31, 59, 89],
    [31, 59, 97],
    [31, 59, 101],
    [31, 61, 67],
    [31, 61, 71],
    [31, 61, 73],
    [31, 61, 79],
    [31, 61, 83],
    [31, 61, 89],
    [31, 61, 97],
    [31, 61, 101],
    [31, 67, 71],
    [31, 67, 73],
    [31, 67, 79],
    [31, 67, 83],
    [31, 67, 89],
    [31, 71, 73],
    [31, 71, 79],
    [31, 71, 83],
    [31, 71, 89],
    [31, 73, 79],
    [31, 73, 83],
    [31, 73, 89],
    [31, 79, 83],
    [37, 41, 43],
    [37, 41, 47],
    [37, 41, 53],
    [37, 41, 59],
    [37, 41, 61],
    [37, 41, 67],
    [37, 41, 71],
    [37, 41, 73],
    [37, 41, 79],
    [37, 41, 83],
    [37, 41, 89],
    [37, 41, 97],
    [37, 41, 101],
    [37, 41, 103],
    [37, 41, 107],
    [37, 41, 109],
    [37, 43, 47],
    [37, 43, 53],
    [37, 43, 59],
    [37, 43, 61],
    [37, 43, 67]]

theorem k4PrefixGroup0076_support_covered :
    k4PrefixGroup0076.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0076MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0076_passes :
    k4PrefixGroup0076.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0076_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0076NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0076TwistLookup p =
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

theorem k4PrefixGroup0076_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0076NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0076TwistLookup p =
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

theorem k4PrefixGroup0076_mask_primes_pass :
    k4PrefixGroup0076MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0076NormalLookup
        k4PrefixGroup0076TwistLookup) = true := by
  simp only [k4PrefixGroup0076MaskPrimes, List.all_append]
  rw [k4PrefixGroup0076_mask_group0000_passes]
  rw [k4PrefixGroup0076_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0076_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0076) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0076NormalLookup,
    k4PrefixGroup0076TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0076_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0076_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0076MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0076_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0076_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
