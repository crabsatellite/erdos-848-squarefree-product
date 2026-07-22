import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0100NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0100TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0100MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0100 : List (List ℕ) :=
  [[17, 59, 157],
    [17, 59, 163],
    [17, 59, 167],
    [17, 59, 173],
    [17, 59, 179],
    [17, 59, 181],
    [17, 59, 191],
    [17, 59, 193],
    [17, 59, 197],
    [17, 61, 67],
    [17, 61, 71],
    [17, 61, 73],
    [17, 61, 79],
    [17, 61, 83],
    [17, 61, 89],
    [17, 61, 97],
    [17, 61, 101],
    [17, 61, 103],
    [17, 61, 107],
    [17, 61, 109],
    [17, 61, 113],
    [17, 61, 127],
    [17, 61, 131],
    [17, 61, 137],
    [17, 61, 139],
    [17, 61, 149],
    [17, 61, 151],
    [17, 61, 157],
    [17, 61, 163],
    [17, 61, 167],
    [17, 61, 173],
    [17, 61, 179],
    [17, 61, 181],
    [17, 61, 191],
    [17, 61, 193],
    [17, 67, 71],
    [17, 67, 73],
    [17, 67, 79],
    [17, 67, 83],
    [17, 67, 89],
    [17, 67, 97],
    [17, 67, 101],
    [17, 67, 103],
    [17, 67, 107],
    [17, 67, 109],
    [17, 67, 113],
    [17, 67, 127],
    [17, 67, 131],
    [17, 67, 137],
    [17, 67, 139],
    [17, 67, 149],
    [17, 67, 151],
    [17, 67, 157],
    [17, 67, 163],
    [17, 67, 167],
    [17, 67, 173],
    [17, 67, 179],
    [17, 67, 181],
    [17, 71, 73],
    [17, 71, 79],
    [17, 71, 83],
    [17, 71, 89],
    [17, 71, 97],
    [17, 71, 101]]

theorem k4PrefixGroup0100_support_covered :
    k4PrefixGroup0100.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0100MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0100_passes :
    k4PrefixGroup0100.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0100NormalLookup
        k4PrefixGroup0100TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0100_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0100NormalLookup
        k4PrefixGroup0100TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0100NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0100TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0100_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0100NormalLookup
        k4PrefixGroup0100TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0100NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0100TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0100_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0100NormalLookup
        k4PrefixGroup0100TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0100NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0100TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0100_mask_primes_pass :
    k4PrefixGroup0100MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0100NormalLookup
        k4PrefixGroup0100TwistLookup) = true := by
  simp only [k4PrefixGroup0100MaskPrimes, List.all_append]
  rw [k4PrefixGroup0100_mask_group0000_passes]
  rw [k4PrefixGroup0100_mask_group0001_passes]
  rw [k4PrefixGroup0100_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0100_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0100) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0100NormalLookup,
    k4PrefixGroup0100TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0100_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0100_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0100MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0100_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0100_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
