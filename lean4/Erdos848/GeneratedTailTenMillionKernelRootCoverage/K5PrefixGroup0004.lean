import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0004NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0004TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0004MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0004 : List (List ℕ) :=
  [[3, 7, 29, 179],
    [3, 7, 31, 37],
    [3, 7, 31, 41],
    [3, 7, 31, 43],
    [3, 7, 31, 47],
    [3, 7, 31, 53],
    [3, 7, 31, 59],
    [3, 7, 31, 61],
    [3, 7, 31, 67],
    [3, 7, 31, 71],
    [3, 7, 31, 73],
    [3, 7, 31, 79],
    [3, 7, 31, 83],
    [3, 7, 31, 89],
    [3, 7, 31, 97],
    [3, 7, 31, 101],
    [3, 7, 31, 103],
    [3, 7, 31, 107],
    [3, 7, 31, 109],
    [3, 7, 31, 113],
    [3, 7, 31, 127],
    [3, 7, 31, 131],
    [3, 7, 31, 137],
    [3, 7, 31, 139],
    [3, 7, 31, 149],
    [3, 7, 31, 151],
    [3, 7, 31, 157],
    [3, 7, 31, 163],
    [3, 7, 31, 167],
    [3, 7, 37, 41],
    [3, 7, 37, 43],
    [3, 7, 37, 47],
    [3, 7, 37, 53],
    [3, 7, 37, 59],
    [3, 7, 37, 61],
    [3, 7, 37, 67],
    [3, 7, 37, 71],
    [3, 7, 37, 73],
    [3, 7, 37, 79],
    [3, 7, 37, 83],
    [3, 7, 37, 89],
    [3, 7, 37, 97],
    [3, 7, 37, 101],
    [3, 7, 37, 103],
    [3, 7, 37, 107],
    [3, 7, 37, 109],
    [3, 7, 37, 113],
    [3, 7, 37, 127],
    [3, 7, 37, 131],
    [3, 7, 37, 137],
    [3, 7, 37, 139],
    [3, 7, 37, 149],
    [3, 7, 37, 151],
    [3, 7, 37, 157],
    [3, 7, 41, 43],
    [3, 7, 41, 47],
    [3, 7, 41, 53],
    [3, 7, 41, 59],
    [3, 7, 41, 61],
    [3, 7, 41, 67],
    [3, 7, 41, 71],
    [3, 7, 41, 73],
    [3, 7, 41, 79],
    [3, 7, 41, 83]]

theorem k5PrefixGroup0004_support_covered :
    k5PrefixGroup0004.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0004MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0004_passes :
    k5PrefixGroup0004.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0004NormalLookup
        k5PrefixGroup0004TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0004_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0004NormalLookup
        k5PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0004TwistLookup p =
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

theorem k5PrefixGroup0004_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0004NormalLookup
        k5PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0004TwistLookup p =
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

theorem k5PrefixGroup0004_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0004NormalLookup
        k5PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0004TwistLookup p =
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

theorem k5PrefixGroup0004_mask_primes_pass :
    k5PrefixGroup0004MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0004NormalLookup
        k5PrefixGroup0004TwistLookup) = true := by
  simp only [k5PrefixGroup0004MaskPrimes, List.all_append]
  rw [k5PrefixGroup0004_mask_group0000_passes]
  rw [k5PrefixGroup0004_mask_group0001_passes]
  rw [k5PrefixGroup0004_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0004_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0004) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0004NormalLookup,
    k5PrefixGroup0004TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0004_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0004_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0004MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0004_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0004_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
