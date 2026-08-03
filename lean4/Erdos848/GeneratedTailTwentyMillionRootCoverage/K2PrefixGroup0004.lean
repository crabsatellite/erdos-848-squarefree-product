import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0004NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 1759 then rootNormalQrMaskWords0016 p else
  if p ≤ 1889 then rootNormalQrMaskWords0017 p else
  if p ≤ 2017 then rootNormalQrMaskWords0018 p else
  if p ≤ 2137 then rootNormalQrMaskWords0019 p else
  []

def k2PrefixGroup0004TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 1759 then rootTwistQrMaskWords0016 p else
  if p ≤ 1889 then rootTwistQrMaskWords0017 p else
  if p ≤ 2017 then rootTwistQrMaskWords0018 p else
  if p ≤ 2137 then rootTwistQrMaskWords0019 p else
  []

def k2PrefixGroup0004MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0016 ++
  rootMaskSemanticGroup0017 ++
  rootMaskSemanticGroup0018 ++
  rootMaskSemanticGroup0019

def k2PrefixGroup0004 : List (List ℕ) :=
  [[1637],
    [1657],
    [1663],
    [1667],
    [1669],
    [1693],
    [1697],
    [1699],
    [1709],
    [1721],
    [1723],
    [1733],
    [1741],
    [1747],
    [1753],
    [1759],
    [1777],
    [1783],
    [1787],
    [1789],
    [1801],
    [1811],
    [1823],
    [1831],
    [1847],
    [1861],
    [1867],
    [1871],
    [1873],
    [1877],
    [1879],
    [1889],
    [1901],
    [1907],
    [1913],
    [1931],
    [1933],
    [1949],
    [1951],
    [1973],
    [1979],
    [1987],
    [1993],
    [1997],
    [1999],
    [2003],
    [2011],
    [2017],
    [2027],
    [2029],
    [2039],
    [2053],
    [2063],
    [2069],
    [2081],
    [2083],
    [2087],
    [2089],
    [2099],
    [2111],
    [2113],
    [2129],
    [2131],
    [2137]]

theorem k2PrefixGroup0004_support_covered :
    k2PrefixGroup0004.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0004MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0004_passes :
    k2PrefixGroup0004.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0004NormalLookup
        k2PrefixGroup0004TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0004_mask_group0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0004NormalLookup
        k2PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016_passes) p hp
  have hnormal : k2PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0004TwistLookup p =
      rootTwistQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0004_mask_group0017_passes :
    rootMaskSemanticGroup0017.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0004NormalLookup
        k2PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017_passes) p hp
  have hnormal : k2PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0017 p := by
    simp only [rootMaskSemanticGroup0017,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0004TwistLookup p =
      rootTwistQrMaskWords0017 p := by
    simp only [rootMaskSemanticGroup0017,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0004_mask_group0018_passes :
    rootMaskSemanticGroup0018.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0004NormalLookup
        k2PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018_passes) p hp
  have hnormal : k2PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0018 p := by
    simp only [rootMaskSemanticGroup0018,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0004TwistLookup p =
      rootTwistQrMaskWords0018 p := by
    simp only [rootMaskSemanticGroup0018,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0004_mask_group0019_passes :
    rootMaskSemanticGroup0019.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0004NormalLookup
        k2PrefixGroup0004TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019_passes) p hp
  have hnormal : k2PrefixGroup0004NormalLookup p =
      rootNormalQrMaskWords0019 p := by
    simp only [rootMaskSemanticGroup0019,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0004TwistLookup p =
      rootTwistQrMaskWords0019 p := by
    simp only [rootMaskSemanticGroup0019,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0004_mask_primes_pass :
    k2PrefixGroup0004MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0004NormalLookup
        k2PrefixGroup0004TwistLookup) = true := by
  simp only [k2PrefixGroup0004MaskPrimes, List.all_append]
  rw [k2PrefixGroup0004_mask_group0016_passes]
  rw [k2PrefixGroup0004_mask_group0017_passes]
  rw [k2PrefixGroup0004_mask_group0018_passes]
  rw [k2PrefixGroup0004_mask_group0019_passes]
  rfl

theorem k2PrefixGroup0004_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0004) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0004NormalLookup,
    k2PrefixGroup0004TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0004_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0004_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0004MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0004_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0004_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
