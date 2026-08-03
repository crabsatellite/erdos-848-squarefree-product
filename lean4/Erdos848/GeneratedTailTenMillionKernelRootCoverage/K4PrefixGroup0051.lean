import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0051NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0051TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0051MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0051 : List (List ℕ) :=
  [[11, 73, 101],
    [11, 73, 103],
    [11, 73, 107],
    [11, 73, 109],
    [11, 73, 113],
    [11, 73, 127],
    [11, 73, 131],
    [11, 73, 137],
    [11, 73, 139],
    [11, 73, 149],
    [11, 73, 151],
    [11, 79, 83],
    [11, 79, 89],
    [11, 79, 97],
    [11, 79, 101],
    [11, 79, 103],
    [11, 79, 107],
    [11, 79, 109],
    [11, 79, 113],
    [11, 79, 127],
    [11, 79, 131],
    [11, 79, 137],
    [11, 79, 139],
    [11, 79, 149],
    [11, 83, 89],
    [11, 83, 97],
    [11, 83, 101],
    [11, 83, 103],
    [11, 83, 107],
    [11, 83, 109],
    [11, 83, 113],
    [11, 83, 127],
    [11, 83, 131],
    [11, 83, 137],
    [11, 83, 139],
    [11, 89, 97],
    [11, 89, 101],
    [11, 89, 103],
    [11, 89, 107],
    [11, 89, 109],
    [11, 89, 113],
    [11, 89, 127],
    [11, 89, 131],
    [11, 89, 137],
    [11, 97, 101],
    [11, 97, 103],
    [11, 97, 107],
    [11, 97, 109],
    [11, 97, 113],
    [11, 97, 127],
    [11, 97, 131],
    [11, 101, 103],
    [11, 101, 107],
    [11, 101, 109],
    [11, 101, 113],
    [11, 101, 127],
    [11, 101, 131],
    [11, 103, 107],
    [11, 103, 109],
    [11, 103, 113],
    [11, 103, 127],
    [11, 107, 109],
    [11, 107, 113],
    [11, 107, 127]]

theorem k4PrefixGroup0051_support_covered :
    k4PrefixGroup0051.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0051MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0051_passes :
    k4PrefixGroup0051.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0051NormalLookup
        k4PrefixGroup0051TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0051_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0051NormalLookup
        k4PrefixGroup0051TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0051NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0051TwistLookup p =
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

theorem k4PrefixGroup0051_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0051NormalLookup
        k4PrefixGroup0051TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0051NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0051TwistLookup p =
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

theorem k4PrefixGroup0051_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0051NormalLookup
        k4PrefixGroup0051TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0051NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0051TwistLookup p =
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

theorem k4PrefixGroup0051_mask_primes_pass :
    k4PrefixGroup0051MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0051NormalLookup
        k4PrefixGroup0051TwistLookup) = true := by
  simp only [k4PrefixGroup0051MaskPrimes, List.all_append]
  rw [k4PrefixGroup0051_mask_group0000_passes]
  rw [k4PrefixGroup0051_mask_group0001_passes]
  rw [k4PrefixGroup0051_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0051_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0051) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0051NormalLookup,
    k4PrefixGroup0051TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0051_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0051_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0051MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0051_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0051_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
