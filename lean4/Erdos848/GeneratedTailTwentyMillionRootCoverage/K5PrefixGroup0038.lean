import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0038NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0038TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0038MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0038 : List (List ℕ) :=
  [[7, 11, 13, 173],
    [7, 11, 13, 179],
    [7, 11, 13, 181],
    [7, 11, 13, 191],
    [7, 11, 13, 193],
    [7, 11, 13, 197],
    [7, 11, 17, 19],
    [7, 11, 17, 23],
    [7, 11, 17, 29],
    [7, 11, 17, 31],
    [7, 11, 17, 37],
    [7, 11, 17, 41],
    [7, 11, 17, 43],
    [7, 11, 17, 47],
    [7, 11, 17, 53],
    [7, 11, 17, 59],
    [7, 11, 17, 61],
    [7, 11, 17, 67],
    [7, 11, 17, 71],
    [7, 11, 17, 73],
    [7, 11, 17, 79],
    [7, 11, 17, 83],
    [7, 11, 17, 89],
    [7, 11, 17, 97],
    [7, 11, 17, 101],
    [7, 11, 17, 103],
    [7, 11, 17, 107],
    [7, 11, 17, 109],
    [7, 11, 17, 113],
    [7, 11, 17, 127],
    [7, 11, 17, 131],
    [7, 11, 17, 137],
    [7, 11, 17, 139],
    [7, 11, 17, 149],
    [7, 11, 17, 151],
    [7, 11, 17, 157],
    [7, 11, 17, 163],
    [7, 11, 17, 167],
    [7, 11, 19, 23],
    [7, 11, 19, 29],
    [7, 11, 19, 31],
    [7, 11, 19, 37],
    [7, 11, 19, 41],
    [7, 11, 19, 43],
    [7, 11, 19, 47],
    [7, 11, 19, 53],
    [7, 11, 19, 59],
    [7, 11, 19, 61],
    [7, 11, 19, 67],
    [7, 11, 19, 71],
    [7, 11, 19, 73],
    [7, 11, 19, 79],
    [7, 11, 19, 83],
    [7, 11, 19, 89],
    [7, 11, 19, 97],
    [7, 11, 19, 101],
    [7, 11, 19, 103],
    [7, 11, 19, 107],
    [7, 11, 19, 109],
    [7, 11, 19, 113],
    [7, 11, 19, 127],
    [7, 11, 19, 131],
    [7, 11, 19, 137],
    [7, 11, 19, 139]]

theorem k5PrefixGroup0038_support_covered :
    k5PrefixGroup0038.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0038MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0038_passes :
    k5PrefixGroup0038.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0038NormalLookup
        k5PrefixGroup0038TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0038_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0038NormalLookup
        k5PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0038_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0038NormalLookup
        k5PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0038_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0038NormalLookup
        k5PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0038_mask_primes_pass :
    k5PrefixGroup0038MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0038NormalLookup
        k5PrefixGroup0038TwistLookup) = true := by
  simp only [k5PrefixGroup0038MaskPrimes, List.all_append]
  rw [k5PrefixGroup0038_mask_group0000_passes]
  rw [k5PrefixGroup0038_mask_group0001_passes]
  rw [k5PrefixGroup0038_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0038_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0038) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0038NormalLookup,
    k5PrefixGroup0038TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0038_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0038_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0038MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0038_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0038_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
