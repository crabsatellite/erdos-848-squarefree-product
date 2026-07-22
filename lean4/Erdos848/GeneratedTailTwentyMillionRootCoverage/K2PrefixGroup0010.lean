import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0040
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0041
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0042
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0043

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0010NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 4931 then rootNormalQrMaskWords0040 p else
  if p ≤ 5023 then rootNormalQrMaskWords0041 p else
  if p ≤ 5179 then rootNormalQrMaskWords0042 p else
  if p ≤ 5333 then rootNormalQrMaskWords0043 p else
  []

def k2PrefixGroup0010TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 4931 then rootTwistQrMaskWords0040 p else
  if p ≤ 5023 then rootTwistQrMaskWords0041 p else
  if p ≤ 5179 then rootTwistQrMaskWords0042 p else
  if p ≤ 5333 then rootTwistQrMaskWords0043 p else
  []

def k2PrefixGroup0010MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0040 ++
  rootMaskSemanticGroup0041 ++
  rootMaskSemanticGroup0042 ++
  rootMaskSemanticGroup0043

def k2PrefixGroup0010 : List (List ℕ) :=
  [[4787],
    [4789],
    [4793],
    [4799],
    [4801],
    [4813],
    [4817],
    [4831],
    [4861],
    [4871],
    [4877],
    [4889],
    [4903],
    [4909],
    [4919],
    [4931],
    [4933],
    [4937],
    [4943],
    [4951],
    [4957],
    [4967],
    [4969],
    [4973],
    [4987],
    [4993],
    [4999],
    [5003],
    [5009],
    [5011],
    [5021],
    [5023],
    [5039],
    [5051],
    [5059],
    [5077],
    [5081],
    [5087],
    [5099],
    [5101],
    [5107],
    [5113],
    [5119],
    [5147],
    [5153],
    [5167],
    [5171],
    [5179],
    [5189],
    [5197],
    [5209],
    [5227],
    [5231],
    [5233],
    [5237],
    [5261],
    [5273],
    [5279],
    [5281],
    [5297],
    [5303],
    [5309],
    [5323],
    [5333]]

theorem k2PrefixGroup0010_support_covered :
    k2PrefixGroup0010.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0010MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0010_passes :
    k2PrefixGroup0010.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0010NormalLookup
        k2PrefixGroup0010TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0010_mask_group0040_passes :
    rootMaskSemanticGroup0040.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0010NormalLookup
        k2PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0040_passes) p hp
  have hnormal : k2PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0040 p := by
    simp only [rootMaskSemanticGroup0040,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0040 p := by
    simp only [rootMaskSemanticGroup0040,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0010_mask_group0041_passes :
    rootMaskSemanticGroup0041.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0010NormalLookup
        k2PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0041_passes) p hp
  have hnormal : k2PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0041 p := by
    simp only [rootMaskSemanticGroup0041,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0041 p := by
    simp only [rootMaskSemanticGroup0041,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0010_mask_group0042_passes :
    rootMaskSemanticGroup0042.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0010NormalLookup
        k2PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0042_passes) p hp
  have hnormal : k2PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0042 p := by
    simp only [rootMaskSemanticGroup0042,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0042 p := by
    simp only [rootMaskSemanticGroup0042,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0010_mask_group0043_passes :
    rootMaskSemanticGroup0043.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0010NormalLookup
        k2PrefixGroup0010TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0043_passes) p hp
  have hnormal : k2PrefixGroup0010NormalLookup p =
      rootNormalQrMaskWords0043 p := by
    simp only [rootMaskSemanticGroup0043,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0010TwistLookup p =
      rootTwistQrMaskWords0043 p := by
    simp only [rootMaskSemanticGroup0043,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0010_mask_primes_pass :
    k2PrefixGroup0010MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0010NormalLookup
        k2PrefixGroup0010TwistLookup) = true := by
  simp only [k2PrefixGroup0010MaskPrimes, List.all_append]
  rw [k2PrefixGroup0010_mask_group0040_passes]
  rw [k2PrefixGroup0010_mask_group0041_passes]
  rw [k2PrefixGroup0010_mask_group0042_passes]
  rw [k2PrefixGroup0010_mask_group0043_passes]
  rfl

theorem k2PrefixGroup0010_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0010) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0010NormalLookup,
    k2PrefixGroup0010TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0010_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0010_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0010MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0010_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0010_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
