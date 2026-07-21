import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0013
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0003NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  if p ≤ 1531 then rootNormalQrMaskWords0014 p else
  if p ≤ 1627 then rootNormalQrMaskWords0015 p else
  []

def k2PrefixGroup0003TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  if p ≤ 1531 then rootTwistQrMaskWords0014 p else
  if p ≤ 1627 then rootTwistQrMaskWords0015 p else
  []

def k2PrefixGroup0003MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013 ++
  rootMaskSemanticGroup0014 ++
  rootMaskSemanticGroup0015

def k2PrefixGroup0003 : List (List ℕ) :=
  [[1187],
    [1193],
    [1201],
    [1213],
    [1217],
    [1223],
    [1229],
    [1231],
    [1237],
    [1249],
    [1259],
    [1277],
    [1279],
    [1283],
    [1289],
    [1291],
    [1297],
    [1301],
    [1303],
    [1307],
    [1319],
    [1321],
    [1327],
    [1361],
    [1367],
    [1373],
    [1381],
    [1399],
    [1409],
    [1423],
    [1427],
    [1429],
    [1433],
    [1439],
    [1447],
    [1451],
    [1453],
    [1459],
    [1471],
    [1481],
    [1483],
    [1487],
    [1489],
    [1493],
    [1499],
    [1511],
    [1523],
    [1531],
    [1543],
    [1549],
    [1553],
    [1559],
    [1567],
    [1571],
    [1579],
    [1583],
    [1597],
    [1601],
    [1607],
    [1609],
    [1613],
    [1619],
    [1621],
    [1627]]

theorem k2PrefixGroup0003_support_covered :
    k2PrefixGroup0003.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0003MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0003_passes :
    k2PrefixGroup0003.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k2PrefixGroup0003NormalLookup
        k2PrefixGroup0003TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0003_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0003NormalLookup
        k2PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k2PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0003TwistLookup p =
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

theorem k2PrefixGroup0003_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0003NormalLookup
        k2PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k2PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0003TwistLookup p =
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

theorem k2PrefixGroup0003_mask_group0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0003NormalLookup
        k2PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014_passes) p hp
  have hnormal : k2PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0003TwistLookup p =
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

theorem k2PrefixGroup0003_mask_group0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0003NormalLookup
        k2PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0015_passes) p hp
  have hnormal : k2PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0015 p := by
    simp only [rootMaskSemanticGroup0015,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0003TwistLookup p =
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

theorem k2PrefixGroup0003_mask_primes_pass :
    k2PrefixGroup0003MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k2PrefixGroup0003NormalLookup
        k2PrefixGroup0003TwistLookup) = true := by
  simp only [k2PrefixGroup0003MaskPrimes, List.all_append]
  rw [k2PrefixGroup0003_mask_group0012_passes]
  rw [k2PrefixGroup0003_mask_group0013_passes]
  rw [k2PrefixGroup0003_mask_group0014_passes]
  rw [k2PrefixGroup0003_mask_group0015_passes]
  rfl

theorem k2PrefixGroup0003_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0003) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0003NormalLookup,
    k2PrefixGroup0003TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0003_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0003_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0003MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0003_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0003_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
