import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0102NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0102TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0102MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0102 : List (List ℕ) :=
  [[17, 83, 157],
    [17, 83, 163],
    [17, 89, 97],
    [17, 89, 101],
    [17, 89, 103],
    [17, 89, 107],
    [17, 89, 109],
    [17, 89, 113],
    [17, 89, 127],
    [17, 89, 131],
    [17, 89, 137],
    [17, 89, 139],
    [17, 89, 149],
    [17, 89, 151],
    [17, 89, 157],
    [17, 97, 101],
    [17, 97, 103],
    [17, 97, 107],
    [17, 97, 109],
    [17, 97, 113],
    [17, 97, 127],
    [17, 97, 131],
    [17, 97, 137],
    [17, 97, 139],
    [17, 97, 149],
    [17, 97, 151],
    [17, 101, 103],
    [17, 101, 107],
    [17, 101, 109],
    [17, 101, 113],
    [17, 101, 127],
    [17, 101, 131],
    [17, 101, 137],
    [17, 101, 139],
    [17, 101, 149],
    [17, 103, 107],
    [17, 103, 109],
    [17, 103, 113],
    [17, 103, 127],
    [17, 103, 131],
    [17, 103, 137],
    [17, 103, 139],
    [17, 103, 149],
    [17, 107, 109],
    [17, 107, 113],
    [17, 107, 127],
    [17, 107, 131],
    [17, 107, 137],
    [17, 107, 139],
    [17, 109, 113],
    [17, 109, 127],
    [17, 109, 131],
    [17, 109, 137],
    [17, 109, 139],
    [17, 113, 127],
    [17, 113, 131],
    [17, 113, 137],
    [17, 113, 139],
    [17, 127, 131],
    [19, 23, 29],
    [19, 23, 31],
    [19, 23, 37],
    [19, 23, 41],
    [19, 23, 43]]

theorem k4PrefixGroup0102_support_covered :
    k4PrefixGroup0102.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0102MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0102_passes :
    k4PrefixGroup0102.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0102NormalLookup
        k4PrefixGroup0102TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0102_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0102NormalLookup
        k4PrefixGroup0102TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0102NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0102TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0102_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0102NormalLookup
        k4PrefixGroup0102TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0102NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0102TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0102_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0102NormalLookup
        k4PrefixGroup0102TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0102NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0102TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0102_mask_primes_pass :
    k4PrefixGroup0102MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0102NormalLookup
        k4PrefixGroup0102TwistLookup) = true := by
  simp only [k4PrefixGroup0102MaskPrimes, List.all_append]
  rw [k4PrefixGroup0102_mask_group0000_passes]
  rw [k4PrefixGroup0102_mask_group0001_passes]
  rw [k4PrefixGroup0102_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0102_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0102) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0102NormalLookup,
    k4PrefixGroup0102TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0102_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0102_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0102MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0102_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0102_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
