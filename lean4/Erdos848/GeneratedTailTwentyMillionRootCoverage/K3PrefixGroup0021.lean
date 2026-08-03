import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0015
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0016

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0021NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  if p ≤ 1531 then rootNormalQrMaskWords0014 p else
  if p ≤ 1627 then rootNormalQrMaskWords0015 p else
  if p ≤ 1759 then rootNormalQrMaskWords0016 p else
  []

def k3PrefixGroup0021TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  if p ≤ 1531 then rootTwistQrMaskWords0014 p else
  if p ≤ 1627 then rootTwistQrMaskWords0015 p else
  if p ≤ 1759 then rootTwistQrMaskWords0016 p else
  []

def k3PrefixGroup0021MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013 ++
  rootMaskSemanticGroup0014 ++
  rootMaskSemanticGroup0015 ++
  rootMaskSemanticGroup0016

def k3PrefixGroup0021 : List (List ℕ) :=
  [[13, 1283],
    [13, 1289],
    [13, 1291],
    [13, 1297],
    [13, 1301],
    [13, 1303],
    [13, 1307],
    [13, 1319],
    [13, 1321],
    [13, 1327],
    [13, 1361],
    [13, 1367],
    [13, 1373],
    [13, 1381],
    [13, 1399],
    [13, 1409],
    [13, 1423],
    [13, 1427],
    [13, 1429],
    [13, 1433],
    [13, 1439],
    [13, 1447],
    [13, 1451],
    [13, 1453],
    [13, 1459],
    [13, 1471],
    [13, 1481],
    [13, 1483],
    [13, 1487],
    [13, 1489],
    [13, 1493],
    [13, 1499],
    [13, 1511],
    [13, 1523],
    [13, 1531],
    [13, 1543],
    [13, 1549],
    [13, 1553],
    [13, 1559],
    [13, 1567],
    [13, 1571],
    [13, 1579],
    [13, 1583],
    [13, 1597],
    [13, 1601],
    [13, 1607],
    [13, 1609],
    [13, 1613],
    [13, 1619],
    [13, 1621],
    [13, 1627],
    [13, 1637],
    [13, 1657],
    [13, 1663],
    [13, 1667],
    [13, 1669],
    [13, 1693],
    [13, 1697],
    [13, 1699],
    [13, 1709],
    [13, 1721],
    [13, 1723],
    [13, 1733],
    [13, 1741]]

theorem k3PrefixGroup0021_support_covered :
    k3PrefixGroup0021.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0021MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0021_passes :
    k3PrefixGroup0021.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0021_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0021_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0021_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k3PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0021_mask_group0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014_passes) p hp
  have hnormal : k3PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0021_mask_group0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015_passes) p hp
  have hnormal : k3PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0021_mask_group0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016_passes) p hp
  have hnormal : k3PrefixGroup0021NormalLookup p =
      rootNormalQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0021TwistLookup p =
      rootTwistQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0021_mask_primes_pass :
    k3PrefixGroup0021MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0021NormalLookup
        k3PrefixGroup0021TwistLookup) = true := by
  simp only [k3PrefixGroup0021MaskPrimes, List.all_append]
  rw [k3PrefixGroup0021_mask_group0000_passes]
  rw [k3PrefixGroup0021_mask_group0012_passes]
  rw [k3PrefixGroup0021_mask_group0013_passes]
  rw [k3PrefixGroup0021_mask_group0014_passes]
  rw [k3PrefixGroup0021_mask_group0015_passes]
  rw [k3PrefixGroup0021_mask_group0016_passes]
  rfl

theorem k3PrefixGroup0021_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0021) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0021NormalLookup,
    k3PrefixGroup0021TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0021_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0021_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0021MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0021_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0021_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
