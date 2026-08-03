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

def k4PrefixGroup0086NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0086TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0086MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0086 : List (List ℕ) :=
  [[13, 37, 41],
    [13, 37, 43],
    [13, 37, 47],
    [13, 37, 53],
    [13, 37, 59],
    [13, 37, 61],
    [13, 37, 67],
    [13, 37, 71],
    [13, 37, 73],
    [13, 37, 79],
    [13, 37, 83],
    [13, 37, 89],
    [13, 37, 97],
    [13, 37, 101],
    [13, 37, 103],
    [13, 37, 107],
    [13, 37, 109],
    [13, 37, 113],
    [13, 37, 127],
    [13, 37, 131],
    [13, 37, 137],
    [13, 37, 139],
    [13, 37, 149],
    [13, 37, 151],
    [13, 37, 157],
    [13, 37, 163],
    [13, 37, 167],
    [13, 37, 173],
    [13, 37, 179],
    [13, 37, 181],
    [13, 37, 191],
    [13, 37, 193],
    [13, 37, 197],
    [13, 37, 199],
    [13, 37, 211],
    [13, 37, 223],
    [13, 37, 227],
    [13, 37, 229],
    [13, 37, 233],
    [13, 37, 239],
    [13, 37, 241],
    [13, 37, 251],
    [13, 37, 257],
    [13, 37, 263],
    [13, 37, 269],
    [13, 37, 271],
    [13, 37, 277],
    [13, 37, 281],
    [13, 37, 283],
    [13, 41, 43],
    [13, 41, 47],
    [13, 41, 53],
    [13, 41, 59],
    [13, 41, 61],
    [13, 41, 67],
    [13, 41, 71],
    [13, 41, 73],
    [13, 41, 79],
    [13, 41, 83],
    [13, 41, 89],
    [13, 41, 97],
    [13, 41, 101],
    [13, 41, 103],
    [13, 41, 107]]

theorem k4PrefixGroup0086_support_covered :
    k4PrefixGroup0086.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0086MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0086_passes :
    k4PrefixGroup0086.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0086NormalLookup
        k4PrefixGroup0086TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0086_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0086NormalLookup
        k4PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0086_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0086NormalLookup
        k4PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0086_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0086NormalLookup
        k4PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0086_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0086NormalLookup
        k4PrefixGroup0086TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0086NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0086TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0086_mask_primes_pass :
    k4PrefixGroup0086MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0086NormalLookup
        k4PrefixGroup0086TwistLookup) = true := by
  simp only [k4PrefixGroup0086MaskPrimes, List.all_append]
  rw [k4PrefixGroup0086_mask_group0000_passes]
  rw [k4PrefixGroup0086_mask_group0001_passes]
  rw [k4PrefixGroup0086_mask_group0002_passes]
  rw [k4PrefixGroup0086_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0086_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0086) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0086NormalLookup,
    k4PrefixGroup0086TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0086_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0086_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0086MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0086_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0086_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
