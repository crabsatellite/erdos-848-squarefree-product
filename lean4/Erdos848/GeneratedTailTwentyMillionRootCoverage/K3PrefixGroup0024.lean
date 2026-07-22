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

def k3PrefixGroup0024NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  if p ≤ 953 then rootNormalQrMaskWords0009 p else
  if p ≤ 1061 then rootNormalQrMaskWords0010 p else
  if p ≤ 1181 then rootNormalQrMaskWords0011 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  []

def k3PrefixGroup0024TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  if p ≤ 953 then rootTwistQrMaskWords0009 p else
  if p ≤ 1061 then rootTwistQrMaskWords0010 p else
  if p ≤ 1181 then rootTwistQrMaskWords0011 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  []

def k3PrefixGroup0024MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0008 ++
  rootMaskSemanticGroup0009 ++
  rootMaskSemanticGroup0010 ++
  rootMaskSemanticGroup0011 ++
  rootMaskSemanticGroup0012

def k3PrefixGroup0024 : List (List ℕ) :=
  [[17, 761],
    [17, 769],
    [17, 773],
    [17, 787],
    [17, 797],
    [17, 809],
    [17, 811],
    [17, 821],
    [17, 823],
    [17, 827],
    [17, 829],
    [17, 839],
    [17, 853],
    [17, 857],
    [17, 859],
    [17, 863],
    [17, 877],
    [17, 881],
    [17, 883],
    [17, 887],
    [17, 907],
    [17, 911],
    [17, 919],
    [17, 929],
    [17, 937],
    [17, 941],
    [17, 947],
    [17, 953],
    [17, 967],
    [17, 971],
    [17, 977],
    [17, 983],
    [17, 991],
    [17, 997],
    [17, 1009],
    [17, 1013],
    [17, 1019],
    [17, 1021],
    [17, 1031],
    [17, 1033],
    [17, 1039],
    [17, 1049],
    [17, 1051],
    [17, 1061],
    [17, 1063],
    [17, 1069],
    [17, 1087],
    [17, 1091],
    [17, 1093],
    [17, 1097],
    [17, 1103],
    [17, 1109],
    [17, 1117],
    [17, 1123],
    [17, 1129],
    [17, 1151],
    [17, 1153],
    [17, 1163],
    [17, 1171],
    [17, 1181],
    [17, 1187],
    [17, 1193],
    [17, 1201],
    [17, 1213]]

theorem k3PrefixGroup0024_support_covered :
    k3PrefixGroup0024.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0024MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0024_passes :
    k3PrefixGroup0024.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0024_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0024_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k3PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0024_mask_group0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0009_passes) p hp
  have hnormal : k3PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0024_mask_group0010_passes :
    rootMaskSemanticGroup0010.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0010_passes) p hp
  have hnormal : k3PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0024_mask_group0011_passes :
    rootMaskSemanticGroup0011.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0011_passes) p hp
  have hnormal : k3PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0024_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0024NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0024TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0024_mask_primes_pass :
    k3PrefixGroup0024MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0024NormalLookup
        k3PrefixGroup0024TwistLookup) = true := by
  simp only [k3PrefixGroup0024MaskPrimes, List.all_append]
  rw [k3PrefixGroup0024_mask_group0000_passes]
  rw [k3PrefixGroup0024_mask_group0008_passes]
  rw [k3PrefixGroup0024_mask_group0009_passes]
  rw [k3PrefixGroup0024_mask_group0010_passes]
  rw [k3PrefixGroup0024_mask_group0011_passes]
  rw [k3PrefixGroup0024_mask_group0012_passes]
  rfl

theorem k3PrefixGroup0024_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0024) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0024NormalLookup,
    k3PrefixGroup0024TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0024_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0024_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0024MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0024_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0024_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
