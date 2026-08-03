import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0131NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k4PrefixGroup0131TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k4PrefixGroup0131MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k4PrefixGroup0131 : List (List ℕ) :=
  [[47, 73, 103],
    [47, 79, 83],
    [47, 79, 89],
    [47, 79, 97],
    [47, 79, 101],
    [47, 83, 89],
    [47, 83, 97],
    [53, 59, 61],
    [53, 59, 67],
    [53, 59, 71],
    [53, 59, 73],
    [53, 59, 79],
    [53, 59, 83],
    [53, 59, 89],
    [53, 59, 97],
    [53, 59, 101],
    [53, 59, 103],
    [53, 59, 107],
    [53, 59, 109],
    [53, 61, 67],
    [53, 61, 71],
    [53, 61, 73],
    [53, 61, 79],
    [53, 61, 83],
    [53, 61, 89],
    [53, 61, 97],
    [53, 61, 101],
    [53, 61, 103],
    [53, 61, 107],
    [53, 61, 109],
    [53, 67, 71],
    [53, 67, 73],
    [53, 67, 79],
    [53, 67, 83],
    [53, 67, 89],
    [53, 67, 97],
    [53, 67, 101],
    [53, 67, 103],
    [53, 71, 73],
    [53, 71, 79],
    [53, 71, 83],
    [53, 71, 89],
    [53, 71, 97],
    [53, 71, 101],
    [53, 73, 79],
    [53, 73, 83],
    [53, 73, 89],
    [53, 73, 97],
    [53, 79, 83],
    [53, 79, 89],
    [53, 83, 89],
    [59, 61, 67],
    [59, 61, 71],
    [59, 61, 73],
    [59, 61, 79],
    [59, 61, 83],
    [59, 61, 89],
    [59, 61, 97],
    [59, 61, 101],
    [59, 61, 103],
    [59, 67, 71],
    [59, 67, 73],
    [59, 67, 79],
    [59, 67, 83]]

theorem k4PrefixGroup0131_support_covered :
    k4PrefixGroup0131.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0131MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0131_passes :
    k4PrefixGroup0131.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0131NormalLookup
        k4PrefixGroup0131TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0131_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0131NormalLookup
        k4PrefixGroup0131TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0131NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0131TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0131_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0131NormalLookup
        k4PrefixGroup0131TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0131NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0131TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0131_mask_primes_pass :
    k4PrefixGroup0131MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0131NormalLookup
        k4PrefixGroup0131TwistLookup) = true := by
  simp only [k4PrefixGroup0131MaskPrimes, List.all_append]
  rw [k4PrefixGroup0131_mask_group0000_passes]
  rw [k4PrefixGroup0131_mask_group0001_passes]
  rfl

theorem k4PrefixGroup0131_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0131) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0131NormalLookup,
    k4PrefixGroup0131TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0131_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0131_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0131MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0131_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0131_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
