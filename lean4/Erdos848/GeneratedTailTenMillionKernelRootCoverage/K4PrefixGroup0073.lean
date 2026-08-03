import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0073NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0073TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0073MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0073 : List (List ℕ) :=
  [[29, 31, 97],
    [29, 31, 101],
    [29, 31, 103],
    [29, 31, 107],
    [29, 31, 109],
    [29, 31, 113],
    [29, 31, 127],
    [29, 31, 131],
    [29, 31, 137],
    [29, 31, 139],
    [29, 37, 41],
    [29, 37, 43],
    [29, 37, 47],
    [29, 37, 53],
    [29, 37, 59],
    [29, 37, 61],
    [29, 37, 67],
    [29, 37, 71],
    [29, 37, 73],
    [29, 37, 79],
    [29, 37, 83],
    [29, 37, 89],
    [29, 37, 97],
    [29, 37, 101],
    [29, 37, 103],
    [29, 37, 107],
    [29, 37, 109],
    [29, 37, 113],
    [29, 37, 127],
    [29, 37, 131],
    [29, 41, 43],
    [29, 41, 47],
    [29, 41, 53],
    [29, 41, 59],
    [29, 41, 61],
    [29, 41, 67],
    [29, 41, 71],
    [29, 41, 73],
    [29, 41, 79],
    [29, 41, 83],
    [29, 41, 89],
    [29, 41, 97],
    [29, 41, 101],
    [29, 41, 103],
    [29, 41, 107],
    [29, 41, 109],
    [29, 41, 113],
    [29, 41, 127],
    [29, 43, 47],
    [29, 43, 53],
    [29, 43, 59],
    [29, 43, 61],
    [29, 43, 67],
    [29, 43, 71],
    [29, 43, 73],
    [29, 43, 79],
    [29, 43, 83],
    [29, 43, 89],
    [29, 43, 97],
    [29, 43, 101],
    [29, 43, 103],
    [29, 43, 107],
    [29, 43, 109],
    [29, 43, 113]]

theorem k4PrefixGroup0073_support_covered :
    k4PrefixGroup0073.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0073MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0073_passes :
    k4PrefixGroup0073.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0073_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0073NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0073TwistLookup p =
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

theorem k4PrefixGroup0073_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0073NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0073TwistLookup p =
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

theorem k4PrefixGroup0073_mask_primes_pass :
    k4PrefixGroup0073MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0073NormalLookup
        k4PrefixGroup0073TwistLookup) = true := by
  simp only [k4PrefixGroup0073MaskPrimes, List.all_append]
  rw [k4PrefixGroup0073_mask_group0000_passes]
  rw [k4PrefixGroup0073_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0073_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0073) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0073NormalLookup,
    k4PrefixGroup0073TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0073_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0073_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0073MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0073_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0073_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
