import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0038NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0038TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0038MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0038 : List (List ℕ) :=
  [[7, 53, 83],
    [7, 53, 89],
    [7, 53, 97],
    [7, 53, 101],
    [7, 53, 103],
    [7, 53, 107],
    [7, 53, 109],
    [7, 53, 113],
    [7, 53, 127],
    [7, 53, 131],
    [7, 53, 137],
    [7, 53, 139],
    [7, 53, 149],
    [7, 53, 151],
    [7, 53, 157],
    [7, 53, 163],
    [7, 53, 167],
    [7, 53, 173],
    [7, 53, 179],
    [7, 53, 181],
    [7, 53, 191],
    [7, 53, 193],
    [7, 53, 197],
    [7, 53, 199],
    [7, 53, 211],
    [7, 53, 223],
    [7, 53, 227],
    [7, 53, 229],
    [7, 59, 61],
    [7, 59, 67],
    [7, 59, 71],
    [7, 59, 73],
    [7, 59, 79],
    [7, 59, 83],
    [7, 59, 89],
    [7, 59, 97],
    [7, 59, 101],
    [7, 59, 103],
    [7, 59, 107],
    [7, 59, 109],
    [7, 59, 113],
    [7, 59, 127],
    [7, 59, 131],
    [7, 59, 137],
    [7, 59, 139],
    [7, 59, 149],
    [7, 59, 151],
    [7, 59, 157],
    [7, 59, 163],
    [7, 59, 167],
    [7, 59, 173],
    [7, 59, 179],
    [7, 59, 181],
    [7, 59, 191],
    [7, 59, 193],
    [7, 59, 197],
    [7, 59, 199],
    [7, 59, 211],
    [7, 61, 67],
    [7, 61, 71],
    [7, 61, 73],
    [7, 61, 79],
    [7, 61, 83],
    [7, 61, 89]]

theorem k4PrefixGroup0038_support_covered :
    k4PrefixGroup0038.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0038MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0038_passes :
    k4PrefixGroup0038.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0038_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
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

theorem k4PrefixGroup0038_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
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

theorem k4PrefixGroup0038_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
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

theorem k4PrefixGroup0038_mask_primes_pass :
    k4PrefixGroup0038MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  simp only [k4PrefixGroup0038MaskPrimes, List.all_append]
  rw [k4PrefixGroup0038_mask_group0000_passes]
  rw [k4PrefixGroup0038_mask_group0001_passes]
  rw [k4PrefixGroup0038_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0038_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0038) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0038NormalLookup,
    k4PrefixGroup0038TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0038_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0038_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0038MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0038_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0038_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
