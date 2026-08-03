import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0062NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0062TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0062MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0062 : List (List ℕ) :=
  [[7, 89, 179],
    [7, 89, 181],
    [7, 89, 191],
    [7, 89, 193],
    [7, 89, 197],
    [7, 89, 199],
    [7, 89, 211],
    [7, 89, 223],
    [7, 89, 227],
    [7, 89, 229],
    [7, 89, 233],
    [7, 89, 239],
    [7, 89, 241],
    [7, 97, 101],
    [7, 97, 103],
    [7, 97, 107],
    [7, 97, 109],
    [7, 97, 113],
    [7, 97, 127],
    [7, 97, 131],
    [7, 97, 137],
    [7, 97, 139],
    [7, 97, 149],
    [7, 97, 151],
    [7, 97, 157],
    [7, 97, 163],
    [7, 97, 167],
    [7, 97, 173],
    [7, 97, 179],
    [7, 97, 181],
    [7, 97, 191],
    [7, 97, 193],
    [7, 97, 197],
    [7, 97, 199],
    [7, 97, 211],
    [7, 97, 223],
    [7, 97, 227],
    [7, 97, 229],
    [7, 97, 233],
    [7, 97, 239],
    [7, 101, 103],
    [7, 101, 107],
    [7, 101, 109],
    [7, 101, 113],
    [7, 101, 127],
    [7, 101, 131],
    [7, 101, 137],
    [7, 101, 139],
    [7, 101, 149],
    [7, 101, 151],
    [7, 101, 157],
    [7, 101, 163],
    [7, 101, 167],
    [7, 101, 173],
    [7, 101, 179],
    [7, 101, 181],
    [7, 101, 191],
    [7, 101, 193],
    [7, 101, 197],
    [7, 101, 199],
    [7, 101, 211],
    [7, 101, 223],
    [7, 101, 227],
    [7, 101, 229]]

theorem k4PrefixGroup0062_support_covered :
    k4PrefixGroup0062.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0062MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0062_passes :
    k4PrefixGroup0062.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0062_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0062_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0062_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0062_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0062NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0062TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0062_mask_primes_pass :
    k4PrefixGroup0062MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0062NormalLookup
        k4PrefixGroup0062TwistLookup) = true := by
  simp only [k4PrefixGroup0062MaskPrimes, List.all_append]
  rw [k4PrefixGroup0062_mask_group0000_passes]
  rw [k4PrefixGroup0062_mask_group0001_passes]
  rw [k4PrefixGroup0062_mask_group0002_passes]
  rw [k4PrefixGroup0062_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0062_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0062) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0062NormalLookup,
    k4PrefixGroup0062TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0062_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0062_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0062MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0062_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0062_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
