import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0017
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0018

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0017NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 1531 then rootNormalQrMaskWords0014 p else
  if p ≤ 1627 then rootNormalQrMaskWords0015 p else
  if p ≤ 1759 then rootNormalQrMaskWords0016 p else
  if p ≤ 1889 then rootNormalQrMaskWords0017 p else
  if p ≤ 2017 then rootNormalQrMaskWords0018 p else
  []

def k3PrefixGroup0017TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 1531 then rootTwistQrMaskWords0014 p else
  if p ≤ 1627 then rootTwistQrMaskWords0015 p else
  if p ≤ 1759 then rootTwistQrMaskWords0016 p else
  if p ≤ 1889 then rootTwistQrMaskWords0017 p else
  if p ≤ 2017 then rootTwistQrMaskWords0018 p else
  []

def k3PrefixGroup0017MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0014 ++
  rootMaskSemanticGroup0015 ++
  rootMaskSemanticGroup0016 ++
  rootMaskSemanticGroup0017 ++
  rootMaskSemanticGroup0018

def k3PrefixGroup0017 : List (List ℕ) :=
  [[11, 1489],
    [11, 1493],
    [11, 1499],
    [11, 1511],
    [11, 1523],
    [11, 1531],
    [11, 1543],
    [11, 1549],
    [11, 1553],
    [11, 1559],
    [11, 1567],
    [11, 1571],
    [11, 1579],
    [11, 1583],
    [11, 1597],
    [11, 1601],
    [11, 1607],
    [11, 1609],
    [11, 1613],
    [11, 1619],
    [11, 1621],
    [11, 1627],
    [11, 1637],
    [11, 1657],
    [11, 1663],
    [11, 1667],
    [11, 1669],
    [11, 1693],
    [11, 1697],
    [11, 1699],
    [11, 1709],
    [11, 1721],
    [11, 1723],
    [11, 1733],
    [11, 1741],
    [11, 1747],
    [11, 1753],
    [11, 1759],
    [11, 1777],
    [11, 1783],
    [11, 1787],
    [11, 1789],
    [11, 1801],
    [11, 1811],
    [11, 1823],
    [11, 1831],
    [11, 1847],
    [11, 1861],
    [11, 1867],
    [11, 1871],
    [11, 1873],
    [11, 1877],
    [11, 1879],
    [11, 1889],
    [11, 1901],
    [13, 17],
    [13, 19],
    [13, 23],
    [13, 29],
    [13, 31],
    [13, 37],
    [13, 41],
    [13, 43],
    [13, 47]]

theorem k3PrefixGroup0017_support_covered :
    k3PrefixGroup0017.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0017MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0017_passes :
    k3PrefixGroup0017.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0017_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0017TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0017_mask_group0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014_passes) p hp
  have hnormal : k3PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0017TwistLookup p =
      rootTwistQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0017_mask_group0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015_passes) p hp
  have hnormal : k3PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0017TwistLookup p =
      rootTwistQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0017_mask_group0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016_passes) p hp
  have hnormal : k3PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0017TwistLookup p =
      rootTwistQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0017_mask_group0017_passes :
    rootMaskSemanticGroup0017.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0017_passes) p hp
  have hnormal : k3PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0017 p := by
    simp only [rootMaskSemanticGroup0017,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0017TwistLookup p =
      rootTwistQrMaskWords0017 p := by
    simp only [rootMaskSemanticGroup0017,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0017_mask_group0018_passes :
    rootMaskSemanticGroup0018.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0018_passes) p hp
  have hnormal : k3PrefixGroup0017NormalLookup p =
      rootNormalQrMaskWords0018 p := by
    simp only [rootMaskSemanticGroup0018,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0017TwistLookup p =
      rootTwistQrMaskWords0018 p := by
    simp only [rootMaskSemanticGroup0018,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0017_mask_primes_pass :
    k3PrefixGroup0017MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0017NormalLookup
        k3PrefixGroup0017TwistLookup) = true := by
  simp only [k3PrefixGroup0017MaskPrimes, List.all_append]
  rw [k3PrefixGroup0017_mask_group0000_passes]
  rw [k3PrefixGroup0017_mask_group0014_passes]
  rw [k3PrefixGroup0017_mask_group0015_passes]
  rw [k3PrefixGroup0017_mask_group0016_passes]
  rw [k3PrefixGroup0017_mask_group0017_passes]
  rw [k3PrefixGroup0017_mask_group0018_passes]
  rfl

theorem k3PrefixGroup0017_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0017) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0017NormalLookup,
    k3PrefixGroup0017TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0017_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0017_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0017MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0017_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0017_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
