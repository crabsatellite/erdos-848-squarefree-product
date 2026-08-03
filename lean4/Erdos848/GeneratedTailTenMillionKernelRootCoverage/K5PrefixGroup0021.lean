import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0021NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0021TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0021MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0021 : List (List ℕ) :=
  [[7, 11, 13, 19],
    [7, 11, 13, 23],
    [7, 11, 13, 29],
    [7, 11, 13, 31],
    [7, 11, 13, 37],
    [7, 11, 13, 41],
    [7, 11, 13, 43],
    [7, 11, 13, 47],
    [7, 11, 13, 53],
    [7, 11, 13, 59],
    [7, 11, 13, 61],
    [7, 11, 13, 67],
    [7, 11, 13, 71],
    [7, 11, 13, 73],
    [7, 11, 13, 79],
    [7, 11, 13, 83],
    [7, 11, 13, 89],
    [7, 11, 13, 97],
    [7, 11, 13, 101],
    [7, 11, 13, 103],
    [7, 11, 13, 107],
    [7, 11, 13, 109],
    [7, 11, 13, 113],
    [7, 11, 13, 127],
    [7, 11, 13, 131],
    [7, 11, 13, 137],
    [7, 11, 17, 19],
    [7, 11, 17, 23],
    [7, 11, 17, 29],
    [7, 11, 17, 31],
    [7, 11, 17, 37],
    [7, 11, 17, 41],
    [7, 11, 17, 43],
    [7, 11, 17, 47],
    [7, 11, 17, 53],
    [7, 11, 17, 59],
    [7, 11, 17, 61],
    [7, 11, 17, 67],
    [7, 11, 17, 71],
    [7, 11, 17, 73],
    [7, 11, 17, 79],
    [7, 11, 17, 83],
    [7, 11, 17, 89],
    [7, 11, 17, 97],
    [7, 11, 17, 101],
    [7, 11, 17, 103],
    [7, 11, 17, 107],
    [7, 11, 17, 109],
    [7, 11, 17, 113],
    [7, 11, 19, 23],
    [7, 11, 19, 29],
    [7, 11, 19, 31],
    [7, 11, 19, 37],
    [7, 11, 19, 41],
    [7, 11, 19, 43],
    [7, 11, 19, 47],
    [7, 11, 19, 53],
    [7, 11, 19, 59],
    [7, 11, 19, 61],
    [7, 11, 19, 67],
    [7, 11, 19, 71],
    [7, 11, 19, 73],
    [7, 11, 19, 79],
    [7, 11, 19, 83]]

theorem k5PrefixGroup0021_support_covered :
    k5PrefixGroup0021.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0021MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0021_passes :
    k5PrefixGroup0021.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0021_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0021TwistLookup p =
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

theorem k5PrefixGroup0021_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0021TwistLookup p =
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

theorem k5PrefixGroup0021_mask_primes_pass :
    k5PrefixGroup0021MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0021NormalLookup
        k5PrefixGroup0021TwistLookup) = true := by
  simp only [k5PrefixGroup0021MaskPrimes, List.all_append]
  rw [k5PrefixGroup0021_mask_group0000_passes]
  rw [k5PrefixGroup0021_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0021_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0021) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0021NormalLookup,
    k5PrefixGroup0021TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0021_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0021_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0021MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0021_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0021_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
