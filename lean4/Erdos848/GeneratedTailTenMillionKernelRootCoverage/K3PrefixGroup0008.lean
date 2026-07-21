import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0008
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0009
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0010
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0011
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0012

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0008NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 839 then rootNormalQrMaskWords0008 p else
  if p ≤ 953 then rootNormalQrMaskWords0009 p else
  if p ≤ 1061 then rootNormalQrMaskWords0010 p else
  if p ≤ 1181 then rootNormalQrMaskWords0011 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  []

def k3PrefixGroup0008TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 839 then rootTwistQrMaskWords0008 p else
  if p ≤ 953 then rootTwistQrMaskWords0009 p else
  if p ≤ 1061 then rootTwistQrMaskWords0010 p else
  if p ≤ 1181 then rootTwistQrMaskWords0011 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  []

def k3PrefixGroup0008MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0008 ++
  rootMaskSemanticGroup0009 ++
  rootMaskSemanticGroup0010 ++
  rootMaskSemanticGroup0011 ++
  rootMaskSemanticGroup0012

def k3PrefixGroup0008 : List (List ℕ) :=
  [[7, 829],
    [7, 839],
    [7, 853],
    [7, 857],
    [7, 859],
    [7, 863],
    [7, 877],
    [7, 881],
    [7, 883],
    [7, 887],
    [7, 907],
    [7, 911],
    [7, 919],
    [7, 929],
    [7, 937],
    [7, 941],
    [7, 947],
    [7, 953],
    [7, 967],
    [7, 971],
    [7, 977],
    [7, 983],
    [7, 991],
    [7, 997],
    [7, 1009],
    [7, 1013],
    [7, 1019],
    [7, 1021],
    [7, 1031],
    [7, 1033],
    [7, 1039],
    [7, 1049],
    [7, 1051],
    [7, 1061],
    [7, 1063],
    [7, 1069],
    [7, 1087],
    [7, 1091],
    [7, 1093],
    [7, 1097],
    [7, 1103],
    [7, 1109],
    [7, 1117],
    [7, 1123],
    [7, 1129],
    [7, 1151],
    [7, 1153],
    [7, 1163],
    [7, 1171],
    [7, 1181],
    [7, 1187],
    [7, 1193],
    [7, 1201],
    [7, 1213],
    [7, 1217],
    [7, 1223],
    [7, 1229],
    [7, 1231],
    [7, 1237],
    [7, 1249],
    [7, 1259],
    [7, 1277],
    [7, 1279],
    [7, 1283]]

theorem k3PrefixGroup0008_support_covered :
    k3PrefixGroup0008.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0008MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0008_passes :
    k3PrefixGroup0008.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0008_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0008TwistLookup p =
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

theorem k3PrefixGroup0008_mask_group0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0008_passes) p hp
  have hnormal : k3PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0008 p := by
    simp only [rootMaskSemanticGroup0008,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0008TwistLookup p =
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

theorem k3PrefixGroup0008_mask_group0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0009_passes) p hp
  have hnormal : k3PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0009 p := by
    simp only [rootMaskSemanticGroup0009,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0008TwistLookup p =
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

theorem k3PrefixGroup0008_mask_group0010_passes :
    rootMaskSemanticGroup0010.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0010_passes) p hp
  have hnormal : k3PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0010 p := by
    simp only [rootMaskSemanticGroup0010,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0008_mask_group0011_passes :
    rootMaskSemanticGroup0011.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0011_passes) p hp
  have hnormal : k3PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0008_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0008_mask_primes_pass :
    k3PrefixGroup0008MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0008NormalLookup
        k3PrefixGroup0008TwistLookup) = true := by
  simp only [k3PrefixGroup0008MaskPrimes, List.all_append]
  rw [k3PrefixGroup0008_mask_group0000_passes]
  rw [k3PrefixGroup0008_mask_group0008_passes]
  rw [k3PrefixGroup0008_mask_group0009_passes]
  rw [k3PrefixGroup0008_mask_group0010_passes]
  rw [k3PrefixGroup0008_mask_group0011_passes]
  rw [k3PrefixGroup0008_mask_group0012_passes]
  rfl

theorem k3PrefixGroup0008_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0008) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0008NormalLookup,
    k3PrefixGroup0008TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0008_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0008_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0008MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0008_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0008_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
