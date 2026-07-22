import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0008
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0009
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0010

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0008NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 733 then rootNormalQrMaskWords0007 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  if p ≤ 953 then rootNormalQrMaskWords0009 p else
  if p ≤ 1061 then rootNormalQrMaskWords0010 p else
  []

def k4PrefixGroup0008TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 733 then rootTwistQrMaskWords0007 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  if p ≤ 953 then rootTwistQrMaskWords0009 p else
  if p ≤ 1061 then rootTwistQrMaskWords0010 p else
  []

def k4PrefixGroup0008MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0007 ++
  rootMaskSemanticGroup0008 ++
  rootMaskSemanticGroup0009 ++
  rootMaskSemanticGroup0010

def k4PrefixGroup0008 : List (List ℕ) :=
  [[3, 13, 683],
    [3, 13, 691],
    [3, 13, 701],
    [3, 13, 709],
    [3, 13, 719],
    [3, 13, 727],
    [3, 13, 733],
    [3, 13, 739],
    [3, 13, 743],
    [3, 13, 751],
    [3, 13, 757],
    [3, 13, 761],
    [3, 13, 769],
    [3, 13, 773],
    [3, 13, 787],
    [3, 13, 797],
    [3, 13, 809],
    [3, 13, 811],
    [3, 13, 821],
    [3, 13, 823],
    [3, 13, 827],
    [3, 13, 829],
    [3, 13, 839],
    [3, 13, 853],
    [3, 13, 857],
    [3, 13, 859],
    [3, 13, 863],
    [3, 13, 877],
    [3, 13, 881],
    [3, 13, 883],
    [3, 13, 887],
    [3, 13, 907],
    [3, 13, 911],
    [3, 13, 919],
    [3, 13, 929],
    [3, 13, 937],
    [3, 13, 941],
    [3, 13, 947],
    [3, 13, 953],
    [3, 13, 967],
    [3, 13, 971],
    [3, 13, 977],
    [3, 13, 983],
    [3, 13, 991],
    [3, 13, 997],
    [3, 13, 1009],
    [3, 17, 19],
    [3, 17, 23],
    [3, 17, 29],
    [3, 17, 31],
    [3, 17, 37],
    [3, 17, 41],
    [3, 17, 43],
    [3, 17, 47],
    [3, 17, 53],
    [3, 17, 59],
    [3, 17, 61],
    [3, 17, 67],
    [3, 17, 71],
    [3, 17, 73],
    [3, 17, 79],
    [3, 17, 83],
    [3, 17, 89],
    [3, 17, 97]]

theorem k4PrefixGroup0008_support_covered :
    k4PrefixGroup0008.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0008MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0008_passes :
    k4PrefixGroup0008.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0008_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0008_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0008_mask_group0007_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0007_passes) p hp
  have hnormal : k4PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0008_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k4PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0008_mask_group0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0009_passes) p hp
  have hnormal : k4PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0008_mask_group0010_passes :
    rootMaskSemanticGroup0010.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0010_passes) p hp
  have hnormal : k4PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0008_mask_primes_pass :
    k4PrefixGroup0008MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0008NormalLookup
        k4PrefixGroup0008TwistLookup) = true := by
  simp only [k4PrefixGroup0008MaskPrimes, List.all_append]
  rw [k4PrefixGroup0008_mask_group0000_passes]
  rw [k4PrefixGroup0008_mask_group0001_passes]
  rw [k4PrefixGroup0008_mask_group0007_passes]
  rw [k4PrefixGroup0008_mask_group0008_passes]
  rw [k4PrefixGroup0008_mask_group0009_passes]
  rw [k4PrefixGroup0008_mask_group0010_passes]
  rfl

theorem k4PrefixGroup0008_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0008) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0008NormalLookup,
    k4PrefixGroup0008TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0008_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0008_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0008MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0008_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0008_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
