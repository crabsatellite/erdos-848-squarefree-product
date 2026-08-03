import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0121NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0121TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0121MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0121 : List (List ℕ) :=
  [[31, 37, 163],
    [31, 37, 167],
    [31, 37, 173],
    [31, 37, 179],
    [31, 37, 181],
    [31, 41, 43],
    [31, 41, 47],
    [31, 41, 53],
    [31, 41, 59],
    [31, 41, 61],
    [31, 41, 67],
    [31, 41, 71],
    [31, 41, 73],
    [31, 41, 79],
    [31, 41, 83],
    [31, 41, 89],
    [31, 41, 97],
    [31, 41, 101],
    [31, 41, 103],
    [31, 41, 107],
    [31, 41, 109],
    [31, 41, 113],
    [31, 41, 127],
    [31, 41, 131],
    [31, 41, 137],
    [31, 41, 139],
    [31, 41, 149],
    [31, 41, 151],
    [31, 41, 157],
    [31, 41, 163],
    [31, 41, 167],
    [31, 41, 173],
    [31, 43, 47],
    [31, 43, 53],
    [31, 43, 59],
    [31, 43, 61],
    [31, 43, 67],
    [31, 43, 71],
    [31, 43, 73],
    [31, 43, 79],
    [31, 43, 83],
    [31, 43, 89],
    [31, 43, 97],
    [31, 43, 101],
    [31, 43, 103],
    [31, 43, 107],
    [31, 43, 109],
    [31, 43, 113],
    [31, 43, 127],
    [31, 43, 131],
    [31, 43, 137],
    [31, 43, 139],
    [31, 43, 149],
    [31, 43, 151],
    [31, 43, 157],
    [31, 43, 163],
    [31, 43, 167],
    [31, 47, 53],
    [31, 47, 59],
    [31, 47, 61],
    [31, 47, 67],
    [31, 47, 71],
    [31, 47, 73],
    [31, 47, 79]]

theorem k4PrefixGroup0121_support_covered :
    k4PrefixGroup0121.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0121MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0121_passes :
    k4PrefixGroup0121.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0121NormalLookup
        k4PrefixGroup0121TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0121_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0121NormalLookup
        k4PrefixGroup0121TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0121NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0121TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0121_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0121NormalLookup
        k4PrefixGroup0121TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0121NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0121TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0121_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0121NormalLookup
        k4PrefixGroup0121TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0121NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0121TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0121_mask_primes_pass :
    k4PrefixGroup0121MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0121NormalLookup
        k4PrefixGroup0121TwistLookup) = true := by
  simp only [k4PrefixGroup0121MaskPrimes, List.all_append]
  rw [k4PrefixGroup0121_mask_group0000_passes]
  rw [k4PrefixGroup0121_mask_group0001_passes]
  rw [k4PrefixGroup0121_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0121_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0121) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0121NormalLookup,
    k4PrefixGroup0121TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0121_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0121_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0121MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0121_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0121_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
