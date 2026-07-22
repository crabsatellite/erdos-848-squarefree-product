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

def k4PrefixGroup0039NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0039TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0039MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0039 : List (List ℕ) :=
  [[3, 139, 233],
    [3, 139, 239],
    [3, 139, 241],
    [3, 139, 251],
    [3, 139, 257],
    [3, 139, 263],
    [3, 139, 269],
    [3, 139, 271],
    [3, 139, 277],
    [3, 139, 281],
    [3, 139, 283],
    [3, 139, 293],
    [3, 139, 307],
    [3, 149, 151],
    [3, 149, 157],
    [3, 149, 163],
    [3, 149, 167],
    [3, 149, 173],
    [3, 149, 179],
    [3, 149, 181],
    [3, 149, 191],
    [3, 149, 193],
    [3, 149, 197],
    [3, 149, 199],
    [3, 149, 211],
    [3, 149, 223],
    [3, 149, 227],
    [3, 149, 229],
    [3, 149, 233],
    [3, 149, 239],
    [3, 149, 241],
    [3, 149, 251],
    [3, 149, 257],
    [3, 149, 263],
    [3, 149, 269],
    [3, 149, 271],
    [3, 149, 277],
    [3, 149, 281],
    [3, 149, 283],
    [3, 151, 157],
    [3, 151, 163],
    [3, 151, 167],
    [3, 151, 173],
    [3, 151, 179],
    [3, 151, 181],
    [3, 151, 191],
    [3, 151, 193],
    [3, 151, 197],
    [3, 151, 199],
    [3, 151, 211],
    [3, 151, 223],
    [3, 151, 227],
    [3, 151, 229],
    [3, 151, 233],
    [3, 151, 239],
    [3, 151, 241],
    [3, 151, 251],
    [3, 151, 257],
    [3, 151, 263],
    [3, 151, 269],
    [3, 151, 271],
    [3, 151, 277],
    [3, 151, 281],
    [3, 151, 283]]

theorem k4PrefixGroup0039_support_covered :
    k4PrefixGroup0039.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0039MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0039_passes :
    k4PrefixGroup0039.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0039_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0039_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0039_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0039_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0039NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0039TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0039_mask_primes_pass :
    k4PrefixGroup0039MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0039NormalLookup
        k4PrefixGroup0039TwistLookup) = true := by
  simp only [k4PrefixGroup0039MaskPrimes, List.all_append]
  rw [k4PrefixGroup0039_mask_group0000_passes]
  rw [k4PrefixGroup0039_mask_group0001_passes]
  rw [k4PrefixGroup0039_mask_group0002_passes]
  rw [k4PrefixGroup0039_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0039_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0039) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0039NormalLookup,
    k4PrefixGroup0039TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0039_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0039_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0039MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0039_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0039_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
