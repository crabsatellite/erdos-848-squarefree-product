import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0008
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0009
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0010
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0011
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0002NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  if p ≤ 953 then rootNormalQrMaskWords0009 p else
  if p ≤ 1061 then rootNormalQrMaskWords0010 p else
  if p ≤ 1181 then rootNormalQrMaskWords0011 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  []

def k4PrefixGroup0002TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  if p ≤ 953 then rootTwistQrMaskWords0009 p else
  if p ≤ 1061 then rootTwistQrMaskWords0010 p else
  if p ≤ 1181 then rootTwistQrMaskWords0011 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  []

def k4PrefixGroup0002MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0008 ++
  rootMaskSemanticGroup0009 ++
  rootMaskSemanticGroup0010 ++
  rootMaskSemanticGroup0011 ++
  rootMaskSemanticGroup0012

def k4PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 751],
    [3, 7, 757],
    [3, 7, 761],
    [3, 7, 769],
    [3, 7, 773],
    [3, 7, 787],
    [3, 7, 797],
    [3, 7, 809],
    [3, 7, 811],
    [3, 7, 821],
    [3, 7, 823],
    [3, 7, 827],
    [3, 7, 829],
    [3, 7, 839],
    [3, 7, 853],
    [3, 7, 857],
    [3, 7, 859],
    [3, 7, 863],
    [3, 7, 877],
    [3, 7, 881],
    [3, 7, 883],
    [3, 7, 887],
    [3, 7, 907],
    [3, 7, 911],
    [3, 7, 919],
    [3, 7, 929],
    [3, 7, 937],
    [3, 7, 941],
    [3, 7, 947],
    [3, 7, 953],
    [3, 7, 967],
    [3, 7, 971],
    [3, 7, 977],
    [3, 7, 983],
    [3, 7, 991],
    [3, 7, 997],
    [3, 7, 1009],
    [3, 7, 1013],
    [3, 7, 1019],
    [3, 7, 1021],
    [3, 7, 1031],
    [3, 7, 1033],
    [3, 7, 1039],
    [3, 7, 1049],
    [3, 7, 1051],
    [3, 7, 1061],
    [3, 7, 1063],
    [3, 7, 1069],
    [3, 7, 1087],
    [3, 7, 1091],
    [3, 7, 1093],
    [3, 7, 1097],
    [3, 7, 1103],
    [3, 7, 1109],
    [3, 7, 1117],
    [3, 7, 1123],
    [3, 7, 1129],
    [3, 7, 1151],
    [3, 7, 1153],
    [3, 7, 1163],
    [3, 7, 1171],
    [3, 7, 1181],
    [3, 7, 1187],
    [3, 7, 1193]]

theorem k4PrefixGroup0002_support_covered :
    k4PrefixGroup0002.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0002MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0002_passes :
    k4PrefixGroup0002.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0002_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0002_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k4PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0002_mask_group0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0009_passes) p hp
  have hnormal : k4PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0002_mask_group0010_passes :
    rootMaskSemanticGroup0010.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0010_passes) p hp
  have hnormal : k4PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0002_mask_group0011_passes :
    rootMaskSemanticGroup0011.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0011_passes) p hp
  have hnormal : k4PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0002_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k4PrefixGroup0002NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0002TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0002_mask_primes_pass :
    k4PrefixGroup0002MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0002NormalLookup
        k4PrefixGroup0002TwistLookup) = true := by
  simp only [k4PrefixGroup0002MaskPrimes, List.all_append]
  rw [k4PrefixGroup0002_mask_group0000_passes]
  rw [k4PrefixGroup0002_mask_group0008_passes]
  rw [k4PrefixGroup0002_mask_group0009_passes]
  rw [k4PrefixGroup0002_mask_group0010_passes]
  rw [k4PrefixGroup0002_mask_group0011_passes]
  rw [k4PrefixGroup0002_mask_group0012_passes]
  rfl

theorem k4PrefixGroup0002_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0002) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0002NormalLookup,
    k4PrefixGroup0002TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0002_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0002_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0002MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0002_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0002_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
