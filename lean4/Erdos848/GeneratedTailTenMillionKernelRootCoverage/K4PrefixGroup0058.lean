import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0058NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0058TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0058MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0058 : List (List ℕ) :=
  [[13, 59, 137],
    [13, 59, 139],
    [13, 59, 149],
    [13, 59, 151],
    [13, 59, 157],
    [13, 61, 67],
    [13, 61, 71],
    [13, 61, 73],
    [13, 61, 79],
    [13, 61, 83],
    [13, 61, 89],
    [13, 61, 97],
    [13, 61, 101],
    [13, 61, 103],
    [13, 61, 107],
    [13, 61, 109],
    [13, 61, 113],
    [13, 61, 127],
    [13, 61, 131],
    [13, 61, 137],
    [13, 61, 139],
    [13, 61, 149],
    [13, 61, 151],
    [13, 67, 71],
    [13, 67, 73],
    [13, 67, 79],
    [13, 67, 83],
    [13, 67, 89],
    [13, 67, 97],
    [13, 67, 101],
    [13, 67, 103],
    [13, 67, 107],
    [13, 67, 109],
    [13, 67, 113],
    [13, 67, 127],
    [13, 67, 131],
    [13, 67, 137],
    [13, 67, 139],
    [13, 67, 149],
    [13, 71, 73],
    [13, 71, 79],
    [13, 71, 83],
    [13, 71, 89],
    [13, 71, 97],
    [13, 71, 101],
    [13, 71, 103],
    [13, 71, 107],
    [13, 71, 109],
    [13, 71, 113],
    [13, 71, 127],
    [13, 71, 131],
    [13, 71, 137],
    [13, 71, 139],
    [13, 73, 79],
    [13, 73, 83],
    [13, 73, 89],
    [13, 73, 97],
    [13, 73, 101],
    [13, 73, 103],
    [13, 73, 107],
    [13, 73, 109],
    [13, 73, 113],
    [13, 73, 127],
    [13, 73, 131]]

theorem k4PrefixGroup0058_support_covered :
    k4PrefixGroup0058.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0058MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0058_passes :
    k4PrefixGroup0058.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0058_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
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

theorem k4PrefixGroup0058_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
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

theorem k4PrefixGroup0058_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0058NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0058TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k4PrefixGroup0058_mask_primes_pass :
    k4PrefixGroup0058MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0058NormalLookup
        k4PrefixGroup0058TwistLookup) = true := by
  simp only [k4PrefixGroup0058MaskPrimes, List.all_append]
  rw [k4PrefixGroup0058_mask_group0000_passes]
  rw [k4PrefixGroup0058_mask_group0001_passes]
  rw [k4PrefixGroup0058_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0058_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0058) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0058NormalLookup,
    k4PrefixGroup0058TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0058_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0058_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0058MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0058_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0058_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
