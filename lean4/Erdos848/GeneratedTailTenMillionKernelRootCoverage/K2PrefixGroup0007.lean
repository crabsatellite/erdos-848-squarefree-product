import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0007NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 3313 then rootNormalQrMaskWords0028 p else
  if p ≤ 3449 then rootNormalQrMaskWords0029 p else
  if p ≤ 3557 then rootNormalQrMaskWords0030 p else
  if p ≤ 3677 then rootNormalQrMaskWords0031 p else
  []

def k2PrefixGroup0007TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 3313 then rootTwistQrMaskWords0028 p else
  if p ≤ 3449 then rootTwistQrMaskWords0029 p else
  if p ≤ 3557 then rootTwistQrMaskWords0030 p else
  if p ≤ 3677 then rootTwistQrMaskWords0031 p else
  []

def k2PrefixGroup0007MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0028 ++
  rootMaskSemanticGroup0029 ++
  rootMaskSemanticGroup0030 ++
  rootMaskSemanticGroup0031

def k2PrefixGroup0007 : List (List ℕ) :=
  [[3187],
    [3191],
    [3203],
    [3209],
    [3217],
    [3221],
    [3229],
    [3251],
    [3253],
    [3257],
    [3259],
    [3271],
    [3299],
    [3301],
    [3307],
    [3313],
    [3319],
    [3323],
    [3329],
    [3331],
    [3343],
    [3347],
    [3359],
    [3361],
    [3371],
    [3373],
    [3389],
    [3391],
    [3407],
    [3413],
    [3433],
    [3449],
    [3457],
    [3461],
    [3463],
    [3467],
    [3469],
    [3491],
    [3499],
    [3511],
    [3517],
    [3527],
    [3529],
    [3533],
    [3539],
    [3541],
    [3547],
    [3557],
    [3559],
    [3571],
    [3581],
    [3583],
    [3593],
    [3607],
    [3613],
    [3617],
    [3623],
    [3631],
    [3637],
    [3643],
    [3659],
    [3671],
    [3673],
    [3677]]

theorem k2PrefixGroup0007_support_covered :
    k2PrefixGroup0007.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0007MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0007_passes :
    k2PrefixGroup0007.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k2PrefixGroup0007NormalLookup
        k2PrefixGroup0007TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0007_mask_group0028_passes :
    rootMaskSemanticGroup0028.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0007NormalLookup
        k2PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028_passes) p hp
  have hnormal : k2PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0028 p := by
    simp only [rootMaskSemanticGroup0028,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0028 p := by
    simp only [rootMaskSemanticGroup0028,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k2PrefixGroup0007_mask_group0029_passes :
    rootMaskSemanticGroup0029.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0007NormalLookup
        k2PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029_passes) p hp
  have hnormal : k2PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0029 p := by
    simp only [rootMaskSemanticGroup0029,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0029 p := by
    simp only [rootMaskSemanticGroup0029,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k2PrefixGroup0007_mask_group0030_passes :
    rootMaskSemanticGroup0030.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0007NormalLookup
        k2PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030_passes) p hp
  have hnormal : k2PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0030 p := by
    simp only [rootMaskSemanticGroup0030,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0030 p := by
    simp only [rootMaskSemanticGroup0030,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k2PrefixGroup0007_mask_group0031_passes :
    rootMaskSemanticGroup0031.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0007NormalLookup
        k2PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031_passes) p hp
  have hnormal : k2PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0031 p := by
    simp only [rootMaskSemanticGroup0031,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0031 p := by
    simp only [rootMaskSemanticGroup0031,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k2PrefixGroup0007_mask_primes_pass :
    k2PrefixGroup0007MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0007NormalLookup
        k2PrefixGroup0007TwistLookup) = true := by
  simp only [k2PrefixGroup0007MaskPrimes, List.all_append]
  rw [k2PrefixGroup0007_mask_group0028_passes]
  rw [k2PrefixGroup0007_mask_group0029_passes]
  rw [k2PrefixGroup0007_mask_group0030_passes]
  rw [k2PrefixGroup0007_mask_group0031_passes]
  rfl

theorem k2PrefixGroup0007_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0007) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0007NormalLookup,
    k2PrefixGroup0007TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0007_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0007_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0007MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0007_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0007_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
