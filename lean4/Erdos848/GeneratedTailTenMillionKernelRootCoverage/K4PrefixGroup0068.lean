import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0068NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0068TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0068MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0068 : List (List ℕ) :=
  [[19, 47, 101],
    [19, 47, 103],
    [19, 47, 107],
    [19, 47, 109],
    [19, 47, 113],
    [19, 47, 127],
    [19, 47, 131],
    [19, 47, 137],
    [19, 47, 139],
    [19, 53, 59],
    [19, 53, 61],
    [19, 53, 67],
    [19, 53, 71],
    [19, 53, 73],
    [19, 53, 79],
    [19, 53, 83],
    [19, 53, 89],
    [19, 53, 97],
    [19, 53, 101],
    [19, 53, 103],
    [19, 53, 107],
    [19, 53, 109],
    [19, 53, 113],
    [19, 53, 127],
    [19, 53, 131],
    [19, 53, 137],
    [19, 59, 61],
    [19, 59, 67],
    [19, 59, 71],
    [19, 59, 73],
    [19, 59, 79],
    [19, 59, 83],
    [19, 59, 89],
    [19, 59, 97],
    [19, 59, 101],
    [19, 59, 103],
    [19, 59, 107],
    [19, 59, 109],
    [19, 59, 113],
    [19, 59, 127],
    [19, 61, 67],
    [19, 61, 71],
    [19, 61, 73],
    [19, 61, 79],
    [19, 61, 83],
    [19, 61, 89],
    [19, 61, 97],
    [19, 61, 101],
    [19, 61, 103],
    [19, 61, 107],
    [19, 61, 109],
    [19, 61, 113],
    [19, 61, 127],
    [19, 67, 71],
    [19, 67, 73],
    [19, 67, 79],
    [19, 67, 83],
    [19, 67, 89],
    [19, 67, 97],
    [19, 67, 101],
    [19, 67, 103],
    [19, 67, 107],
    [19, 67, 109],
    [19, 67, 113]]

theorem k4PrefixGroup0068_support_covered :
    k4PrefixGroup0068.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0068MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0068_passes :
    k4PrefixGroup0068.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0068NormalLookup
        k4PrefixGroup0068TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0068_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0068NormalLookup
        k4PrefixGroup0068TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0068NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0068TwistLookup p =
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

theorem k4PrefixGroup0068_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0068NormalLookup
        k4PrefixGroup0068TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0068NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0068TwistLookup p =
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

theorem k4PrefixGroup0068_mask_primes_pass :
    k4PrefixGroup0068MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0068NormalLookup
        k4PrefixGroup0068TwistLookup) = true := by
  simp only [k4PrefixGroup0068MaskPrimes, List.all_append]
  rw [k4PrefixGroup0068_mask_group0000_passes]
  rw [k4PrefixGroup0068_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0068_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0068) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0068NormalLookup,
    k4PrefixGroup0068TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0068_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0068_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0068MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0068_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0068_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
