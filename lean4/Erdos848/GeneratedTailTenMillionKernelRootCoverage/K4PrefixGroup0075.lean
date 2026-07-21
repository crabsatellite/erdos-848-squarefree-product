import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0075NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0075TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0075MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0075 : List (List ℕ) :=
  [[31, 37, 43],
    [31, 37, 47],
    [31, 37, 53],
    [31, 37, 59],
    [31, 37, 61],
    [31, 37, 67],
    [31, 37, 71],
    [31, 37, 73],
    [31, 37, 79],
    [31, 37, 83],
    [31, 37, 89],
    [31, 37, 97],
    [31, 37, 101],
    [31, 37, 103],
    [31, 37, 107],
    [31, 37, 109],
    [31, 37, 113],
    [31, 37, 127],
    [31, 41, 43],
    [31, 41, 47],
    [31, 41, 53],
    [31, 41, 59],
    [31, 41, 61],
    [31, 41, 67],
    [31, 41, 71],
    [31, 41, 73],
    [31, 41, 79],
    [31, 41, 83],
    [31, 41, 89],
    [31, 41, 97],
    [31, 41, 101],
    [31, 41, 103],
    [31, 41, 107],
    [31, 41, 109],
    [31, 41, 113],
    [31, 43, 47],
    [31, 43, 53],
    [31, 43, 59],
    [31, 43, 61],
    [31, 43, 67],
    [31, 43, 71],
    [31, 43, 73],
    [31, 43, 79],
    [31, 43, 83],
    [31, 43, 89],
    [31, 43, 97],
    [31, 43, 101],
    [31, 43, 103],
    [31, 43, 107],
    [31, 43, 109],
    [31, 43, 113],
    [31, 47, 53],
    [31, 47, 59],
    [31, 47, 61],
    [31, 47, 67],
    [31, 47, 71],
    [31, 47, 73],
    [31, 47, 79],
    [31, 47, 83],
    [31, 47, 89],
    [31, 47, 97],
    [31, 47, 101],
    [31, 47, 103],
    [31, 47, 107]]

theorem k4PrefixGroup0075_support_covered :
    k4PrefixGroup0075.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0075MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0075_passes :
    k4PrefixGroup0075.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0075NormalLookup
        k4PrefixGroup0075TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0075_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0075NormalLookup
        k4PrefixGroup0075TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0075NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0075TwistLookup p =
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

theorem k4PrefixGroup0075_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0075NormalLookup
        k4PrefixGroup0075TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0075NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0075TwistLookup p =
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

theorem k4PrefixGroup0075_mask_primes_pass :
    k4PrefixGroup0075MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0075NormalLookup
        k4PrefixGroup0075TwistLookup) = true := by
  simp only [k4PrefixGroup0075MaskPrimes, List.all_append]
  rw [k4PrefixGroup0075_mask_group0000_passes]
  rw [k4PrefixGroup0075_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0075_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0075) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0075NormalLookup,
    k4PrefixGroup0075TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0075_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0075_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0075MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0075_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0075_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
