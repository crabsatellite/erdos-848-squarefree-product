import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0014

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0025NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  if p ≤ 1531 then rootNormalQrMaskWords0014 p else
  []

def k3PrefixGroup0025TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  if p ≤ 1531 then rootTwistQrMaskWords0014 p else
  []

def k3PrefixGroup0025MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013 ++
  rootMaskSemanticGroup0014

def k3PrefixGroup0025 : List (List ℕ) :=
  [[17, 1217],
    [17, 1223],
    [17, 1229],
    [17, 1231],
    [17, 1237],
    [17, 1249],
    [17, 1259],
    [17, 1277],
    [17, 1279],
    [17, 1283],
    [17, 1289],
    [17, 1291],
    [17, 1297],
    [17, 1301],
    [17, 1303],
    [17, 1307],
    [17, 1319],
    [17, 1321],
    [17, 1327],
    [17, 1361],
    [17, 1367],
    [17, 1373],
    [17, 1381],
    [17, 1399],
    [17, 1409],
    [17, 1423],
    [17, 1427],
    [17, 1429],
    [17, 1433],
    [17, 1439],
    [17, 1447],
    [17, 1451],
    [17, 1453],
    [17, 1459],
    [17, 1471],
    [17, 1481],
    [17, 1483],
    [17, 1487],
    [17, 1489],
    [17, 1493],
    [17, 1499],
    [17, 1511],
    [17, 1523],
    [19, 23],
    [19, 29],
    [19, 31],
    [19, 37],
    [19, 41],
    [19, 43],
    [19, 47],
    [19, 53],
    [19, 59],
    [19, 61],
    [19, 67],
    [19, 71],
    [19, 73],
    [19, 79],
    [19, 83],
    [19, 89],
    [19, 97],
    [19, 101],
    [19, 103],
    [19, 107],
    [19, 109]]

theorem k3PrefixGroup0025_support_covered :
    k3PrefixGroup0025.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0025MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0025_passes :
    k3PrefixGroup0025.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0025_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0025TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0025_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0025TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0025_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k3PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0025TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0025_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k3PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0025TwistLookup p =
      rootTwistQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0025_mask_group0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0014_passes) p hp
  have hnormal : k3PrefixGroup0025NormalLookup p =
      rootNormalQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0025TwistLookup p =
      rootTwistQrMaskWords0014 p := by
    simp only [rootMaskSemanticGroup0014,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0025_mask_primes_pass :
    k3PrefixGroup0025MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0025NormalLookup
        k3PrefixGroup0025TwistLookup) = true := by
  simp only [k3PrefixGroup0025MaskPrimes, List.all_append]
  rw [k3PrefixGroup0025_mask_group0000_passes]
  rw [k3PrefixGroup0025_mask_group0001_passes]
  rw [k3PrefixGroup0025_mask_group0012_passes]
  rw [k3PrefixGroup0025_mask_group0013_passes]
  rw [k3PrefixGroup0025_mask_group0014_passes]
  rfl

theorem k3PrefixGroup0025_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0025) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0025NormalLookup,
    k3PrefixGroup0025TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0025_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0025_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0025MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0025_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0025_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
