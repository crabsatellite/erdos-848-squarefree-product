import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0042NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0042TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0042MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0042 : List (List ℕ) :=
  [[7, 107, 137],
    [7, 107, 139],
    [7, 107, 149],
    [7, 107, 151],
    [7, 107, 157],
    [7, 109, 113],
    [7, 109, 127],
    [7, 109, 131],
    [7, 109, 137],
    [7, 109, 139],
    [7, 109, 149],
    [7, 109, 151],
    [7, 109, 157],
    [7, 113, 127],
    [7, 113, 131],
    [7, 113, 137],
    [7, 113, 139],
    [7, 113, 149],
    [7, 113, 151],
    [7, 127, 131],
    [7, 127, 137],
    [7, 127, 139],
    [7, 131, 137],
    [7, 131, 139],
    [7, 137, 139],
    [11, 13, 17],
    [11, 13, 19],
    [11, 13, 23],
    [11, 13, 29],
    [11, 13, 31],
    [11, 13, 37],
    [11, 13, 41],
    [11, 13, 43],
    [11, 13, 47],
    [11, 13, 53],
    [11, 13, 59],
    [11, 13, 61],
    [11, 13, 67],
    [11, 13, 71],
    [11, 13, 73],
    [11, 13, 79],
    [11, 13, 83],
    [11, 13, 89],
    [11, 13, 97],
    [11, 13, 101],
    [11, 13, 103],
    [11, 13, 107],
    [11, 13, 109],
    [11, 13, 113],
    [11, 13, 127],
    [11, 13, 131],
    [11, 13, 137],
    [11, 13, 139],
    [11, 13, 149],
    [11, 13, 151],
    [11, 13, 157],
    [11, 13, 163],
    [11, 13, 167],
    [11, 13, 173],
    [11, 13, 179],
    [11, 13, 181],
    [11, 13, 191],
    [11, 13, 193],
    [11, 13, 197]]

theorem k4PrefixGroup0042_support_covered :
    k4PrefixGroup0042.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0042MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0042_passes :
    k4PrefixGroup0042.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0042_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
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

theorem k4PrefixGroup0042_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
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

theorem k4PrefixGroup0042_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
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

theorem k4PrefixGroup0042_mask_primes_pass :
    k4PrefixGroup0042MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  simp only [k4PrefixGroup0042MaskPrimes, List.all_append]
  rw [k4PrefixGroup0042_mask_group0000_passes]
  rw [k4PrefixGroup0042_mask_group0001_passes]
  rw [k4PrefixGroup0042_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0042_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0042) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0042NormalLookup,
    k4PrefixGroup0042TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0042_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0042_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0042MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0042_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0042_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
