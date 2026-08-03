import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0008NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k5PrefixGroup0008TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k5PrefixGroup0008MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k5PrefixGroup0008 : List (List ℕ) :=
  [[3, 7, 47, 109],
    [3, 7, 47, 113],
    [3, 7, 47, 127],
    [3, 7, 47, 131],
    [3, 7, 47, 137],
    [3, 7, 47, 139],
    [3, 7, 47, 149],
    [3, 7, 47, 151],
    [3, 7, 47, 157],
    [3, 7, 47, 163],
    [3, 7, 47, 167],
    [3, 7, 47, 173],
    [3, 7, 47, 179],
    [3, 7, 47, 181],
    [3, 7, 47, 191],
    [3, 7, 47, 193],
    [3, 7, 47, 197],
    [3, 7, 53, 59],
    [3, 7, 53, 61],
    [3, 7, 53, 67],
    [3, 7, 53, 71],
    [3, 7, 53, 73],
    [3, 7, 53, 79],
    [3, 7, 53, 83],
    [3, 7, 53, 89],
    [3, 7, 53, 97],
    [3, 7, 53, 101],
    [3, 7, 53, 103],
    [3, 7, 53, 107],
    [3, 7, 53, 109],
    [3, 7, 53, 113],
    [3, 7, 53, 127],
    [3, 7, 53, 131],
    [3, 7, 53, 137],
    [3, 7, 53, 139],
    [3, 7, 53, 149],
    [3, 7, 53, 151],
    [3, 7, 53, 157],
    [3, 7, 53, 163],
    [3, 7, 53, 167],
    [3, 7, 53, 173],
    [3, 7, 53, 179],
    [3, 7, 53, 181],
    [3, 7, 59, 61],
    [3, 7, 59, 67],
    [3, 7, 59, 71],
    [3, 7, 59, 73],
    [3, 7, 59, 79],
    [3, 7, 59, 83],
    [3, 7, 59, 89],
    [3, 7, 59, 97],
    [3, 7, 59, 101],
    [3, 7, 59, 103],
    [3, 7, 59, 107],
    [3, 7, 59, 109],
    [3, 7, 59, 113],
    [3, 7, 59, 127],
    [3, 7, 59, 131],
    [3, 7, 59, 137],
    [3, 7, 59, 139],
    [3, 7, 59, 149],
    [3, 7, 59, 151],
    [3, 7, 59, 157],
    [3, 7, 59, 163]]

theorem k5PrefixGroup0008_support_covered :
    k5PrefixGroup0008.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0008MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0008_passes :
    k5PrefixGroup0008.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0008_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0008_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0008_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k5PrefixGroup0008NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0008TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0008_mask_primes_pass :
    k5PrefixGroup0008MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0008NormalLookup
        k5PrefixGroup0008TwistLookup) = true := by
  simp only [k5PrefixGroup0008MaskPrimes, List.all_append]
  rw [k5PrefixGroup0008_mask_group0000_passes]
  rw [k5PrefixGroup0008_mask_group0001_passes]
  rw [k5PrefixGroup0008_mask_group0002_passes]
  rfl

theorem k5PrefixGroup0008_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0008) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0008NormalLookup,
    k5PrefixGroup0008TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0008_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0008_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0008MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0008_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0008_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
