import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0003NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0003TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0003MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0003 : List (List ℕ) :=
  [[3, 7, 23, 37],
    [3, 7, 23, 41],
    [3, 7, 23, 43],
    [3, 7, 23, 47],
    [3, 7, 23, 53],
    [3, 7, 23, 59],
    [3, 7, 23, 61],
    [3, 7, 23, 67],
    [3, 7, 23, 71],
    [3, 7, 23, 73],
    [3, 7, 23, 79],
    [3, 7, 23, 83],
    [3, 7, 23, 89],
    [3, 7, 23, 97],
    [3, 7, 23, 101],
    [3, 7, 23, 103],
    [3, 7, 23, 107],
    [3, 7, 23, 109],
    [3, 7, 23, 113],
    [3, 7, 23, 127],
    [3, 7, 23, 131],
    [3, 7, 23, 137],
    [3, 7, 23, 139],
    [3, 7, 23, 149],
    [3, 7, 23, 151],
    [3, 7, 23, 157],
    [3, 7, 23, 163],
    [3, 7, 23, 167],
    [3, 7, 23, 173],
    [3, 7, 23, 179],
    [3, 7, 23, 181],
    [3, 7, 23, 191],
    [3, 7, 23, 193],
    [3, 7, 23, 197],
    [3, 7, 29, 31],
    [3, 7, 29, 37],
    [3, 7, 29, 41],
    [3, 7, 29, 43],
    [3, 7, 29, 47],
    [3, 7, 29, 53],
    [3, 7, 29, 59],
    [3, 7, 29, 61],
    [3, 7, 29, 67],
    [3, 7, 29, 71],
    [3, 7, 29, 73],
    [3, 7, 29, 79],
    [3, 7, 29, 83],
    [3, 7, 29, 89],
    [3, 7, 29, 97],
    [3, 7, 29, 101],
    [3, 7, 29, 103],
    [3, 7, 29, 107],
    [3, 7, 29, 109],
    [3, 7, 29, 113],
    [3, 7, 29, 127],
    [3, 7, 29, 131],
    [3, 7, 29, 137],
    [3, 7, 29, 139],
    [3, 7, 29, 149],
    [3, 7, 29, 151],
    [3, 7, 29, 157],
    [3, 7, 29, 163],
    [3, 7, 29, 167],
    [3, 7, 29, 173]]

theorem k5PrefixGroup0003_support_covered :
    k5PrefixGroup0003.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0003MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0003_passes :
    k5PrefixGroup0003.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k5PrefixGroup0003NormalLookup
        k5PrefixGroup0003TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0003_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0003NormalLookup
        k5PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0003TwistLookup p =
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

theorem k5PrefixGroup0003_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0003NormalLookup
        k5PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0003TwistLookup p =
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

theorem k5PrefixGroup0003_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0003NormalLookup
        k5PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0003TwistLookup p =
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

theorem k5PrefixGroup0003_mask_primes_pass :
    k5PrefixGroup0003MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k5PrefixGroup0003NormalLookup
        k5PrefixGroup0003TwistLookup) = true := by
  simp only [k5PrefixGroup0003MaskPrimes, List.all_append]
  rw [k5PrefixGroup0003_mask_group0000_passes]
  rw [k5PrefixGroup0003_mask_group0001_passes]
  rw [k5PrefixGroup0003_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0003_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0003) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0003NormalLookup,
    k5PrefixGroup0003TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0003_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0003_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0003MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0003_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0003_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
