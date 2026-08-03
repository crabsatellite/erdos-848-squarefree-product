import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0078NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0078TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0078MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0078 : List (List ℕ) :=
  [[41, 43, 101],
    [41, 43, 103],
    [41, 47, 53],
    [41, 47, 59],
    [41, 47, 61],
    [41, 47, 67],
    [41, 47, 71],
    [41, 47, 73],
    [41, 47, 79],
    [41, 47, 83],
    [41, 47, 89],
    [41, 47, 97],
    [41, 53, 59],
    [41, 53, 61],
    [41, 53, 67],
    [41, 53, 71],
    [41, 53, 73],
    [41, 53, 79],
    [41, 53, 83],
    [41, 53, 89],
    [41, 59, 61],
    [41, 59, 67],
    [41, 59, 71],
    [41, 59, 73],
    [41, 59, 79],
    [41, 59, 83],
    [41, 61, 67],
    [41, 61, 71],
    [41, 61, 73],
    [41, 61, 79],
    [41, 61, 83],
    [41, 67, 71],
    [41, 67, 73],
    [41, 67, 79],
    [41, 71, 73],
    [41, 71, 79],
    [41, 73, 79],
    [43, 47, 53],
    [43, 47, 59],
    [43, 47, 61],
    [43, 47, 67],
    [43, 47, 71],
    [43, 47, 73],
    [43, 47, 79],
    [43, 47, 83],
    [43, 47, 89],
    [43, 47, 97],
    [43, 53, 59],
    [43, 53, 61],
    [43, 53, 67],
    [43, 53, 71],
    [43, 53, 73],
    [43, 53, 79],
    [43, 53, 83],
    [43, 53, 89],
    [43, 59, 61],
    [43, 59, 67],
    [43, 59, 71],
    [43, 59, 73],
    [43, 59, 79],
    [43, 59, 83],
    [43, 61, 67],
    [43, 61, 71],
    [43, 61, 73]]

theorem k4PrefixGroup0078_support_covered :
    k4PrefixGroup0078.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0078MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0078_passes :
    k4PrefixGroup0078.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0078_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0078NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0078TwistLookup p =
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

theorem k4PrefixGroup0078_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0078NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0078TwistLookup p =
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

theorem k4PrefixGroup0078_mask_primes_pass :
    k4PrefixGroup0078MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0078NormalLookup
        k4PrefixGroup0078TwistLookup) = true := by
  simp only [k4PrefixGroup0078MaskPrimes, List.all_append]
  rw [k4PrefixGroup0078_mask_group0000_passes]
  rw [k4PrefixGroup0078_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0078_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0078) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0078NormalLookup,
    k4PrefixGroup0078TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0078_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0078_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0078MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0078_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0078_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
