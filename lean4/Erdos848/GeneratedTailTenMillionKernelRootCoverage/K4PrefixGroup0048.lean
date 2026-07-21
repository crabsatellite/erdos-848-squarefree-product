import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0048NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0048TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0048MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0048 : List (List ℕ) :=
  [[11, 41, 83],
    [11, 41, 89],
    [11, 41, 97],
    [11, 41, 101],
    [11, 41, 103],
    [11, 41, 107],
    [11, 41, 109],
    [11, 41, 113],
    [11, 41, 127],
    [11, 41, 131],
    [11, 41, 137],
    [11, 41, 139],
    [11, 41, 149],
    [11, 41, 151],
    [11, 41, 157],
    [11, 41, 163],
    [11, 41, 167],
    [11, 41, 173],
    [11, 41, 179],
    [11, 41, 181],
    [11, 41, 191],
    [11, 41, 193],
    [11, 41, 197],
    [11, 41, 199],
    [11, 43, 47],
    [11, 43, 53],
    [11, 43, 59],
    [11, 43, 61],
    [11, 43, 67],
    [11, 43, 71],
    [11, 43, 73],
    [11, 43, 79],
    [11, 43, 83],
    [11, 43, 89],
    [11, 43, 97],
    [11, 43, 101],
    [11, 43, 103],
    [11, 43, 107],
    [11, 43, 109],
    [11, 43, 113],
    [11, 43, 127],
    [11, 43, 131],
    [11, 43, 137],
    [11, 43, 139],
    [11, 43, 149],
    [11, 43, 151],
    [11, 43, 157],
    [11, 43, 163],
    [11, 43, 167],
    [11, 43, 173],
    [11, 43, 179],
    [11, 43, 181],
    [11, 43, 191],
    [11, 43, 193],
    [11, 43, 197],
    [11, 43, 199],
    [11, 47, 53],
    [11, 47, 59],
    [11, 47, 61],
    [11, 47, 67],
    [11, 47, 71],
    [11, 47, 73],
    [11, 47, 79],
    [11, 47, 83]]

theorem k4PrefixGroup0048_support_covered :
    k4PrefixGroup0048.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0048MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0048_passes :
    k4PrefixGroup0048.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0048NormalLookup
        k4PrefixGroup0048TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0048_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0048NormalLookup
        k4PrefixGroup0048TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0048NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0048TwistLookup p =
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

theorem k4PrefixGroup0048_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0048NormalLookup
        k4PrefixGroup0048TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0048NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0048TwistLookup p =
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

theorem k4PrefixGroup0048_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0048NormalLookup
        k4PrefixGroup0048TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0048NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0048TwistLookup p =
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

theorem k4PrefixGroup0048_mask_primes_pass :
    k4PrefixGroup0048MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0048NormalLookup
        k4PrefixGroup0048TwistLookup) = true := by
  simp only [k4PrefixGroup0048MaskPrimes, List.all_append]
  rw [k4PrefixGroup0048_mask_group0000_passes]
  rw [k4PrefixGroup0048_mask_group0001_passes]
  rw [k4PrefixGroup0048_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0048_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0048) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0048NormalLookup,
    k4PrefixGroup0048TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0048_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0048_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0048MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0048_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0048_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
