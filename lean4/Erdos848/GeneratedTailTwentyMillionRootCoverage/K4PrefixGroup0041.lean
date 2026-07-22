import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0003

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0041NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0041TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0041MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0041 : List (List ℕ) :=
  [[3, 167, 271],
    [3, 167, 277],
    [3, 167, 281],
    [3, 173, 179],
    [3, 173, 181],
    [3, 173, 191],
    [3, 173, 193],
    [3, 173, 197],
    [3, 173, 199],
    [3, 173, 211],
    [3, 173, 223],
    [3, 173, 227],
    [3, 173, 229],
    [3, 173, 233],
    [3, 173, 239],
    [3, 173, 241],
    [3, 173, 251],
    [3, 173, 257],
    [3, 173, 263],
    [3, 173, 269],
    [3, 173, 271],
    [3, 179, 181],
    [3, 179, 191],
    [3, 179, 193],
    [3, 179, 197],
    [3, 179, 199],
    [3, 179, 211],
    [3, 179, 223],
    [3, 179, 227],
    [3, 179, 229],
    [3, 179, 233],
    [3, 179, 239],
    [3, 179, 241],
    [3, 179, 251],
    [3, 179, 257],
    [3, 179, 263],
    [3, 179, 269],
    [3, 181, 191],
    [3, 181, 193],
    [3, 181, 197],
    [3, 181, 199],
    [3, 181, 211],
    [3, 181, 223],
    [3, 181, 227],
    [3, 181, 229],
    [3, 181, 233],
    [3, 181, 239],
    [3, 181, 241],
    [3, 181, 251],
    [3, 181, 257],
    [3, 181, 263],
    [3, 181, 269],
    [3, 191, 193],
    [3, 191, 197],
    [3, 191, 199],
    [3, 191, 211],
    [3, 191, 223],
    [3, 191, 227],
    [3, 191, 229],
    [3, 191, 233],
    [3, 191, 239],
    [3, 191, 241],
    [3, 191, 251],
    [3, 191, 257]]

theorem k4PrefixGroup0041_support_covered :
    k4PrefixGroup0041.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0041MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0041_passes :
    k4PrefixGroup0041.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0041NormalLookup
        k4PrefixGroup0041TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0041_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0041NormalLookup
        k4PrefixGroup0041TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0041NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0041TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0041_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0041NormalLookup
        k4PrefixGroup0041TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0041NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0041TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0041_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0041NormalLookup
        k4PrefixGroup0041TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0041NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0041TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0041_mask_primes_pass :
    k4PrefixGroup0041MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0041NormalLookup
        k4PrefixGroup0041TwistLookup) = true := by
  simp only [k4PrefixGroup0041MaskPrimes, List.all_append]
  rw [k4PrefixGroup0041_mask_group0000_passes]
  rw [k4PrefixGroup0041_mask_group0002_passes]
  rw [k4PrefixGroup0041_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0041_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0041) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0041NormalLookup,
    k4PrefixGroup0041TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0041_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0041_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0041MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0041_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0041_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
