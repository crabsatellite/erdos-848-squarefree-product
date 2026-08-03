import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0049NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0049TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0049MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0049 : List (List ℕ) :=
  [[11, 47, 89],
    [11, 47, 97],
    [11, 47, 101],
    [11, 47, 103],
    [11, 47, 107],
    [11, 47, 109],
    [11, 47, 113],
    [11, 47, 127],
    [11, 47, 131],
    [11, 47, 137],
    [11, 47, 139],
    [11, 47, 149],
    [11, 47, 151],
    [11, 47, 157],
    [11, 47, 163],
    [11, 47, 167],
    [11, 47, 173],
    [11, 47, 179],
    [11, 47, 181],
    [11, 47, 191],
    [11, 47, 193],
    [11, 53, 59],
    [11, 53, 61],
    [11, 53, 67],
    [11, 53, 71],
    [11, 53, 73],
    [11, 53, 79],
    [11, 53, 83],
    [11, 53, 89],
    [11, 53, 97],
    [11, 53, 101],
    [11, 53, 103],
    [11, 53, 107],
    [11, 53, 109],
    [11, 53, 113],
    [11, 53, 127],
    [11, 53, 131],
    [11, 53, 137],
    [11, 53, 139],
    [11, 53, 149],
    [11, 53, 151],
    [11, 53, 157],
    [11, 53, 163],
    [11, 53, 167],
    [11, 53, 173],
    [11, 53, 179],
    [11, 59, 61],
    [11, 59, 67],
    [11, 59, 71],
    [11, 59, 73],
    [11, 59, 79],
    [11, 59, 83],
    [11, 59, 89],
    [11, 59, 97],
    [11, 59, 101],
    [11, 59, 103],
    [11, 59, 107],
    [11, 59, 109],
    [11, 59, 113],
    [11, 59, 127],
    [11, 59, 131],
    [11, 59, 137],
    [11, 59, 139],
    [11, 59, 149]]

theorem k4PrefixGroup0049_support_covered :
    k4PrefixGroup0049.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0049MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0049_passes :
    k4PrefixGroup0049.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0049NormalLookup
        k4PrefixGroup0049TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0049_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0049NormalLookup
        k4PrefixGroup0049TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0049NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0049TwistLookup p =
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

theorem k4PrefixGroup0049_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0049NormalLookup
        k4PrefixGroup0049TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0049NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0049TwistLookup p =
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

theorem k4PrefixGroup0049_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0049NormalLookup
        k4PrefixGroup0049TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0049NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0049TwistLookup p =
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

theorem k4PrefixGroup0049_mask_primes_pass :
    k4PrefixGroup0049MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0049NormalLookup
        k4PrefixGroup0049TwistLookup) = true := by
  simp only [k4PrefixGroup0049MaskPrimes, List.all_append]
  rw [k4PrefixGroup0049_mask_group0000_passes]
  rw [k4PrefixGroup0049_mask_group0001_passes]
  rw [k4PrefixGroup0049_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0049_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0049) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0049NormalLookup,
    k4PrefixGroup0049TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0049_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0049_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0049MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0049_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0049_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
