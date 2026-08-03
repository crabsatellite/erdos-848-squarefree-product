import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0013
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0009NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  if p ≤ 1531 then rootNormalQrMaskWords0014 p else
  if p ≤ 1627 then rootNormalQrMaskWords0015 p else
  if p ≤ 1759 then rootNormalQrMaskWords0016 p else
  []

def k3PrefixGroup0009TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  if p ≤ 1531 then rootTwistQrMaskWords0014 p else
  if p ≤ 1627 then rootTwistQrMaskWords0015 p else
  if p ≤ 1759 then rootTwistQrMaskWords0016 p else
  []

def k3PrefixGroup0009MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013 ++
  rootMaskSemanticGroup0014 ++
  rootMaskSemanticGroup0015 ++
  rootMaskSemanticGroup0016

def k3PrefixGroup0009 : List (List ℕ) :=
  [[7, 1289],
    [7, 1291],
    [7, 1297],
    [7, 1301],
    [7, 1303],
    [7, 1307],
    [7, 1319],
    [7, 1321],
    [7, 1327],
    [7, 1361],
    [7, 1367],
    [7, 1373],
    [7, 1381],
    [7, 1399],
    [7, 1409],
    [7, 1423],
    [7, 1427],
    [7, 1429],
    [7, 1433],
    [7, 1439],
    [7, 1447],
    [7, 1451],
    [7, 1453],
    [7, 1459],
    [7, 1471],
    [7, 1481],
    [7, 1483],
    [7, 1487],
    [7, 1489],
    [7, 1493],
    [7, 1499],
    [7, 1511],
    [7, 1523],
    [7, 1531],
    [7, 1543],
    [7, 1549],
    [7, 1553],
    [7, 1559],
    [7, 1567],
    [7, 1571],
    [7, 1579],
    [7, 1583],
    [7, 1597],
    [7, 1601],
    [7, 1607],
    [7, 1609],
    [7, 1613],
    [7, 1619],
    [7, 1621],
    [7, 1627],
    [7, 1637],
    [7, 1657],
    [7, 1663],
    [7, 1667],
    [7, 1669],
    [11, 13],
    [11, 17],
    [11, 19],
    [11, 23],
    [11, 29],
    [11, 31],
    [11, 37],
    [11, 41],
    [11, 43]]

theorem k3PrefixGroup0009_support_covered :
    k3PrefixGroup0009.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0009MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0009_passes :
    k3PrefixGroup0009.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0009_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0009_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0009_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k3PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0009_mask_group0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014_passes) p hp
  have hnormal : k3PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0009_mask_group0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015_passes) p hp
  have hnormal : k3PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0009_mask_group0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0016_passes) p hp
  have hnormal : k3PrefixGroup0009NormalLookup p =
      rootNormalQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0009TwistLookup p =
      rootTwistQrMaskWords0016 p := by
    simp only [rootMaskSemanticGroup0016,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  unfold Erdos848.tenMillionKernelRootMaskPassesWith
    Erdos848.tenMillionKernelRootNormalMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskPassesWith
    Erdos848.tenMillionKernelRootTwistMaskTestBit
    Erdos848.tenMillionKernelRootCompactMaskTestBit
    at hlocal ⊢
  simpa only [hnormal, htwist] using hlocal

theorem k3PrefixGroup0009_mask_primes_pass :
    k3PrefixGroup0009MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k3PrefixGroup0009NormalLookup
        k3PrefixGroup0009TwistLookup) = true := by
  simp only [k3PrefixGroup0009MaskPrimes, List.all_append]
  rw [k3PrefixGroup0009_mask_group0000_passes]
  rw [k3PrefixGroup0009_mask_group0012_passes]
  rw [k3PrefixGroup0009_mask_group0013_passes]
  rw [k3PrefixGroup0009_mask_group0014_passes]
  rw [k3PrefixGroup0009_mask_group0015_passes]
  rw [k3PrefixGroup0009_mask_group0016_passes]
  rfl

theorem k3PrefixGroup0009_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0009) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0009NormalLookup,
    k3PrefixGroup0009TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0009_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0009_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0009MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0009_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0009_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
