import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0004

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0037NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  if p ≤ 421 then rootNormalQrMaskWords0004 p else
  []

def k4PrefixGroup0037TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  if p ≤ 421 then rootTwistQrMaskWords0004 p else
  []

def k4PrefixGroup0037MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003 ++
  rootMaskSemanticGroup0004

def k4PrefixGroup0037 : List (List ℕ) :=
  [[3, 113, 257],
    [3, 113, 263],
    [3, 113, 269],
    [3, 113, 271],
    [3, 113, 277],
    [3, 113, 281],
    [3, 113, 283],
    [3, 113, 293],
    [3, 113, 307],
    [3, 113, 311],
    [3, 113, 313],
    [3, 113, 317],
    [3, 113, 331],
    [3, 113, 337],
    [3, 127, 131],
    [3, 127, 137],
    [3, 127, 139],
    [3, 127, 149],
    [3, 127, 151],
    [3, 127, 157],
    [3, 127, 163],
    [3, 127, 167],
    [3, 127, 173],
    [3, 127, 179],
    [3, 127, 181],
    [3, 127, 191],
    [3, 127, 193],
    [3, 127, 197],
    [3, 127, 199],
    [3, 127, 211],
    [3, 127, 223],
    [3, 127, 227],
    [3, 127, 229],
    [3, 127, 233],
    [3, 127, 239],
    [3, 127, 241],
    [3, 127, 251],
    [3, 127, 257],
    [3, 127, 263],
    [3, 127, 269],
    [3, 127, 271],
    [3, 127, 277],
    [3, 127, 281],
    [3, 127, 283],
    [3, 127, 293],
    [3, 127, 307],
    [3, 127, 311],
    [3, 127, 313],
    [3, 127, 317],
    [3, 131, 137],
    [3, 131, 139],
    [3, 131, 149],
    [3, 131, 151],
    [3, 131, 157],
    [3, 131, 163],
    [3, 131, 167],
    [3, 131, 173],
    [3, 131, 179],
    [3, 131, 181],
    [3, 131, 191],
    [3, 131, 193],
    [3, 131, 197],
    [3, 131, 199],
    [3, 131, 211]]

theorem k4PrefixGroup0037_support_covered :
    k4PrefixGroup0037.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0037MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0037_passes :
    k4PrefixGroup0037.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0037_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0037_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0037_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0037_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0037_mask_group0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0004_passes) p hp
  have hnormal : k4PrefixGroup0037NormalLookup p =
      rootNormalQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0037TwistLookup p =
      rootTwistQrMaskWords0004 p := by
    simp only [rootMaskSemanticGroup0004,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0037_mask_primes_pass :
    k4PrefixGroup0037MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0037NormalLookup
        k4PrefixGroup0037TwistLookup) = true := by
  simp only [k4PrefixGroup0037MaskPrimes, List.all_append]
  rw [k4PrefixGroup0037_mask_group0000_passes]
  rw [k4PrefixGroup0037_mask_group0001_passes]
  rw [k4PrefixGroup0037_mask_group0002_passes]
  rw [k4PrefixGroup0037_mask_group0003_passes]
  rw [k4PrefixGroup0037_mask_group0004_passes]
  rfl

theorem k4PrefixGroup0037_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0037) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0037NormalLookup,
    k4PrefixGroup0037TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0037_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0037_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0037MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0037_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0037_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
