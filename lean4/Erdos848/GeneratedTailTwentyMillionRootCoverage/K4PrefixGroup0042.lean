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

def k4PrefixGroup0042NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0042TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0042MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0042 : List (List ℕ) :=
  [[3, 193, 197],
    [3, 193, 199],
    [3, 193, 211],
    [3, 193, 223],
    [3, 193, 227],
    [3, 193, 229],
    [3, 193, 233],
    [3, 193, 239],
    [3, 193, 241],
    [3, 193, 251],
    [3, 193, 257],
    [3, 197, 199],
    [3, 197, 211],
    [3, 197, 223],
    [3, 197, 227],
    [3, 197, 229],
    [3, 197, 233],
    [3, 197, 239],
    [3, 197, 241],
    [3, 197, 251],
    [3, 197, 257],
    [3, 199, 211],
    [3, 199, 223],
    [3, 199, 227],
    [3, 199, 229],
    [3, 199, 233],
    [3, 199, 239],
    [3, 199, 241],
    [3, 199, 251],
    [3, 211, 223],
    [3, 211, 227],
    [3, 211, 229],
    [3, 211, 233],
    [3, 211, 239],
    [3, 211, 241],
    [3, 223, 227],
    [3, 223, 229],
    [3, 223, 233],
    [3, 223, 239],
    [3, 227, 229],
    [3, 227, 233],
    [3, 227, 239],
    [3, 229, 233],
    [3, 229, 239],
    [7, 11, 13],
    [7, 11, 17],
    [7, 11, 19],
    [7, 11, 23],
    [7, 11, 29],
    [7, 11, 31],
    [7, 11, 37],
    [7, 11, 41],
    [7, 11, 43],
    [7, 11, 47],
    [7, 11, 53],
    [7, 11, 59],
    [7, 11, 61],
    [7, 11, 67],
    [7, 11, 71],
    [7, 11, 73],
    [7, 11, 79],
    [7, 11, 83],
    [7, 11, 89],
    [7, 11, 97]]

theorem k4PrefixGroup0042_support_covered :
    k4PrefixGroup0042.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0042MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0042_passes :
    k4PrefixGroup0042.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0042_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0042_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0042_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0042_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0042NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0042TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0042_mask_primes_pass :
    k4PrefixGroup0042MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0042NormalLookup
        k4PrefixGroup0042TwistLookup) = true := by
  simp only [k4PrefixGroup0042MaskPrimes, List.all_append]
  rw [k4PrefixGroup0042_mask_group0000_passes]
  rw [k4PrefixGroup0042_mask_group0001_passes]
  rw [k4PrefixGroup0042_mask_group0002_passes]
  rw [k4PrefixGroup0042_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0042_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0042) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0042NormalLookup,
    k4PrefixGroup0042TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0042_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0042_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0042MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0042_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0042_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
