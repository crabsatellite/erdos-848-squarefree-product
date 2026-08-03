import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0011
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0032NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 1181 then rootNormalQrMaskWords0011 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  []

def k3PrefixGroup0032TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 1181 then rootTwistQrMaskWords0011 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  []

def k3PrefixGroup0032MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0011 ++
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013

def k3PrefixGroup0032 : List (List ℕ) :=
  [[23, 1181],
    [23, 1187],
    [23, 1193],
    [23, 1201],
    [23, 1213],
    [23, 1217],
    [23, 1223],
    [23, 1229],
    [23, 1231],
    [23, 1237],
    [23, 1249],
    [23, 1259],
    [23, 1277],
    [23, 1279],
    [23, 1283],
    [23, 1289],
    [23, 1291],
    [23, 1297],
    [23, 1301],
    [23, 1303],
    [23, 1307],
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
    [29, 83],
    [29, 89],
    [29, 97],
    [29, 101],
    [29, 103],
    [29, 107],
    [29, 109],
    [29, 113],
    [29, 127],
    [29, 131],
    [29, 137],
    [29, 139],
    [29, 149],
    [29, 151],
    [29, 157],
    [29, 163],
    [29, 167],
    [29, 173],
    [29, 179],
    [29, 181],
    [29, 191],
    [29, 193],
    [29, 197],
    [29, 199],
    [29, 211],
    [29, 223],
    [29, 227],
    [29, 229],
    [29, 233],
    [29, 239],
    [29, 241]]

theorem k3PrefixGroup0032_support_covered :
    k3PrefixGroup0032.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0032MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0032_passes :
    k3PrefixGroup0032.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0032_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_group0011_passes :
    rootMaskSemanticGroup0011.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0011_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0011 p := by
    simp only [rootMaskSemanticGroup0011,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k3PrefixGroup0032NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0032TwistLookup p =
      rootTwistQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0032_mask_primes_pass :
    k3PrefixGroup0032MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0032NormalLookup
        k3PrefixGroup0032TwistLookup) = true := by
  simp only [k3PrefixGroup0032MaskPrimes, List.all_append]
  rw [k3PrefixGroup0032_mask_group0000_passes]
  rw [k3PrefixGroup0032_mask_group0001_passes]
  rw [k3PrefixGroup0032_mask_group0002_passes]
  rw [k3PrefixGroup0032_mask_group0003_passes]
  rw [k3PrefixGroup0032_mask_group0011_passes]
  rw [k3PrefixGroup0032_mask_group0012_passes]
  rw [k3PrefixGroup0032_mask_group0013_passes]
  rfl

theorem k3PrefixGroup0032_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0032) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0032NormalLookup,
    k3PrefixGroup0032TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0032_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0032_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0032MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0032_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0032_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
