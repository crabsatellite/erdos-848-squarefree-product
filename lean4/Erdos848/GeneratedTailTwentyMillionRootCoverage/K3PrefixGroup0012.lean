import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0019
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0012NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 1759 then rootNormalQrMaskWords0016 p else
  if p ≤ 1889 then rootNormalQrMaskWords0017 p else
  if p ≤ 2017 then rootNormalQrMaskWords0018 p else
  if p ≤ 2137 then rootNormalQrMaskWords0019 p else
  if p ≤ 2273 then rootNormalQrMaskWords0020 p else
  []

def k3PrefixGroup0012TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 1759 then rootTwistQrMaskWords0016 p else
  if p ≤ 1889 then rootTwistQrMaskWords0017 p else
  if p ≤ 2017 then rootTwistQrMaskWords0018 p else
  if p ≤ 2137 then rootTwistQrMaskWords0019 p else
  if p ≤ 2273 then rootTwistQrMaskWords0020 p else
  []

def k3PrefixGroup0012MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0016 ++
  rootMaskSemanticGroup0017 ++
  rootMaskSemanticGroup0018 ++
  rootMaskSemanticGroup0019 ++
  rootMaskSemanticGroup0020

def k3PrefixGroup0012 : List (List ℕ) :=
  [[7, 1699],
    [7, 1709],
    [7, 1721],
    [7, 1723],
    [7, 1733],
    [7, 1741],
    [7, 1747],
    [7, 1753],
    [7, 1759],
    [7, 1777],
    [7, 1783],
    [7, 1787],
    [7, 1789],
    [7, 1801],
    [7, 1811],
    [7, 1823],
    [7, 1831],
    [7, 1847],
    [7, 1861],
    [7, 1867],
    [7, 1871],
    [7, 1873],
    [7, 1877],
    [7, 1879],
    [7, 1889],
    [7, 1901],
    [7, 1907],
    [7, 1913],
    [7, 1931],
    [7, 1933],
    [7, 1949],
    [7, 1951],
    [7, 1973],
    [7, 1979],
    [7, 1987],
    [7, 1993],
    [7, 1997],
    [7, 1999],
    [7, 2003],
    [7, 2011],
    [7, 2017],
    [7, 2027],
    [7, 2029],
    [7, 2039],
    [7, 2053],
    [7, 2063],
    [7, 2069],
    [7, 2081],
    [7, 2083],
    [7, 2087],
    [7, 2089],
    [7, 2099],
    [7, 2111],
    [7, 2113],
    [7, 2129],
    [7, 2131],
    [7, 2137],
    [7, 2141],
    [7, 2143],
    [7, 2153],
    [7, 2161],
    [7, 2179],
    [7, 2203],
    [7, 2207]]

theorem k3PrefixGroup0012_support_covered :
    k3PrefixGroup0012.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0012MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0012_passes :
    k3PrefixGroup0012.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0012_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0012_mask_group0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016_passes) p hp
  have hnormal : k3PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0012_mask_group0017_passes :
    rootMaskSemanticGroup0017.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017_passes) p hp
  have hnormal : k3PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0017 p := by
    simp only [rootMaskSemanticGroup0017,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0017 p := by
    simp only [rootMaskSemanticGroup0017,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0012_mask_group0018_passes :
    rootMaskSemanticGroup0018.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018_passes) p hp
  have hnormal : k3PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0018 p := by
    simp only [rootMaskSemanticGroup0018,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0018 p := by
    simp only [rootMaskSemanticGroup0018,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0012_mask_group0019_passes :
    rootMaskSemanticGroup0019.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0019_passes) p hp
  have hnormal : k3PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0019 p := by
    simp only [rootMaskSemanticGroup0019,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0019 p := by
    simp only [rootMaskSemanticGroup0019,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0012_mask_group0020_passes :
    rootMaskSemanticGroup0020.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020_passes) p hp
  have hnormal : k3PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0012_mask_primes_pass :
    k3PrefixGroup0012MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0012NormalLookup
        k3PrefixGroup0012TwistLookup) = true := by
  simp only [k3PrefixGroup0012MaskPrimes, List.all_append]
  rw [k3PrefixGroup0012_mask_group0000_passes]
  rw [k3PrefixGroup0012_mask_group0016_passes]
  rw [k3PrefixGroup0012_mask_group0017_passes]
  rw [k3PrefixGroup0012_mask_group0018_passes]
  rw [k3PrefixGroup0012_mask_group0019_passes]
  rw [k3PrefixGroup0012_mask_group0020_passes]
  rfl

theorem k3PrefixGroup0012_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0012) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0012NormalLookup,
    k3PrefixGroup0012TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0012_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0012_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0012MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0012_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0012_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
