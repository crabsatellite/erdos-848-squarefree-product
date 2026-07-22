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

def k4PrefixGroup0060NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0060TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0060MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0060 : List (List ℕ) :=
  [[7, 71, 241],
    [7, 71, 251],
    [7, 71, 257],
    [7, 71, 263],
    [7, 71, 269],
    [7, 71, 271],
    [7, 71, 277],
    [7, 71, 281],
    [7, 73, 79],
    [7, 73, 83],
    [7, 73, 89],
    [7, 73, 97],
    [7, 73, 101],
    [7, 73, 103],
    [7, 73, 107],
    [7, 73, 109],
    [7, 73, 113],
    [7, 73, 127],
    [7, 73, 131],
    [7, 73, 137],
    [7, 73, 139],
    [7, 73, 149],
    [7, 73, 151],
    [7, 73, 157],
    [7, 73, 163],
    [7, 73, 167],
    [7, 73, 173],
    [7, 73, 179],
    [7, 73, 181],
    [7, 73, 191],
    [7, 73, 193],
    [7, 73, 197],
    [7, 73, 199],
    [7, 73, 211],
    [7, 73, 223],
    [7, 73, 227],
    [7, 73, 229],
    [7, 73, 233],
    [7, 73, 239],
    [7, 73, 241],
    [7, 73, 251],
    [7, 73, 257],
    [7, 73, 263],
    [7, 73, 269],
    [7, 73, 271],
    [7, 73, 277],
    [7, 79, 83],
    [7, 79, 89],
    [7, 79, 97],
    [7, 79, 101],
    [7, 79, 103],
    [7, 79, 107],
    [7, 79, 109],
    [7, 79, 113],
    [7, 79, 127],
    [7, 79, 131],
    [7, 79, 137],
    [7, 79, 139],
    [7, 79, 149],
    [7, 79, 151],
    [7, 79, 157],
    [7, 79, 163],
    [7, 79, 167],
    [7, 79, 173]]

theorem k4PrefixGroup0060_support_covered :
    k4PrefixGroup0060.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0060MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0060_passes :
    k4PrefixGroup0060.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0060_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0060_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0060_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0060_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0060NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0060TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0060_mask_primes_pass :
    k4PrefixGroup0060MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0060NormalLookup
        k4PrefixGroup0060TwistLookup) = true := by
  simp only [k4PrefixGroup0060MaskPrimes, List.all_append]
  rw [k4PrefixGroup0060_mask_group0000_passes]
  rw [k4PrefixGroup0060_mask_group0001_passes]
  rw [k4PrefixGroup0060_mask_group0002_passes]
  rw [k4PrefixGroup0060_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0060_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0060) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0060NormalLookup,
    k4PrefixGroup0060TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0060_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0060_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0060MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0060_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0060_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
