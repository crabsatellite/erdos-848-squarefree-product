import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0066NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0066TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0066MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0066 : List (List ℕ) :=
  [[19, 29, 103],
    [19, 29, 107],
    [19, 29, 109],
    [19, 29, 113],
    [19, 29, 127],
    [19, 29, 131],
    [19, 29, 137],
    [19, 29, 139],
    [19, 29, 149],
    [19, 29, 151],
    [19, 29, 157],
    [19, 29, 163],
    [19, 29, 167],
    [19, 29, 173],
    [19, 29, 179],
    [19, 29, 181],
    [19, 31, 37],
    [19, 31, 41],
    [19, 31, 43],
    [19, 31, 47],
    [19, 31, 53],
    [19, 31, 59],
    [19, 31, 61],
    [19, 31, 67],
    [19, 31, 71],
    [19, 31, 73],
    [19, 31, 79],
    [19, 31, 83],
    [19, 31, 89],
    [19, 31, 97],
    [19, 31, 101],
    [19, 31, 103],
    [19, 31, 107],
    [19, 31, 109],
    [19, 31, 113],
    [19, 31, 127],
    [19, 31, 131],
    [19, 31, 137],
    [19, 31, 139],
    [19, 31, 149],
    [19, 31, 151],
    [19, 31, 157],
    [19, 31, 163],
    [19, 31, 167],
    [19, 31, 173],
    [19, 31, 179],
    [19, 37, 41],
    [19, 37, 43],
    [19, 37, 47],
    [19, 37, 53],
    [19, 37, 59],
    [19, 37, 61],
    [19, 37, 67],
    [19, 37, 71],
    [19, 37, 73],
    [19, 37, 79],
    [19, 37, 83],
    [19, 37, 89],
    [19, 37, 97],
    [19, 37, 101],
    [19, 37, 103],
    [19, 37, 107],
    [19, 37, 109],
    [19, 37, 113]]

theorem k4PrefixGroup0066_support_covered :
    k4PrefixGroup0066.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0066MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0066_passes :
    k4PrefixGroup0066.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0066_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
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

theorem k4PrefixGroup0066_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
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

theorem k4PrefixGroup0066_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0066NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0066TwistLookup p =
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

theorem k4PrefixGroup0066_mask_primes_pass :
    k4PrefixGroup0066MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0066NormalLookup
        k4PrefixGroup0066TwistLookup) = true := by
  simp only [k4PrefixGroup0066MaskPrimes, List.all_append]
  rw [k4PrefixGroup0066_mask_group0000_passes]
  rw [k4PrefixGroup0066_mask_group0001_passes]
  rw [k4PrefixGroup0066_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0066_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0066) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0066NormalLookup,
    k4PrefixGroup0066TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0066_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0066_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0066MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0066_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0066_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
