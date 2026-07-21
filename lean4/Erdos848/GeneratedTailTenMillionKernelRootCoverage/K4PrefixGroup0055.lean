import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0055NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0055TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0055MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0055 : List (List ℕ) :=
  [[13, 29, 227],
    [13, 31, 37],
    [13, 31, 41],
    [13, 31, 43],
    [13, 31, 47],
    [13, 31, 53],
    [13, 31, 59],
    [13, 31, 61],
    [13, 31, 67],
    [13, 31, 71],
    [13, 31, 73],
    [13, 31, 79],
    [13, 31, 83],
    [13, 31, 89],
    [13, 31, 97],
    [13, 31, 101],
    [13, 31, 103],
    [13, 31, 107],
    [13, 31, 109],
    [13, 31, 113],
    [13, 31, 127],
    [13, 31, 131],
    [13, 31, 137],
    [13, 31, 139],
    [13, 31, 149],
    [13, 31, 151],
    [13, 31, 157],
    [13, 31, 163],
    [13, 31, 167],
    [13, 31, 173],
    [13, 31, 179],
    [13, 31, 181],
    [13, 31, 191],
    [13, 31, 193],
    [13, 31, 197],
    [13, 31, 199],
    [13, 31, 211],
    [13, 37, 41],
    [13, 37, 43],
    [13, 37, 47],
    [13, 37, 53],
    [13, 37, 59],
    [13, 37, 61],
    [13, 37, 67],
    [13, 37, 71],
    [13, 37, 73],
    [13, 37, 79],
    [13, 37, 83],
    [13, 37, 89],
    [13, 37, 97],
    [13, 37, 101],
    [13, 37, 103],
    [13, 37, 107],
    [13, 37, 109],
    [13, 37, 113],
    [13, 37, 127],
    [13, 37, 131],
    [13, 37, 137],
    [13, 37, 139],
    [13, 37, 149],
    [13, 37, 151],
    [13, 37, 157],
    [13, 37, 163],
    [13, 37, 167]]

theorem k4PrefixGroup0055_support_covered :
    k4PrefixGroup0055.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0055MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0055_passes :
    k4PrefixGroup0055.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0055NormalLookup
        k4PrefixGroup0055TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0055_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0055NormalLookup
        k4PrefixGroup0055TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0055NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0055TwistLookup p =
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

theorem k4PrefixGroup0055_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0055NormalLookup
        k4PrefixGroup0055TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0055NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0055TwistLookup p =
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

theorem k4PrefixGroup0055_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0055NormalLookup
        k4PrefixGroup0055TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0055NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0055TwistLookup p =
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

theorem k4PrefixGroup0055_mask_primes_pass :
    k4PrefixGroup0055MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0055NormalLookup
        k4PrefixGroup0055TwistLookup) = true := by
  simp only [k4PrefixGroup0055MaskPrimes, List.all_append]
  rw [k4PrefixGroup0055_mask_group0000_passes]
  rw [k4PrefixGroup0055_mask_group0001_passes]
  rw [k4PrefixGroup0055_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0055_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0055) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0055NormalLookup,
    k4PrefixGroup0055TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0055_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0055_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0055MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0055_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0055_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
