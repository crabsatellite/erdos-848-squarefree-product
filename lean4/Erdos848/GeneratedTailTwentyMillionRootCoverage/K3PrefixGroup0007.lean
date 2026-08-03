import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0029
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0030
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0031

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0007NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 3313 then rootNormalQrMaskWords0028 p else
  if p ≤ 3449 then rootNormalQrMaskWords0029 p else
  if p ≤ 3557 then rootNormalQrMaskWords0030 p else
  if p ≤ 3677 then rootNormalQrMaskWords0031 p else
  []

def k3PrefixGroup0007TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 3313 then rootTwistQrMaskWords0028 p else
  if p ≤ 3449 then rootTwistQrMaskWords0029 p else
  if p ≤ 3557 then rootTwistQrMaskWords0030 p else
  if p ≤ 3677 then rootTwistQrMaskWords0031 p else
  []

def k3PrefixGroup0007MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0028 ++
  rootMaskSemanticGroup0029 ++
  rootMaskSemanticGroup0030 ++
  rootMaskSemanticGroup0031

def k3PrefixGroup0007 : List (List ℕ) :=
  [[3, 3191],
    [3, 3203],
    [3, 3209],
    [3, 3217],
    [3, 3221],
    [3, 3229],
    [3, 3251],
    [3, 3253],
    [3, 3257],
    [3, 3259],
    [3, 3271],
    [3, 3299],
    [3, 3301],
    [3, 3307],
    [3, 3313],
    [3, 3319],
    [3, 3323],
    [3, 3329],
    [3, 3331],
    [3, 3343],
    [3, 3347],
    [3, 3359],
    [3, 3361],
    [3, 3371],
    [3, 3373],
    [3, 3389],
    [3, 3391],
    [3, 3407],
    [3, 3413],
    [3, 3433],
    [3, 3449],
    [3, 3457],
    [3, 3461],
    [3, 3463],
    [3, 3467],
    [3, 3469],
    [3, 3491],
    [3, 3499],
    [3, 3511],
    [3, 3517],
    [3, 3527],
    [3, 3529],
    [3, 3533],
    [3, 3539],
    [3, 3541],
    [3, 3547],
    [3, 3557],
    [3, 3559],
    [3, 3571],
    [3, 3581],
    [3, 3583],
    [3, 3593],
    [3, 3607],
    [3, 3613],
    [3, 3617],
    [3, 3623],
    [3, 3631],
    [3, 3637],
    [3, 3643],
    [7, 11],
    [7, 13],
    [7, 17],
    [7, 19],
    [7, 23]]

theorem k3PrefixGroup0007_support_covered :
    k3PrefixGroup0007.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0007MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0007_passes :
    k3PrefixGroup0007.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0007_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0007_mask_group0028_passes :
    rootMaskSemanticGroup0028.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028_passes) p hp
  have hnormal : k3PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0028 p := by
    simp only [rootMaskSemanticGroup0028,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0028 p := by
    simp only [rootMaskSemanticGroup0028,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0007_mask_group0029_passes :
    rootMaskSemanticGroup0029.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0029_passes) p hp
  have hnormal : k3PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0029 p := by
    simp only [rootMaskSemanticGroup0029,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0029 p := by
    simp only [rootMaskSemanticGroup0029,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0007_mask_group0030_passes :
    rootMaskSemanticGroup0030.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0030_passes) p hp
  have hnormal : k3PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0030 p := by
    simp only [rootMaskSemanticGroup0030,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0030 p := by
    simp only [rootMaskSemanticGroup0030,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0007_mask_group0031_passes :
    rootMaskSemanticGroup0031.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0031_passes) p hp
  have hnormal : k3PrefixGroup0007NormalLookup p =
      rootNormalQrMaskWords0031 p := by
    simp only [rootMaskSemanticGroup0031,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0007TwistLookup p =
      rootTwistQrMaskWords0031 p := by
    simp only [rootMaskSemanticGroup0031,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0007_mask_primes_pass :
    k3PrefixGroup0007MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0007NormalLookup
        k3PrefixGroup0007TwistLookup) = true := by
  simp only [k3PrefixGroup0007MaskPrimes, List.all_append]
  rw [k3PrefixGroup0007_mask_group0000_passes]
  rw [k3PrefixGroup0007_mask_group0028_passes]
  rw [k3PrefixGroup0007_mask_group0029_passes]
  rw [k3PrefixGroup0007_mask_group0030_passes]
  rw [k3PrefixGroup0007_mask_group0031_passes]
  rfl

theorem k3PrefixGroup0007_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0007) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0007NormalLookup,
    k3PrefixGroup0007TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0007_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0007_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0007MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0007_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0007_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
