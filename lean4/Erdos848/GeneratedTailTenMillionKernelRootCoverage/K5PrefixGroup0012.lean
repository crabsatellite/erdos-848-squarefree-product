import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0012NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0012TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0012MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0012 : List (List ℕ) :=
  [[3, 13, 19, 41],
    [3, 13, 19, 43],
    [3, 13, 19, 47],
    [3, 13, 19, 53],
    [3, 13, 19, 59],
    [3, 13, 19, 61],
    [3, 13, 19, 67],
    [3, 13, 19, 71],
    [3, 13, 19, 73],
    [3, 13, 19, 79],
    [3, 13, 19, 83],
    [3, 13, 19, 89],
    [3, 13, 19, 97],
    [3, 13, 19, 101],
    [3, 13, 19, 103],
    [3, 13, 19, 107],
    [3, 13, 19, 109],
    [3, 13, 19, 113],
    [3, 13, 19, 127],
    [3, 13, 19, 131],
    [3, 13, 19, 137],
    [3, 13, 19, 139],
    [3, 13, 19, 149],
    [3, 13, 19, 151],
    [3, 13, 19, 157],
    [3, 13, 23, 29],
    [3, 13, 23, 31],
    [3, 13, 23, 37],
    [3, 13, 23, 41],
    [3, 13, 23, 43],
    [3, 13, 23, 47],
    [3, 13, 23, 53],
    [3, 13, 23, 59],
    [3, 13, 23, 61],
    [3, 13, 23, 67],
    [3, 13, 23, 71],
    [3, 13, 23, 73],
    [3, 13, 23, 79],
    [3, 13, 23, 83],
    [3, 13, 23, 89],
    [3, 13, 23, 97],
    [3, 13, 23, 101],
    [3, 13, 23, 103],
    [3, 13, 23, 107],
    [3, 13, 23, 109],
    [3, 13, 23, 113],
    [3, 13, 23, 127],
    [3, 13, 23, 131],
    [3, 13, 23, 137],
    [3, 13, 23, 139],
    [3, 13, 29, 31],
    [3, 13, 29, 37],
    [3, 13, 29, 41],
    [3, 13, 29, 43],
    [3, 13, 29, 47],
    [3, 13, 29, 53],
    [3, 13, 29, 59],
    [3, 13, 29, 61],
    [3, 13, 29, 67],
    [3, 13, 29, 71],
    [3, 13, 29, 73],
    [3, 13, 29, 79],
    [3, 13, 29, 83],
    [3, 13, 29, 89]]

theorem k5PrefixGroup0012_support_covered :
    k5PrefixGroup0012.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0012MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0012_passes :
    k5PrefixGroup0012.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0012NormalLookup
        k5PrefixGroup0012TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0012_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0012NormalLookup
        k5PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0012TwistLookup p =
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

theorem k5PrefixGroup0012_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0012NormalLookup
        k5PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0012TwistLookup p =
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

theorem k5PrefixGroup0012_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0012NormalLookup
        k5PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0012TwistLookup p =
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

theorem k5PrefixGroup0012_mask_primes_pass :
    k5PrefixGroup0012MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0012NormalLookup
        k5PrefixGroup0012TwistLookup) = true := by
  simp only [k5PrefixGroup0012MaskPrimes, List.all_append]
  rw [k5PrefixGroup0012_mask_group0000_passes]
  rw [k5PrefixGroup0012_mask_group0001_passes]
  rw [k5PrefixGroup0012_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0012_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0012) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0012NormalLookup,
    k5PrefixGroup0012TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0012_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0012_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0012MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0012_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0012_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
