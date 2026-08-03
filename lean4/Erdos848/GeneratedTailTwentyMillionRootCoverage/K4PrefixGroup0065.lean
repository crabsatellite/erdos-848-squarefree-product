import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0065NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  []

def k4PrefixGroup0065TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  []

def k4PrefixGroup0065MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002

def k4PrefixGroup0065 : List (List ℕ) :=
  [[7, 139, 167],
    [7, 139, 173],
    [7, 139, 179],
    [7, 139, 181],
    [7, 139, 191],
    [7, 139, 193],
    [7, 139, 197],
    [7, 149, 151],
    [7, 149, 157],
    [7, 149, 163],
    [7, 149, 167],
    [7, 149, 173],
    [7, 149, 179],
    [7, 149, 181],
    [7, 149, 191],
    [7, 149, 193],
    [7, 151, 157],
    [7, 151, 163],
    [7, 151, 167],
    [7, 151, 173],
    [7, 151, 179],
    [7, 151, 181],
    [7, 151, 191],
    [7, 157, 163],
    [7, 157, 167],
    [7, 157, 173],
    [7, 157, 179],
    [7, 157, 181],
    [7, 163, 167],
    [7, 163, 173],
    [7, 163, 179],
    [7, 163, 181],
    [7, 167, 173],
    [7, 167, 179],
    [7, 173, 179],
    [11, 13, 17],
    [11, 13, 19],
    [11, 13, 23],
    [11, 13, 29],
    [11, 13, 31],
    [11, 13, 37],
    [11, 13, 41],
    [11, 13, 43],
    [11, 13, 47],
    [11, 13, 53],
    [11, 13, 59],
    [11, 13, 61],
    [11, 13, 67],
    [11, 13, 71],
    [11, 13, 73],
    [11, 13, 79],
    [11, 13, 83],
    [11, 13, 89],
    [11, 13, 97],
    [11, 13, 101],
    [11, 13, 103],
    [11, 13, 107],
    [11, 13, 109],
    [11, 13, 113],
    [11, 13, 127],
    [11, 13, 131],
    [11, 13, 137],
    [11, 13, 139],
    [11, 13, 149]]

theorem k4PrefixGroup0065_support_covered :
    k4PrefixGroup0065.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0065MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0065_passes :
    k4PrefixGroup0065.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0065_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0065NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0065TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0065_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0065NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0065TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0065_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0065NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0065TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0065_mask_primes_pass :
    k4PrefixGroup0065MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0065NormalLookup
        k4PrefixGroup0065TwistLookup) = true := by
  simp only [k4PrefixGroup0065MaskPrimes, List.all_append]
  rw [k4PrefixGroup0065_mask_group0000_passes]
  rw [k4PrefixGroup0065_mask_group0001_passes]
  rw [k4PrefixGroup0065_mask_group0002_passes]
  rfl

theorem k4PrefixGroup0065_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0065) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0065NormalLookup,
    k4PrefixGroup0065TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0065_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0065_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0065MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0065_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0065_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
