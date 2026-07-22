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

def k4PrefixGroup0038NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 317 then rootNormalQrMaskWords0003 p else
  []

def k4PrefixGroup0038TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 317 then rootTwistQrMaskWords0003 p else
  []

def k4PrefixGroup0038MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0003

def k4PrefixGroup0038 : List (List ℕ) :=
  [[3, 131, 223],
    [3, 131, 227],
    [3, 131, 229],
    [3, 131, 233],
    [3, 131, 239],
    [3, 131, 241],
    [3, 131, 251],
    [3, 131, 257],
    [3, 131, 263],
    [3, 131, 269],
    [3, 131, 271],
    [3, 131, 277],
    [3, 131, 281],
    [3, 131, 283],
    [3, 131, 293],
    [3, 131, 307],
    [3, 131, 311],
    [3, 131, 313],
    [3, 137, 139],
    [3, 137, 149],
    [3, 137, 151],
    [3, 137, 157],
    [3, 137, 163],
    [3, 137, 167],
    [3, 137, 173],
    [3, 137, 179],
    [3, 137, 181],
    [3, 137, 191],
    [3, 137, 193],
    [3, 137, 197],
    [3, 137, 199],
    [3, 137, 211],
    [3, 137, 223],
    [3, 137, 227],
    [3, 137, 229],
    [3, 137, 233],
    [3, 137, 239],
    [3, 137, 241],
    [3, 137, 251],
    [3, 137, 257],
    [3, 137, 263],
    [3, 137, 269],
    [3, 137, 271],
    [3, 137, 277],
    [3, 137, 281],
    [3, 137, 283],
    [3, 137, 293],
    [3, 137, 307],
    [3, 139, 149],
    [3, 139, 151],
    [3, 139, 157],
    [3, 139, 163],
    [3, 139, 167],
    [3, 139, 173],
    [3, 139, 179],
    [3, 139, 181],
    [3, 139, 191],
    [3, 139, 193],
    [3, 139, 197],
    [3, 139, 199],
    [3, 139, 211],
    [3, 139, 223],
    [3, 139, 227],
    [3, 139, 229]]

theorem k4PrefixGroup0038_support_covered :
    k4PrefixGroup0038.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0038MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0038_passes :
    k4PrefixGroup0038.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0038_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0038_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0038_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0038_mask_group0003_passes :
    rootMaskSemanticGroup0003.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0003_passes) p hp
  have hnormal : k4PrefixGroup0038NormalLookup p =
      rootNormalQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0038TwistLookup p =
      rootTwistQrMaskWords0003 p := by
    simp only [rootMaskSemanticGroup0003,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0038_mask_primes_pass :
    k4PrefixGroup0038MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0038NormalLookup
        k4PrefixGroup0038TwistLookup) = true := by
  simp only [k4PrefixGroup0038MaskPrimes, List.all_append]
  rw [k4PrefixGroup0038_mask_group0000_passes]
  rw [k4PrefixGroup0038_mask_group0001_passes]
  rw [k4PrefixGroup0038_mask_group0002_passes]
  rw [k4PrefixGroup0038_mask_group0003_passes]
  rfl

theorem k4PrefixGroup0038_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0038) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0038NormalLookup,
    k4PrefixGroup0038TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0038_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0038_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0038MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0038_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0038_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
