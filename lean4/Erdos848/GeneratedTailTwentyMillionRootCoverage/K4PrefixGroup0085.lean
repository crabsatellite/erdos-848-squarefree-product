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

def k4PrefixGroup0085NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0085TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0085MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0085 : List (List ℕ) :=
  [[13, 29, 269],
    [13, 29, 271],
    [13, 29, 277],
    [13, 29, 281],
    [13, 29, 283],
    [13, 29, 293],
    [13, 29, 307],
    [13, 29, 311],
    [13, 29, 313],
    [13, 29, 317],
    [13, 31, 37],
    [13, 31, 41],
    [13, 31, 43],
    [13, 31, 47],
    [13, 31, 53],
    [13, 31, 59],
    [13, 31, 61],
    [13, 31, 67],
    [13, 31, 71],
    [13, 31, 73],
    [13, 31, 79],
    [13, 31, 83],
    [13, 31, 89],
    [13, 31, 97],
    [13, 31, 101],
    [13, 31, 103],
    [13, 31, 107],
    [13, 31, 109],
    [13, 31, 113],
    [13, 31, 127],
    [13, 31, 131],
    [13, 31, 137],
    [13, 31, 139],
    [13, 31, 149],
    [13, 31, 151],
    [13, 31, 157],
    [13, 31, 163],
    [13, 31, 167],
    [13, 31, 173],
    [13, 31, 179],
    [13, 31, 181],
    [13, 31, 191],
    [13, 31, 193],
    [13, 31, 197],
    [13, 31, 199],
    [13, 31, 211],
    [13, 31, 223],
    [13, 31, 227],
    [13, 31, 229],
    [13, 31, 233],
    [13, 31, 239],
    [13, 31, 241],
    [13, 31, 251],
    [13, 31, 257],
    [13, 31, 263],
    [13, 31, 269],
    [13, 31, 271],
    [13, 31, 277],
    [13, 31, 281],
    [13, 31, 283],
    [13, 31, 293],
    [13, 31, 307],
    [13, 31, 311],
    [13, 31, 313]]

theorem k4PrefixGroup0085_support_covered :
    k4PrefixGroup0085.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0085MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0085_passes :
    k4PrefixGroup0085.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0085NormalLookup
        k4PrefixGroup0085TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0085_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0085NormalLookup
        k4PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0085_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0085NormalLookup
        k4PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0085_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0085NormalLookup
        k4PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0085_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0085NormalLookup
        k4PrefixGroup0085TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0085NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0085TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0085_mask_primes_pass :
    k4PrefixGroup0085MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0085NormalLookup
        k4PrefixGroup0085TwistLookup) = true := by
  simp only [k4PrefixGroup0085MaskPrimes, List.all_append]
  rw [k4PrefixGroup0085_mask_group0000_passes]
  rw [k4PrefixGroup0085_mask_group0001_passes]
  rw [k4PrefixGroup0085_mask_group0002_passes]
  rw [k4PrefixGroup0085_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0085_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0085) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0085NormalLookup,
    k4PrefixGroup0085TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0085_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0085_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0085MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0085_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0085_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
