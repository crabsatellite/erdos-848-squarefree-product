import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0050NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0050TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0050MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0050 : List (List ℕ) :=
  [[11, 59, 151],
    [11, 59, 157],
    [11, 59, 163],
    [11, 59, 167],
    [11, 61, 67],
    [11, 61, 71],
    [11, 61, 73],
    [11, 61, 79],
    [11, 61, 83],
    [11, 61, 89],
    [11, 61, 97],
    [11, 61, 101],
    [11, 61, 103],
    [11, 61, 107],
    [11, 61, 109],
    [11, 61, 113],
    [11, 61, 127],
    [11, 61, 131],
    [11, 61, 137],
    [11, 61, 139],
    [11, 61, 149],
    [11, 61, 151],
    [11, 61, 157],
    [11, 61, 163],
    [11, 61, 167],
    [11, 67, 71],
    [11, 67, 73],
    [11, 67, 79],
    [11, 67, 83],
    [11, 67, 89],
    [11, 67, 97],
    [11, 67, 101],
    [11, 67, 103],
    [11, 67, 107],
    [11, 67, 109],
    [11, 67, 113],
    [11, 67, 127],
    [11, 67, 131],
    [11, 67, 137],
    [11, 67, 139],
    [11, 67, 149],
    [11, 67, 151],
    [11, 67, 157],
    [11, 71, 73],
    [11, 71, 79],
    [11, 71, 83],
    [11, 71, 89],
    [11, 71, 97],
    [11, 71, 101],
    [11, 71, 103],
    [11, 71, 107],
    [11, 71, 109],
    [11, 71, 113],
    [11, 71, 127],
    [11, 71, 131],
    [11, 71, 137],
    [11, 71, 139],
    [11, 71, 149],
    [11, 71, 151],
    [11, 71, 157],
    [11, 73, 79],
    [11, 73, 83],
    [11, 73, 89],
    [11, 73, 97]]

theorem k4PrefixGroup0050_support_covered :
    k4PrefixGroup0050.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0050MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0050_passes :
    k4PrefixGroup0050.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0050_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
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

theorem k4PrefixGroup0050_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
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

theorem k4PrefixGroup0050_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0050NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0050TwistLookup p =
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

theorem k4PrefixGroup0050_mask_primes_pass :
    k4PrefixGroup0050MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0050NormalLookup
        k4PrefixGroup0050TwistLookup) = true := by
  simp only [k4PrefixGroup0050MaskPrimes, List.all_append]
  rw [k4PrefixGroup0050_mask_group0000_passes]
  rw [k4PrefixGroup0050_mask_group0001_passes]
  rw [k4PrefixGroup0050_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0050_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0050) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0050NormalLookup,
    k4PrefixGroup0050TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0050_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0050_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0050MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0050_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0050_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
