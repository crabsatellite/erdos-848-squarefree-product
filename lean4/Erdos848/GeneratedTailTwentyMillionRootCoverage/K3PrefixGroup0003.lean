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

def k3PrefixGroup0003NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  if p ≤ 1531 then rootNormalQrMaskWords0014 p else
  if p ≤ 1627 then rootNormalQrMaskWords0015 p else
  if p ≤ 1759 then rootNormalQrMaskWords0016 p else
  []

def k3PrefixGroup0003TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  if p ≤ 1531 then rootTwistQrMaskWords0014 p else
  if p ≤ 1627 then rootTwistQrMaskWords0015 p else
  if p ≤ 1759 then rootTwistQrMaskWords0016 p else
  []

def k3PrefixGroup0003MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013 ++
  rootMaskSemanticGroup0014 ++
  rootMaskSemanticGroup0015 ++
  rootMaskSemanticGroup0016

def k3PrefixGroup0003 : List (List ℕ) :=
  [[3, 1193],
    [3, 1201],
    [3, 1213],
    [3, 1217],
    [3, 1223],
    [3, 1229],
    [3, 1231],
    [3, 1237],
    [3, 1249],
    [3, 1259],
    [3, 1277],
    [3, 1279],
    [3, 1283],
    [3, 1289],
    [3, 1291],
    [3, 1297],
    [3, 1301],
    [3, 1303],
    [3, 1307],
    [3, 1319],
    [3, 1321],
    [3, 1327],
    [3, 1361],
    [3, 1367],
    [3, 1373],
    [3, 1381],
    [3, 1399],
    [3, 1409],
    [3, 1423],
    [3, 1427],
    [3, 1429],
    [3, 1433],
    [3, 1439],
    [3, 1447],
    [3, 1451],
    [3, 1453],
    [3, 1459],
    [3, 1471],
    [3, 1481],
    [3, 1483],
    [3, 1487],
    [3, 1489],
    [3, 1493],
    [3, 1499],
    [3, 1511],
    [3, 1523],
    [3, 1531],
    [3, 1543],
    [3, 1549],
    [3, 1553],
    [3, 1559],
    [3, 1567],
    [3, 1571],
    [3, 1579],
    [3, 1583],
    [3, 1597],
    [3, 1601],
    [3, 1607],
    [3, 1609],
    [3, 1613],
    [3, 1619],
    [3, 1621],
    [3, 1627],
    [3, 1637]]

theorem k3PrefixGroup0003_support_covered :
    k3PrefixGroup0003.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0003MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0003_passes :
    k3PrefixGroup0003.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0003_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0003_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0003_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k3PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0003_mask_group0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014_passes) p hp
  have hnormal : k3PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0003_mask_group0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015_passes) p hp
  have hnormal : k3PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0003_mask_group0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016_passes) p hp
  have hnormal : k3PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0003_mask_primes_pass :
    k3PrefixGroup0003MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0003NormalLookup
        k3PrefixGroup0003TwistLookup) = true := by
  simp only [k3PrefixGroup0003MaskPrimes, List.all_append]
  rw [k3PrefixGroup0003_mask_group0000_passes]
  rw [k3PrefixGroup0003_mask_group0012_passes]
  rw [k3PrefixGroup0003_mask_group0013_passes]
  rw [k3PrefixGroup0003_mask_group0014_passes]
  rw [k3PrefixGroup0003_mask_group0015_passes]
  rw [k3PrefixGroup0003_mask_group0016_passes]
  rfl

theorem k3PrefixGroup0003_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0003) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0003NormalLookup,
    k3PrefixGroup0003TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0003_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0003_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0003MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0003_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0003_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
