import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0092NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0092TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0092MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0092 : List (List ℕ) :=
  [[13, 83, 157],
    [13, 83, 163],
    [13, 83, 167],
    [13, 83, 173],
    [13, 83, 179],
    [13, 83, 181],
    [13, 83, 191],
    [13, 89, 97],
    [13, 89, 101],
    [13, 89, 103],
    [13, 89, 107],
    [13, 89, 109],
    [13, 89, 113],
    [13, 89, 127],
    [13, 89, 131],
    [13, 89, 137],
    [13, 89, 139],
    [13, 89, 149],
    [13, 89, 151],
    [13, 89, 157],
    [13, 89, 163],
    [13, 89, 167],
    [13, 89, 173],
    [13, 89, 179],
    [13, 89, 181],
    [13, 97, 101],
    [13, 97, 103],
    [13, 97, 107],
    [13, 97, 109],
    [13, 97, 113],
    [13, 97, 127],
    [13, 97, 131],
    [13, 97, 137],
    [13, 97, 139],
    [13, 97, 149],
    [13, 97, 151],
    [13, 97, 157],
    [13, 97, 163],
    [13, 97, 167],
    [13, 97, 173],
    [13, 101, 103],
    [13, 101, 107],
    [13, 101, 109],
    [13, 101, 113],
    [13, 101, 127],
    [13, 101, 131],
    [13, 101, 137],
    [13, 101, 139],
    [13, 101, 149],
    [13, 101, 151],
    [13, 101, 157],
    [13, 101, 163],
    [13, 101, 167],
    [13, 103, 107],
    [13, 103, 109],
    [13, 103, 113],
    [13, 103, 127],
    [13, 103, 131],
    [13, 103, 137],
    [13, 103, 139],
    [13, 103, 149],
    [13, 103, 151],
    [13, 103, 157],
    [13, 103, 163]]

theorem k4PrefixGroup0092_support_covered :
    k4PrefixGroup0092.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0092MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0092_passes :
    k4PrefixGroup0092.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0092NormalLookup
        k4PrefixGroup0092TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0092_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0092NormalLookup
        k4PrefixGroup0092TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0092NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0092TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0092_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0092NormalLookup
        k4PrefixGroup0092TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0092NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0092TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0092_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0092NormalLookup
        k4PrefixGroup0092TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0092NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0092TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0092_mask_primes_pass :
    k4PrefixGroup0092MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0092NormalLookup
        k4PrefixGroup0092TwistLookup) = true := by
  simp only [k4PrefixGroup0092MaskPrimes, List.all_append]
  rw [k4PrefixGroup0092_mask_group0000_passes]
  rw [k4PrefixGroup0092_mask_group0001_passes]
  rw [k4PrefixGroup0092_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0092_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0092) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0092NormalLookup,
    k4PrefixGroup0092TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0092_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0092_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0092MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0092_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0092_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
