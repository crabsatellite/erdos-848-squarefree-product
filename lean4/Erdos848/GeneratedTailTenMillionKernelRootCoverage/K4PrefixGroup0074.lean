import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0074NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0074TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0074MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0074 : List (List ℕ) :=
  [[29, 47, 53],
    [29, 47, 59],
    [29, 47, 61],
    [29, 47, 67],
    [29, 47, 71],
    [29, 47, 73],
    [29, 47, 79],
    [29, 47, 83],
    [29, 47, 89],
    [29, 47, 97],
    [29, 47, 101],
    [29, 47, 103],
    [29, 47, 107],
    [29, 47, 109],
    [29, 47, 113],
    [29, 53, 59],
    [29, 53, 61],
    [29, 53, 67],
    [29, 53, 71],
    [29, 53, 73],
    [29, 53, 79],
    [29, 53, 83],
    [29, 53, 89],
    [29, 53, 97],
    [29, 53, 101],
    [29, 53, 103],
    [29, 53, 107],
    [29, 53, 109],
    [29, 59, 61],
    [29, 59, 67],
    [29, 59, 71],
    [29, 59, 73],
    [29, 59, 79],
    [29, 59, 83],
    [29, 59, 89],
    [29, 59, 97],
    [29, 59, 101],
    [29, 59, 103],
    [29, 59, 107],
    [29, 61, 67],
    [29, 61, 71],
    [29, 61, 73],
    [29, 61, 79],
    [29, 61, 83],
    [29, 61, 89],
    [29, 61, 97],
    [29, 61, 101],
    [29, 61, 103],
    [29, 67, 71],
    [29, 67, 73],
    [29, 67, 79],
    [29, 67, 83],
    [29, 67, 89],
    [29, 67, 97],
    [29, 71, 73],
    [29, 71, 79],
    [29, 71, 83],
    [29, 71, 89],
    [29, 73, 79],
    [29, 73, 83],
    [29, 73, 89],
    [29, 79, 83],
    [29, 79, 89],
    [31, 37, 41]]

theorem k4PrefixGroup0074_support_covered :
    k4PrefixGroup0074.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0074MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0074_passes :
    k4PrefixGroup0074.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0074NormalLookup
        k4PrefixGroup0074TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0074_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0074NormalLookup
        k4PrefixGroup0074TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0074NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0074TwistLookup p =
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

theorem k4PrefixGroup0074_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0074NormalLookup
        k4PrefixGroup0074TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0074NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0074TwistLookup p =
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

theorem k4PrefixGroup0074_mask_primes_pass :
    k4PrefixGroup0074MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0074NormalLookup
        k4PrefixGroup0074TwistLookup) = true := by
  simp only [k4PrefixGroup0074MaskPrimes, List.all_append]
  rw [k4PrefixGroup0074_mask_group0000_passes]
  rw [k4PrefixGroup0074_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0074_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0074) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0074NormalLookup,
    k4PrefixGroup0074TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0074_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0074_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0074MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0074_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0074_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
