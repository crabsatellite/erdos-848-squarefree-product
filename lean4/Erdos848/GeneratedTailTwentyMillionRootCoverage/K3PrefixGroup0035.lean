import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0011

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0035NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 1181 then rootNormalQrMaskWords0011 p else
  []

def k3PrefixGroup0035TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 1181 then rootTwistQrMaskWords0011 p else
  []

def k3PrefixGroup0035MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0011

def k3PrefixGroup0035 : List (List ℕ) :=
  [[29, 1091],
    [29, 1093],
    [29, 1097],
    [29, 1103],
    [29, 1109],
    [29, 1117],
    [29, 1123],
    [29, 1129],
    [29, 1151],
    [29, 1153],
    [29, 1163],
    [31, 37],
    [31, 41],
    [31, 43],
    [31, 47],
    [31, 53],
    [31, 59],
    [31, 61],
    [31, 67],
    [31, 71],
    [31, 73],
    [31, 79],
    [31, 83],
    [31, 89],
    [31, 97],
    [31, 101],
    [31, 103],
    [31, 107],
    [31, 109],
    [31, 113],
    [31, 127],
    [31, 131],
    [31, 137],
    [31, 139],
    [31, 149],
    [31, 151],
    [31, 157],
    [31, 163],
    [31, 167],
    [31, 173],
    [31, 179],
    [31, 181],
    [31, 191],
    [31, 193],
    [31, 197],
    [31, 199],
    [31, 211],
    [31, 223],
    [31, 227],
    [31, 229],
    [31, 233],
    [31, 239],
    [31, 241],
    [31, 251],
    [31, 257],
    [31, 263],
    [31, 269],
    [31, 271],
    [31, 277],
    [31, 281],
    [31, 283],
    [31, 293],
    [31, 307],
    [31, 311]]

theorem k3PrefixGroup0035_support_covered :
    k3PrefixGroup0035.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0035MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0035_passes :
    k3PrefixGroup0035.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0035_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0035_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0035_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0035_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0035_mask_group0011_passes :
    rootMaskSemanticGroup0011.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0011_passes) p hp
  have hnormal : k3PrefixGroup0035NormalLookup p =
      rootNormalQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0035TwistLookup p =
      rootTwistQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0035_mask_primes_pass :
    k3PrefixGroup0035MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0035NormalLookup
        k3PrefixGroup0035TwistLookup) = true := by
  simp only [k3PrefixGroup0035MaskPrimes, List.all_append]
  rw [k3PrefixGroup0035_mask_group0000_passes]
  rw [k3PrefixGroup0035_mask_group0001_passes]
  rw [k3PrefixGroup0035_mask_group0002_passes]
  rw [k3PrefixGroup0035_mask_group0003_passes]
  rw [k3PrefixGroup0035_mask_group0011_passes]
  rfl

theorem k3PrefixGroup0035_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0035) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0035NormalLookup,
    k3PrefixGroup0035TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0035_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0035_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0035MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0035_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0035_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
