import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0006
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0007
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0008
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0009

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0023NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 619 then rootNormalQrMaskWords0006 p else
  if p ≤ 733 then rootNormalQrMaskWords0007 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  if p ≤ 953 then rootNormalQrMaskWords0009 p else
  []

def k3PrefixGroup0023TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 619 then rootTwistQrMaskWords0006 p else
  if p ≤ 733 then rootTwistQrMaskWords0007 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  if p ≤ 953 then rootTwistQrMaskWords0009 p else
  []

def k3PrefixGroup0023MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0006 ++
  rootMaskSemanticGroup0007 ++
  rootMaskSemanticGroup0008 ++
  rootMaskSemanticGroup0009

def k3PrefixGroup0023 : List (List ℕ) :=
  [[23, 587],
    [23, 593],
    [23, 599],
    [23, 601],
    [23, 607],
    [23, 613],
    [23, 617],
    [23, 619],
    [23, 631],
    [23, 641],
    [23, 643],
    [23, 647],
    [23, 653],
    [23, 659],
    [23, 661],
    [23, 673],
    [23, 677],
    [23, 683],
    [23, 691],
    [23, 701],
    [23, 709],
    [23, 719],
    [23, 727],
    [23, 733],
    [23, 739],
    [23, 743],
    [23, 751],
    [23, 757],
    [23, 761],
    [23, 769],
    [23, 773],
    [23, 787],
    [23, 797],
    [23, 809],
    [23, 811],
    [23, 821],
    [23, 823],
    [23, 827],
    [23, 829],
    [23, 839],
    [23, 853],
    [23, 857],
    [23, 859],
    [23, 863],
    [23, 877],
    [23, 881],
    [23, 883],
    [23, 887],
    [23, 907],
    [23, 911],
    [23, 919],
    [29, 31],
    [29, 37],
    [29, 41],
    [29, 43],
    [29, 47],
    [29, 53],
    [29, 59],
    [29, 61],
    [29, 67],
    [29, 71],
    [29, 73],
    [29, 79],
    [29, 83]]

theorem k3PrefixGroup0023_support_covered :
    k3PrefixGroup0023.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0023MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0023_passes :
    k3PrefixGroup0023.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0023_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0023TwistLookup p =
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

theorem k3PrefixGroup0023_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0023TwistLookup p =
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

theorem k3PrefixGroup0023_mask_group0006_passes :
    rootMaskSemanticGroup0006.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0006_passes) p hp
  have hnormal : k3PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0023TwistLookup p =
      rootTwistQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0023_mask_group0007_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0007_passes) p hp
  have hnormal : k3PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0023TwistLookup p =
      rootTwistQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0023_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k3PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0023TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0023_mask_group0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0009_passes) p hp
  have hnormal : k3PrefixGroup0023NormalLookup p =
      rootNormalQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0023TwistLookup p =
      rootTwistQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0023_mask_primes_pass :
    k3PrefixGroup0023MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0023NormalLookup
        k3PrefixGroup0023TwistLookup) = true := by
  simp only [k3PrefixGroup0023MaskPrimes, List.all_append]
  rw [k3PrefixGroup0023_mask_group0000_passes]
  rw [k3PrefixGroup0023_mask_group0001_passes]
  rw [k3PrefixGroup0023_mask_group0006_passes]
  rw [k3PrefixGroup0023_mask_group0007_passes]
  rw [k3PrefixGroup0023_mask_group0008_passes]
  rw [k3PrefixGroup0023_mask_group0009_passes]
  rfl

theorem k3PrefixGroup0023_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0023) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0023NormalLookup,
    k3PrefixGroup0023TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0023_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0023_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0023MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0023_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0023_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
