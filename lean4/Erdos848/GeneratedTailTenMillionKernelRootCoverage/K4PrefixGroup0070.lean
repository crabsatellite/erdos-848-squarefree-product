import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0070NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0070TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0070MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0070 : List (List ℕ) :=
  [[23, 29, 163],
    [23, 29, 167],
    [23, 31, 37],
    [23, 31, 41],
    [23, 31, 43],
    [23, 31, 47],
    [23, 31, 53],
    [23, 31, 59],
    [23, 31, 61],
    [23, 31, 67],
    [23, 31, 71],
    [23, 31, 73],
    [23, 31, 79],
    [23, 31, 83],
    [23, 31, 89],
    [23, 31, 97],
    [23, 31, 101],
    [23, 31, 103],
    [23, 31, 107],
    [23, 31, 109],
    [23, 31, 113],
    [23, 31, 127],
    [23, 31, 131],
    [23, 31, 137],
    [23, 31, 139],
    [23, 31, 149],
    [23, 31, 151],
    [23, 31, 157],
    [23, 31, 163],
    [23, 37, 41],
    [23, 37, 43],
    [23, 37, 47],
    [23, 37, 53],
    [23, 37, 59],
    [23, 37, 61],
    [23, 37, 67],
    [23, 37, 71],
    [23, 37, 73],
    [23, 37, 79],
    [23, 37, 83],
    [23, 37, 89],
    [23, 37, 97],
    [23, 37, 101],
    [23, 37, 103],
    [23, 37, 107],
    [23, 37, 109],
    [23, 37, 113],
    [23, 37, 127],
    [23, 37, 131],
    [23, 37, 137],
    [23, 37, 139],
    [23, 37, 149],
    [23, 41, 43],
    [23, 41, 47],
    [23, 41, 53],
    [23, 41, 59],
    [23, 41, 61],
    [23, 41, 67],
    [23, 41, 71],
    [23, 41, 73],
    [23, 41, 79],
    [23, 41, 83],
    [23, 41, 89],
    [23, 41, 97]]

theorem k4PrefixGroup0070_support_covered :
    k4PrefixGroup0070.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0070MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0070_passes :
    k4PrefixGroup0070.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0070_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
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

theorem k4PrefixGroup0070_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
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

theorem k4PrefixGroup0070_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0070NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0070TwistLookup p =
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

theorem k4PrefixGroup0070_mask_primes_pass :
    k4PrefixGroup0070MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0070NormalLookup
        k4PrefixGroup0070TwistLookup) = true := by
  simp only [k4PrefixGroup0070MaskPrimes, List.all_append]
  rw [k4PrefixGroup0070_mask_group0000_passes]
  rw [k4PrefixGroup0070_mask_group0001_passes]
  rw [k4PrefixGroup0070_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0070_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0070) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0070NormalLookup,
    k4PrefixGroup0070TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0070_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0070_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0070MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0070_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0070_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
