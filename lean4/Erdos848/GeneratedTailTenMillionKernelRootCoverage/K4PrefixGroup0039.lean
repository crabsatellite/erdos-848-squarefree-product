import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0039NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0039TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0039MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0039 : List (List ℕ) :=
  [[7, 61, 97],
    [7, 61, 101],
    [7, 61, 103],
    [7, 61, 107],
    [7, 61, 109],
    [7, 61, 113],
    [7, 61, 127],
    [7, 61, 131],
    [7, 61, 137],
    [7, 61, 139],
    [7, 61, 149],
    [7, 61, 151],
    [7, 61, 157],
    [7, 61, 163],
    [7, 61, 167],
    [7, 61, 173],
    [7, 61, 179],
    [7, 61, 181],
    [7, 61, 191],
    [7, 61, 193],
    [7, 61, 197],
    [7, 61, 199],
    [7, 67, 71],
    [7, 67, 73],
    [7, 67, 79],
    [7, 67, 83],
    [7, 67, 89],
    [7, 67, 97],
    [7, 67, 101],
    [7, 67, 103],
    [7, 67, 107],
    [7, 67, 109],
    [7, 67, 113],
    [7, 67, 127],
    [7, 67, 131],
    [7, 67, 137],
    [7, 67, 139],
    [7, 67, 149],
    [7, 67, 151],
    [7, 67, 157],
    [7, 67, 163],
    [7, 67, 167],
    [7, 67, 173],
    [7, 67, 179],
    [7, 67, 181],
    [7, 67, 191],
    [7, 67, 193],
    [7, 67, 197],
    [7, 67, 199],
    [7, 71, 73],
    [7, 71, 79],
    [7, 71, 83],
    [7, 71, 89],
    [7, 71, 97],
    [7, 71, 101],
    [7, 71, 103],
    [7, 71, 107],
    [7, 71, 109],
    [7, 71, 113],
    [7, 71, 127],
    [7, 71, 131],
    [7, 71, 137],
    [7, 71, 139],
    [7, 71, 149]]

theorem k4PrefixGroup0039_support_covered :
    k4PrefixGroup0039.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0039MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0039_passes :
    k4PrefixGroup0039.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0039_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
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

theorem k4PrefixGroup0039_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
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

theorem k4PrefixGroup0039_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
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

theorem k4PrefixGroup0039_mask_primes_pass :
    k4PrefixGroup0039MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  simp only [k4PrefixGroup0039MaskPrimes, List.all_append]
  rw [k4PrefixGroup0039_mask_group0000_passes]
  rw [k4PrefixGroup0039_mask_group0001_passes]
  rw [k4PrefixGroup0039_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0039_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0039) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0039NormalLookup,
    k4PrefixGroup0039TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0039_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0039_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0039MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0039_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0039_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
