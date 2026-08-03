import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0069NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0069TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0069MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0069 : List (List ℕ) :=
  [[19, 71, 73],
    [19, 71, 79],
    [19, 71, 83],
    [19, 71, 89],
    [19, 71, 97],
    [19, 71, 101],
    [19, 71, 103],
    [19, 71, 107],
    [19, 71, 109],
    [19, 71, 113],
    [19, 73, 79],
    [19, 73, 83],
    [19, 73, 89],
    [19, 73, 97],
    [19, 73, 101],
    [19, 73, 103],
    [19, 73, 107],
    [19, 73, 109],
    [19, 73, 113],
    [19, 79, 83],
    [19, 79, 89],
    [19, 79, 97],
    [19, 79, 101],
    [19, 79, 103],
    [19, 79, 107],
    [19, 79, 109],
    [19, 83, 89],
    [19, 83, 97],
    [19, 83, 101],
    [19, 83, 103],
    [19, 83, 107],
    [19, 83, 109],
    [19, 89, 97],
    [19, 89, 101],
    [19, 89, 103],
    [19, 89, 107],
    [19, 97, 101],
    [23, 29, 31],
    [23, 29, 37],
    [23, 29, 41],
    [23, 29, 43],
    [23, 29, 47],
    [23, 29, 53],
    [23, 29, 59],
    [23, 29, 61],
    [23, 29, 67],
    [23, 29, 71],
    [23, 29, 73],
    [23, 29, 79],
    [23, 29, 83],
    [23, 29, 89],
    [23, 29, 97],
    [23, 29, 101],
    [23, 29, 103],
    [23, 29, 107],
    [23, 29, 109],
    [23, 29, 113],
    [23, 29, 127],
    [23, 29, 131],
    [23, 29, 137],
    [23, 29, 139],
    [23, 29, 149],
    [23, 29, 151],
    [23, 29, 157]]

theorem k4PrefixGroup0069_support_covered :
    k4PrefixGroup0069.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0069MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0069_passes :
    k4PrefixGroup0069.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0069NormalLookup
        k4PrefixGroup0069TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0069_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0069NormalLookup
        k4PrefixGroup0069TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0069NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0069TwistLookup p =
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

theorem k4PrefixGroup0069_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0069NormalLookup
        k4PrefixGroup0069TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0069NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0069TwistLookup p =
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

theorem k4PrefixGroup0069_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0069NormalLookup
        k4PrefixGroup0069TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0069NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0069TwistLookup p =
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

theorem k4PrefixGroup0069_mask_primes_pass :
    k4PrefixGroup0069MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0069NormalLookup
        k4PrefixGroup0069TwistLookup) = true := by
  simp only [k4PrefixGroup0069MaskPrimes, List.all_append]
  rw [k4PrefixGroup0069_mask_group0000_passes]
  rw [k4PrefixGroup0069_mask_group0001_passes]
  rw [k4PrefixGroup0069_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0069_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0069) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0069NormalLookup,
    k4PrefixGroup0069TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0069_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0069_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0069MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0069_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0069_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
