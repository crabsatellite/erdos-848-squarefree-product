import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0057NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0057TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0057MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0057 : List (List ℕ) :=
  [[13, 47, 53],
    [13, 47, 59],
    [13, 47, 61],
    [13, 47, 67],
    [13, 47, 71],
    [13, 47, 73],
    [13, 47, 79],
    [13, 47, 83],
    [13, 47, 89],
    [13, 47, 97],
    [13, 47, 101],
    [13, 47, 103],
    [13, 47, 107],
    [13, 47, 109],
    [13, 47, 113],
    [13, 47, 127],
    [13, 47, 131],
    [13, 47, 137],
    [13, 47, 139],
    [13, 47, 149],
    [13, 47, 151],
    [13, 47, 157],
    [13, 47, 163],
    [13, 47, 167],
    [13, 47, 173],
    [13, 47, 179],
    [13, 53, 59],
    [13, 53, 61],
    [13, 53, 67],
    [13, 53, 71],
    [13, 53, 73],
    [13, 53, 79],
    [13, 53, 83],
    [13, 53, 89],
    [13, 53, 97],
    [13, 53, 101],
    [13, 53, 103],
    [13, 53, 107],
    [13, 53, 109],
    [13, 53, 113],
    [13, 53, 127],
    [13, 53, 131],
    [13, 53, 137],
    [13, 53, 139],
    [13, 53, 149],
    [13, 53, 151],
    [13, 53, 157],
    [13, 53, 163],
    [13, 53, 167],
    [13, 59, 61],
    [13, 59, 67],
    [13, 59, 71],
    [13, 59, 73],
    [13, 59, 79],
    [13, 59, 83],
    [13, 59, 89],
    [13, 59, 97],
    [13, 59, 101],
    [13, 59, 103],
    [13, 59, 107],
    [13, 59, 109],
    [13, 59, 113],
    [13, 59, 127],
    [13, 59, 131]]

theorem k4PrefixGroup0057_support_covered :
    k4PrefixGroup0057.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0057MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0057_passes :
    k4PrefixGroup0057.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0057_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
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

theorem k4PrefixGroup0057_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
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

theorem k4PrefixGroup0057_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0057NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0057TwistLookup p =
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

theorem k4PrefixGroup0057_mask_primes_pass :
    k4PrefixGroup0057MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0057NormalLookup
        k4PrefixGroup0057TwistLookup) = true := by
  simp only [k4PrefixGroup0057MaskPrimes, List.all_append]
  rw [k4PrefixGroup0057_mask_group0000_passes]
  rw [k4PrefixGroup0057_mask_group0001_passes]
  rw [k4PrefixGroup0057_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0057_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0057) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0057NormalLookup,
    k4PrefixGroup0057TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0057_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0057_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0057MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0057_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0057_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
