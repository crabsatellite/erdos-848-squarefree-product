import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0013NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 139 then rootNormalQrMaskWords0001 p else
  if p ≤ 229 then rootNormalQrMaskWords0002 p else
  if p ≤ 2273 then rootNormalQrMaskWords0020 p else
  if p ≤ 2383 then rootNormalQrMaskWords0021 p else
  []

def k3PrefixGroup0013TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 139 then rootTwistQrMaskWords0001 p else
  if p ≤ 229 then rootTwistQrMaskWords0002 p else
  if p ≤ 2273 then rootTwistQrMaskWords0020 p else
  if p ≤ 2383 then rootTwistQrMaskWords0021 p else
  []

def k3PrefixGroup0013MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0001 ++
  rootMaskSemanticGroup0002 ++
  rootMaskSemanticGroup0020 ++
  rootMaskSemanticGroup0021

def k3PrefixGroup0013 : List (List ℕ) :=
  [[7, 2213],
    [7, 2221],
    [7, 2237],
    [7, 2239],
    [7, 2243],
    [7, 2251],
    [7, 2267],
    [7, 2269],
    [7, 2273],
    [7, 2281],
    [7, 2287],
    [7, 2293],
    [7, 2297],
    [7, 2309],
    [7, 2311],
    [7, 2333],
    [7, 2339],
    [7, 2341],
    [7, 2347],
    [7, 2351],
    [7, 2357],
    [7, 2371],
    [7, 2377],
    [7, 2381],
    [7, 2383],
    [11, 13],
    [11, 17],
    [11, 19],
    [11, 23],
    [11, 29],
    [11, 31],
    [11, 37],
    [11, 41],
    [11, 43],
    [11, 47],
    [11, 53],
    [11, 59],
    [11, 61],
    [11, 67],
    [11, 71],
    [11, 73],
    [11, 79],
    [11, 83],
    [11, 89],
    [11, 97],
    [11, 101],
    [11, 103],
    [11, 107],
    [11, 109],
    [11, 113],
    [11, 127],
    [11, 131],
    [11, 137],
    [11, 139],
    [11, 149],
    [11, 151],
    [11, 157],
    [11, 163],
    [11, 167],
    [11, 173],
    [11, 179],
    [11, 181],
    [11, 191],
    [11, 193]]

theorem k3PrefixGroup0013_support_covered :
    k3PrefixGroup0013.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0013MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0013_passes :
    k3PrefixGroup0013.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0013_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0013_mask_group0001_passes :
    rootMaskSemanticGroup0001.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0001_passes) p hp
  have hnormal : k3PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0001 p := by
    simp only [rootMaskSemanticGroup0001,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0013_mask_group0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0002_passes) p hp
  have hnormal : k3PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0002 p := by
    simp only [rootMaskSemanticGroup0002,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0013_mask_group0020_passes :
    rootMaskSemanticGroup0020.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020_passes) p hp
  have hnormal : k3PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0013_mask_group0021_passes :
    rootMaskSemanticGroup0021.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021_passes) p hp
  have hnormal : k3PrefixGroup0013NormalLookup p =
      rootNormalQrMaskWords0021 p := by
    simp only [rootMaskSemanticGroup0021,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0013TwistLookup p =
      rootTwistQrMaskWords0021 p := by
    simp only [rootMaskSemanticGroup0021,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0013_mask_primes_pass :
    k3PrefixGroup0013MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0013NormalLookup
        k3PrefixGroup0013TwistLookup) = true := by
  simp only [k3PrefixGroup0013MaskPrimes, List.all_append]
  rw [k3PrefixGroup0013_mask_group0000_passes]
  rw [k3PrefixGroup0013_mask_group0001_passes]
  rw [k3PrefixGroup0013_mask_group0002_passes]
  rw [k3PrefixGroup0013_mask_group0020_passes]
  rw [k3PrefixGroup0013_mask_group0021_passes]
  rfl

theorem k3PrefixGroup0013_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0013) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0013NormalLookup,
    k3PrefixGroup0013TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0013_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0013_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0013MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0013_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0013_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
