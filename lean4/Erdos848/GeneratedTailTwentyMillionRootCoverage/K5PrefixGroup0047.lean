import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0047NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  []

def k5PrefixGroup0047TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  []

def k5PrefixGroup0047MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001

def k5PrefixGroup0047 : List (List ℕ) :=
  [[7, 19, 31, 61],
    [7, 19, 31, 67],
    [7, 19, 31, 71],
    [7, 19, 31, 73],
    [7, 19, 31, 79],
    [7, 19, 31, 83],
    [7, 19, 31, 89],
    [7, 19, 37, 41],
    [7, 19, 37, 43],
    [7, 19, 37, 47],
    [7, 19, 37, 53],
    [7, 19, 37, 59],
    [7, 19, 37, 61],
    [7, 19, 37, 67],
    [7, 19, 37, 71],
    [7, 19, 37, 73],
    [7, 19, 37, 79],
    [7, 19, 37, 83],
    [7, 19, 41, 43],
    [7, 19, 41, 47],
    [7, 19, 41, 53],
    [7, 19, 41, 59],
    [7, 19, 41, 61],
    [7, 19, 41, 67],
    [7, 19, 41, 71],
    [7, 19, 41, 73],
    [7, 19, 41, 79],
    [7, 19, 43, 47],
    [7, 19, 43, 53],
    [7, 19, 43, 59],
    [7, 19, 43, 61],
    [7, 19, 43, 67],
    [7, 19, 43, 71],
    [7, 19, 43, 73],
    [7, 19, 43, 79],
    [7, 19, 47, 53],
    [7, 19, 47, 59],
    [7, 19, 47, 61],
    [7, 19, 47, 67],
    [7, 19, 47, 71],
    [7, 19, 47, 73],
    [7, 19, 53, 59],
    [7, 19, 53, 61],
    [7, 19, 53, 67],
    [7, 19, 53, 71],
    [7, 19, 59, 61],
    [7, 19, 59, 67],
    [7, 19, 61, 67],
    [7, 23, 29, 31],
    [7, 23, 29, 37],
    [7, 23, 29, 41],
    [7, 23, 29, 43],
    [7, 23, 29, 47],
    [7, 23, 29, 53],
    [7, 23, 29, 59],
    [7, 23, 29, 61],
    [7, 23, 29, 67],
    [7, 23, 29, 71],
    [7, 23, 29, 73],
    [7, 23, 29, 79],
    [7, 23, 29, 83],
    [7, 23, 31, 37],
    [7, 23, 31, 41],
    [7, 23, 31, 43]]

theorem k5PrefixGroup0047_support_covered :
    k5PrefixGroup0047.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k5PrefixGroup0047MaskPrimes))) = true := by
  rfl

theorem k5PrefixGroup0047_passes :
    k5PrefixGroup0047.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k5PrefixGroup0047NormalLookup
        k5PrefixGroup0047TwistLookup rootBaseWords 5) = true := by
  rfl

theorem k5PrefixGroup0047_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0047NormalLookup
        k5PrefixGroup0047TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k5PrefixGroup0047NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0047TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0047_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0047NormalLookup
        k5PrefixGroup0047TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k5PrefixGroup0047NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k5PrefixGroup0047TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k5PrefixGroup0047_mask_primes_pass :
    k5PrefixGroup0047MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k5PrefixGroup0047NormalLookup
        k5PrefixGroup0047TwistLookup) = true := by
  simp only [k5PrefixGroup0047MaskPrimes, List.all_append]
  rw [k5PrefixGroup0047_mask_group0000_passes]
  rw [k5PrefixGroup0047_mask_group0001_passes]
  rfl

theorem k5PrefixGroup0047_certified
    {support : List ℕ} (hsupport : support ∈ k5PrefixGroup0047) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  refine ⟨k5PrefixGroup0047NormalLookup,
    k5PrefixGroup0047TwistLookup, ?_,
    (List.all_eq_true.mp
      k5PrefixGroup0047_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k5PrefixGroup0047_support_covered) support hsupport
  have hmem : p ∈
      k5PrefixGroup0047MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k5PrefixGroup0047_mask_primes_pass) p hmem

#print axioms k5PrefixGroup0047_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
