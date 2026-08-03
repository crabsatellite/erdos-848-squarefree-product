import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0040NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0040TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0040MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0040 : List (List ℕ) :=
  [[7, 71, 151],
    [7, 71, 157],
    [7, 71, 163],
    [7, 71, 167],
    [7, 71, 173],
    [7, 71, 179],
    [7, 71, 181],
    [7, 71, 191],
    [7, 71, 193],
    [7, 71, 197],
    [7, 73, 79],
    [7, 73, 83],
    [7, 73, 89],
    [7, 73, 97],
    [7, 73, 101],
    [7, 73, 103],
    [7, 73, 107],
    [7, 73, 109],
    [7, 73, 113],
    [7, 73, 127],
    [7, 73, 131],
    [7, 73, 137],
    [7, 73, 139],
    [7, 73, 149],
    [7, 73, 151],
    [7, 73, 157],
    [7, 73, 163],
    [7, 73, 167],
    [7, 73, 173],
    [7, 73, 179],
    [7, 73, 181],
    [7, 73, 191],
    [7, 73, 193],
    [7, 79, 83],
    [7, 79, 89],
    [7, 79, 97],
    [7, 79, 101],
    [7, 79, 103],
    [7, 79, 107],
    [7, 79, 109],
    [7, 79, 113],
    [7, 79, 127],
    [7, 79, 131],
    [7, 79, 137],
    [7, 79, 139],
    [7, 79, 149],
    [7, 79, 151],
    [7, 79, 157],
    [7, 79, 163],
    [7, 79, 167],
    [7, 79, 173],
    [7, 79, 179],
    [7, 79, 181],
    [7, 83, 89],
    [7, 83, 97],
    [7, 83, 101],
    [7, 83, 103],
    [7, 83, 107],
    [7, 83, 109],
    [7, 83, 113],
    [7, 83, 127],
    [7, 83, 131],
    [7, 83, 137],
    [7, 83, 139]]

theorem k4PrefixGroup0040_support_covered :
    k4PrefixGroup0040.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0040MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0040_passes :
    k4PrefixGroup0040.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0040_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0040NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0040TwistLookup p =
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

theorem k4PrefixGroup0040_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0040NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0040TwistLookup p =
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

theorem k4PrefixGroup0040_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0040NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0040TwistLookup p =
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

theorem k4PrefixGroup0040_mask_primes_pass :
    k4PrefixGroup0040MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  simp only [k4PrefixGroup0040MaskPrimes, List.all_append]
  rw [k4PrefixGroup0040_mask_group0000_passes]
  rw [k4PrefixGroup0040_mask_group0001_passes]
  rw [k4PrefixGroup0040_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0040_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0040) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0040NormalLookup,
    k4PrefixGroup0040TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0040_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0040_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0040MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0040_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0040_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
