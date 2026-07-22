import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0006
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0007

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0060NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  if p ≤ 619 then rootNormalQrMaskWords0006 p else
  if p ≤ 733 then rootNormalQrMaskWords0007 p else
  []

def k3PrefixGroup0060TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  if p ≤ 619 then rootTwistQrMaskWords0006 p else
  if p ≤ 733 then rootTwistQrMaskWords0007 p else
  []

def k3PrefixGroup0060MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004 ++
  rootMaskSemanticGroup0006 ++
  rootMaskSemanticGroup0007

def k3PrefixGroup0060 : List (List ℕ) :=
  [[79, 619],
    [79, 631],
    [79, 641],
    [79, 643],
    [79, 647],
    [79, 653],
    [79, 659],
    [79, 661],
    [79, 673],
    [79, 677],
    [79, 683],
    [79, 691],
    [79, 701],
    [83, 89],
    [83, 97],
    [83, 101],
    [83, 103],
    [83, 107],
    [83, 109],
    [83, 113],
    [83, 127],
    [83, 131],
    [83, 137],
    [83, 139],
    [83, 149],
    [83, 151],
    [83, 157],
    [83, 163],
    [83, 167],
    [83, 173],
    [83, 179],
    [83, 181],
    [83, 191],
    [83, 193],
    [83, 197],
    [83, 199],
    [83, 211],
    [83, 223],
    [83, 227],
    [83, 229],
    [83, 233],
    [83, 239],
    [83, 241],
    [83, 251],
    [83, 257],
    [83, 263],
    [83, 269],
    [83, 271],
    [83, 277],
    [83, 281],
    [83, 283],
    [83, 293],
    [83, 307],
    [83, 311],
    [83, 313],
    [83, 317],
    [83, 331],
    [83, 337],
    [83, 347],
    [83, 349],
    [83, 353],
    [83, 359],
    [83, 367],
    [83, 373]]

theorem k3PrefixGroup0060_support_covered :
    k3PrefixGroup0060.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0060MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0060_passes :
    k3PrefixGroup0060.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0060_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0060_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0060_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0060_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0060_mask_group0006_passes :
    rootMaskSemanticGroup0006.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0006_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0006 p := by
    simp only [rootMaskSemanticGroup0006,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0060_mask_group0007_passes :
    rootMaskSemanticGroup0007.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0007_passes) p hp
  have hnormal : k3PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0007 p := by
    simp only [rootMaskSemanticGroup0007,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0060_mask_primes_pass :
    k3PrefixGroup0060MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0060NormalLookup
        k3PrefixGroup0060TwistLookup) = true := by
  simp only [k3PrefixGroup0060MaskPrimes, List.all_append]
  rw [k3PrefixGroup0060_mask_group0001_passes]
  rw [k3PrefixGroup0060_mask_group0002_passes]
  rw [k3PrefixGroup0060_mask_group0003_passes]
  rw [k3PrefixGroup0060_mask_group0004_passes]
  rw [k3PrefixGroup0060_mask_group0006_passes]
  rw [k3PrefixGroup0060_mask_group0007_passes]
  rfl

theorem k3PrefixGroup0060_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0060) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0060NormalLookup,
    k3PrefixGroup0060TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0060_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0060_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0060MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0060_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0060_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
