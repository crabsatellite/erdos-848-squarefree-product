import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0008
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0009
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0010

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0005NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 619 then rootNormalQrMaskWords0006 p else
  if p ≤ 733 then rootNormalQrMaskWords0007 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  if p ≤ 953 then rootNormalQrMaskWords0009 p else
  if p ≤ 1061 then rootNormalQrMaskWords0010 p else
  []

def k4PrefixGroup0005TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 619 then rootTwistQrMaskWords0006 p else
  if p ≤ 733 then rootTwistQrMaskWords0007 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  if p ≤ 953 then rootTwistQrMaskWords0009 p else
  if p ≤ 1061 then rootTwistQrMaskWords0010 p else
  []

def k4PrefixGroup0005MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0006 ++
  rootMaskSemanticGroup0007 ++
  rootMaskSemanticGroup0008 ++
  rootMaskSemanticGroup0009 ++
  rootMaskSemanticGroup0010

def k4PrefixGroup0005 : List (List ℕ) :=
  [[3, 11, 601],
    [3, 11, 607],
    [3, 11, 613],
    [3, 11, 617],
    [3, 11, 619],
    [3, 11, 631],
    [3, 11, 641],
    [3, 11, 643],
    [3, 11, 647],
    [3, 11, 653],
    [3, 11, 659],
    [3, 11, 661],
    [3, 11, 673],
    [3, 11, 677],
    [3, 11, 683],
    [3, 11, 691],
    [3, 11, 701],
    [3, 11, 709],
    [3, 11, 719],
    [3, 11, 727],
    [3, 11, 733],
    [3, 11, 739],
    [3, 11, 743],
    [3, 11, 751],
    [3, 11, 757],
    [3, 11, 761],
    [3, 11, 769],
    [3, 11, 773],
    [3, 11, 787],
    [3, 11, 797],
    [3, 11, 809],
    [3, 11, 811],
    [3, 11, 821],
    [3, 11, 823],
    [3, 11, 827],
    [3, 11, 829],
    [3, 11, 839],
    [3, 11, 853],
    [3, 11, 857],
    [3, 11, 859],
    [3, 11, 863],
    [3, 11, 877],
    [3, 11, 881],
    [3, 11, 883],
    [3, 11, 887],
    [3, 11, 907],
    [3, 11, 911],
    [3, 11, 919],
    [3, 11, 929],
    [3, 11, 937],
    [3, 11, 941],
    [3, 11, 947],
    [3, 11, 953],
    [3, 11, 967],
    [3, 11, 971],
    [3, 11, 977],
    [3, 11, 983],
    [3, 11, 991],
    [3, 11, 997],
    [3, 11, 1009],
    [3, 11, 1013],
    [3, 11, 1019],
    [3, 11, 1021],
    [3, 11, 1031]]

theorem k4PrefixGroup0005_support_covered :
    k4PrefixGroup0005.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0005MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0005_passes :
    k4PrefixGroup0005.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0005_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0005_mask_group0006_passes :
    rootMaskSemanticGroup0006.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0006_passes) p hp
  have hnormal : k4PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0005_mask_group0007_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0007_passes) p hp
  have hnormal : k4PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0005_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k4PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0005_mask_group0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0009_passes) p hp
  have hnormal : k4PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0005_mask_group0010_passes :
    rootMaskSemanticGroup0010.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0010_passes) p hp
  have hnormal : k4PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0005_mask_primes_pass :
    k4PrefixGroup0005MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0005NormalLookup
        k4PrefixGroup0005TwistLookup) = true := by
  simp only [k4PrefixGroup0005MaskPrimes, List.all_append]
  rw [k4PrefixGroup0005_mask_group0000_passes]
  rw [k4PrefixGroup0005_mask_group0006_passes]
  rw [k4PrefixGroup0005_mask_group0007_passes]
  rw [k4PrefixGroup0005_mask_group0008_passes]
  rw [k4PrefixGroup0005_mask_group0009_passes]
  rw [k4PrefixGroup0005_mask_group0010_passes]
  rfl

theorem k4PrefixGroup0005_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0005) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0005NormalLookup,
    k4PrefixGroup0005TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0005_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0005_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0005MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0005_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0005_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
