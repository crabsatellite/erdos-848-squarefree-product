import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0040NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0040TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0040MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0040 : List (List ℕ) :=
  [[3, 157, 163],
    [3, 157, 167],
    [3, 157, 173],
    [3, 157, 179],
    [3, 157, 181],
    [3, 157, 191],
    [3, 157, 193],
    [3, 157, 197],
    [3, 157, 199],
    [3, 157, 211],
    [3, 157, 223],
    [3, 157, 227],
    [3, 157, 229],
    [3, 157, 233],
    [3, 157, 239],
    [3, 157, 241],
    [3, 157, 251],
    [3, 157, 257],
    [3, 157, 263],
    [3, 157, 269],
    [3, 157, 271],
    [3, 157, 277],
    [3, 157, 281],
    [3, 157, 283],
    [3, 163, 167],
    [3, 163, 173],
    [3, 163, 179],
    [3, 163, 181],
    [3, 163, 191],
    [3, 163, 193],
    [3, 163, 197],
    [3, 163, 199],
    [3, 163, 211],
    [3, 163, 223],
    [3, 163, 227],
    [3, 163, 229],
    [3, 163, 233],
    [3, 163, 239],
    [3, 163, 241],
    [3, 163, 251],
    [3, 163, 257],
    [3, 163, 263],
    [3, 163, 269],
    [3, 163, 271],
    [3, 163, 277],
    [3, 163, 281],
    [3, 167, 173],
    [3, 167, 179],
    [3, 167, 181],
    [3, 167, 191],
    [3, 167, 193],
    [3, 167, 197],
    [3, 167, 199],
    [3, 167, 211],
    [3, 167, 223],
    [3, 167, 227],
    [3, 167, 229],
    [3, 167, 233],
    [3, 167, 239],
    [3, 167, 241],
    [3, 167, 251],
    [3, 167, 257],
    [3, 167, 263],
    [3, 167, 269]]

theorem k4PrefixGroup0040_support_covered :
    k4PrefixGroup0040.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0040MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0040_passes :
    k4PrefixGroup0040.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0040_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0040NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0040TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0040_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0040NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0040TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0040_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0040NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0040TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0040_mask_primes_pass :
    k4PrefixGroup0040MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0040NormalLookup
        k4PrefixGroup0040TwistLookup) = true := by
  simp only [k4PrefixGroup0040MaskPrimes, List.all_append]
  rw [k4PrefixGroup0040_mask_group0000_passes]
  rw [k4PrefixGroup0040_mask_group0002_passes]
  rw [k4PrefixGroup0040_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0040_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0040) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0040NormalLookup,
    k4PrefixGroup0040TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0040_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0040_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0040MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0040_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0040_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
