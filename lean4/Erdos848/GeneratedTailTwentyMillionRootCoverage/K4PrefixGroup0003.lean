import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0013

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0003NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 1291 then rootNormalQrMaskWords0012 p else
  if p ≤ 1429 then rootNormalQrMaskWords0013 p else
  []

def k4PrefixGroup0003TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 1291 then rootTwistQrMaskWords0012 p else
  if p ≤ 1429 then rootTwistQrMaskWords0013 p else
  []

def k4PrefixGroup0003MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0012 ++
  rootMaskSemanticGroup0013

def k4PrefixGroup0003 : List (List ℕ) :=
  [[3, 7, 1201],
    [3, 7, 1213],
    [3, 7, 1217],
    [3, 7, 1223],
    [3, 7, 1229],
    [3, 7, 1231],
    [3, 7, 1237],
    [3, 7, 1249],
    [3, 7, 1259],
    [3, 7, 1277],
    [3, 7, 1279],
    [3, 7, 1283],
    [3, 7, 1289],
    [3, 7, 1291],
    [3, 7, 1297],
    [3, 7, 1301],
    [3, 7, 1303],
    [3, 7, 1307],
    [3, 7, 1319],
    [3, 7, 1321],
    [3, 7, 1327],
    [3, 7, 1361],
    [3, 7, 1367],
    [3, 7, 1373],
    [3, 11, 13],
    [3, 11, 17],
    [3, 11, 19],
    [3, 11, 23],
    [3, 11, 29],
    [3, 11, 31],
    [3, 11, 37],
    [3, 11, 41],
    [3, 11, 43],
    [3, 11, 47],
    [3, 11, 53],
    [3, 11, 59],
    [3, 11, 61],
    [3, 11, 67],
    [3, 11, 71],
    [3, 11, 73],
    [3, 11, 79],
    [3, 11, 83],
    [3, 11, 89],
    [3, 11, 97],
    [3, 11, 101],
    [3, 11, 103],
    [3, 11, 107],
    [3, 11, 109],
    [3, 11, 113],
    [3, 11, 127],
    [3, 11, 131],
    [3, 11, 137],
    [3, 11, 139],
    [3, 11, 149],
    [3, 11, 151],
    [3, 11, 157],
    [3, 11, 163],
    [3, 11, 167],
    [3, 11, 173],
    [3, 11, 179],
    [3, 11, 181],
    [3, 11, 191],
    [3, 11, 193],
    [3, 11, 197]]

theorem k4PrefixGroup0003_support_covered :
    k4PrefixGroup0003.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k4PrefixGroup0003MaskPrimes))) = true := by
  rfl

theorem k4PrefixGroup0003_passes :
    k4PrefixGroup0003.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup rootBaseWords 4) = true := by
  rfl

theorem k4PrefixGroup0003_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k4PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0003_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k4PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0003_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k4PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0003_mask_group0012_passes :
    rootMaskSemanticGroup0012.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0012_passes) p hp
  have hnormal : k4PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0012 p := by
    simp only [rootMaskSemanticGroup0012,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0003_mask_group0013_passes :
    rootMaskSemanticGroup0013.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0013_passes) p hp
  have hnormal : k4PrefixGroup0003NormalLookup p =
      rootNormalQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k4PrefixGroup0003TwistLookup p =
      rootTwistQrMaskWords0013 p := by
    simp only [rootMaskSemanticGroup0013,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k4PrefixGroup0003_mask_primes_pass :
    k4PrefixGroup0003MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k4PrefixGroup0003NormalLookup
        k4PrefixGroup0003TwistLookup) = true := by
  simp only [k4PrefixGroup0003MaskPrimes, List.all_append]
  rw [k4PrefixGroup0003_mask_group0000_passes]
  rw [k4PrefixGroup0003_mask_group0001_passes]
  rw [k4PrefixGroup0003_mask_group0002_passes]
  rw [k4PrefixGroup0003_mask_group0012_passes]
  rw [k4PrefixGroup0003_mask_group0013_passes]
  rfl

theorem k4PrefixGroup0003_certified
    {support : List ℕ} (hsupport : support ∈ k4PrefixGroup0003) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 4 support = true := by
  refine ⟨k4PrefixGroup0003NormalLookup,
    k4PrefixGroup0003TwistLookup, ?_,
    (List.all_eq_true.mp
      k4PrefixGroup0003_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k4PrefixGroup0003_support_covered) support hsupport
  have hmem : p ∈
      k4PrefixGroup0003MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k4PrefixGroup0003_mask_primes_pass) p hmem

#print axioms k4PrefixGroup0003_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
