import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0063NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0063TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0063MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0063 : List (List ℕ) :=
  [[17, 43, 89],
    [17, 43, 97],
    [17, 43, 101],
    [17, 43, 103],
    [17, 43, 107],
    [17, 43, 109],
    [17, 43, 113],
    [17, 43, 127],
    [17, 43, 131],
    [17, 43, 137],
    [17, 43, 139],
    [17, 43, 149],
    [17, 43, 151],
    [17, 43, 157],
    [17, 43, 163],
    [17, 47, 53],
    [17, 47, 59],
    [17, 47, 61],
    [17, 47, 67],
    [17, 47, 71],
    [17, 47, 73],
    [17, 47, 79],
    [17, 47, 83],
    [17, 47, 89],
    [17, 47, 97],
    [17, 47, 101],
    [17, 47, 103],
    [17, 47, 107],
    [17, 47, 109],
    [17, 47, 113],
    [17, 47, 127],
    [17, 47, 131],
    [17, 47, 137],
    [17, 47, 139],
    [17, 47, 149],
    [17, 47, 151],
    [17, 53, 59],
    [17, 53, 61],
    [17, 53, 67],
    [17, 53, 71],
    [17, 53, 73],
    [17, 53, 79],
    [17, 53, 83],
    [17, 53, 89],
    [17, 53, 97],
    [17, 53, 101],
    [17, 53, 103],
    [17, 53, 107],
    [17, 53, 109],
    [17, 53, 113],
    [17, 53, 127],
    [17, 53, 131],
    [17, 53, 137],
    [17, 53, 139],
    [17, 59, 61],
    [17, 59, 67],
    [17, 59, 71],
    [17, 59, 73],
    [17, 59, 79],
    [17, 59, 83],
    [17, 59, 89],
    [17, 59, 97],
    [17, 59, 101],
    [17, 59, 103]]

theorem k4PrefixGroup0063_support_covered :
    k4PrefixGroup0063.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0063MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0063_passes :
    k4PrefixGroup0063.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0063_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
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

theorem k4PrefixGroup0063_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
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

theorem k4PrefixGroup0063_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0063NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0063TwistLookup p =
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

theorem k4PrefixGroup0063_mask_primes_pass :
    k4PrefixGroup0063MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0063NormalLookup
        k4PrefixGroup0063TwistLookup) = true := by
  simp only [k4PrefixGroup0063MaskPrimes, List.all_append]
  rw [k4PrefixGroup0063_mask_group0000_passes]
  rw [k4PrefixGroup0063_mask_group0001_passes]
  rw [k4PrefixGroup0063_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0063_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0063) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0063NormalLookup,
    k4PrefixGroup0063TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0063_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0063_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0063MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0063_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0063_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
