import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0032
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0033
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0034
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0035

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0008NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 3821 then rootNormalQrMaskWords0032 p else
  if p ≤ 3931 then rootNormalQrMaskWords0033 p else
  if p ≤ 4079 then rootNormalQrMaskWords0034 p else
  if p ≤ 4219 then rootNormalQrMaskWords0035 p else
  []

def k2PrefixGroup0008TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 3821 then rootTwistQrMaskWords0032 p else
  if p ≤ 3931 then rootTwistQrMaskWords0033 p else
  if p ≤ 4079 then rootTwistQrMaskWords0034 p else
  if p ≤ 4219 then rootTwistQrMaskWords0035 p else
  []

def k2PrefixGroup0008MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0032 ++
  rootMaskSemanticGroup0033 ++
  rootMaskSemanticGroup0034 ++
  rootMaskSemanticGroup0035

def k2PrefixGroup0008 : List (List ℕ) :=
  [[3691],
    [3697],
    [3701],
    [3709],
    [3719],
    [3727],
    [3733],
    [3739],
    [3761],
    [3767],
    [3769],
    [3779],
    [3793],
    [3797],
    [3803],
    [3821],
    [3823],
    [3833],
    [3847],
    [3851],
    [3853],
    [3863],
    [3877],
    [3881],
    [3889],
    [3907],
    [3911],
    [3917],
    [3919],
    [3923],
    [3929],
    [3931],
    [3943],
    [3947],
    [3967],
    [3989],
    [4001],
    [4003],
    [4007],
    [4013],
    [4019],
    [4021],
    [4027],
    [4049],
    [4051],
    [4057],
    [4073],
    [4079],
    [4091],
    [4093],
    [4099],
    [4111],
    [4127],
    [4129],
    [4133],
    [4139],
    [4153],
    [4157],
    [4159],
    [4177],
    [4201],
    [4211],
    [4217],
    [4219]]

theorem k2PrefixGroup0008_support_covered :
    k2PrefixGroup0008.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0008MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0008_passes :
    k2PrefixGroup0008.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0008NormalLookup
        k2PrefixGroup0008TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0008_mask_group0032_passes :
    rootMaskSemanticGroup0032.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0008NormalLookup
        k2PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0032_passes) p hp
  have hnormal : k2PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0032 p := by
    simp only [rootMaskSemanticGroup0032,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0032 p := by
    simp only [rootMaskSemanticGroup0032,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0008_mask_group0033_passes :
    rootMaskSemanticGroup0033.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0008NormalLookup
        k2PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0033_passes) p hp
  have hnormal : k2PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0033 p := by
    simp only [rootMaskSemanticGroup0033,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0033 p := by
    simp only [rootMaskSemanticGroup0033,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0008_mask_group0034_passes :
    rootMaskSemanticGroup0034.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0008NormalLookup
        k2PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0034_passes) p hp
  have hnormal : k2PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0034 p := by
    simp only [rootMaskSemanticGroup0034,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0034 p := by
    simp only [rootMaskSemanticGroup0034,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0008_mask_group0035_passes :
    rootMaskSemanticGroup0035.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0008NormalLookup
        k2PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0035_passes) p hp
  have hnormal : k2PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0035 p := by
    simp only [rootMaskSemanticGroup0035,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0035 p := by
    simp only [rootMaskSemanticGroup0035,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0008_mask_primes_pass :
    k2PrefixGroup0008MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0008NormalLookup
        k2PrefixGroup0008TwistLookup) = true := by
  simp only [k2PrefixGroup0008MaskPrimes, List.all_append]
  rw [k2PrefixGroup0008_mask_group0032_passes]
  rw [k2PrefixGroup0008_mask_group0033_passes]
  rw [k2PrefixGroup0008_mask_group0034_passes]
  rw [k2PrefixGroup0008_mask_group0035_passes]
  rfl

theorem k2PrefixGroup0008_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0008) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0008NormalLookup,
    k2PrefixGroup0008TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0008_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0008_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0008MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0008_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0008_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
