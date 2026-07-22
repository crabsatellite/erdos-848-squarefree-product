import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0005NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 2273 then rootNormalQrMaskWords0020 p else
  if p ≤ 2383 then rootNormalQrMaskWords0021 p else
  if p ≤ 2531 then rootNormalQrMaskWords0022 p else
  if p ≤ 2663 then rootNormalQrMaskWords0023 p else
  if p ≤ 2753 then rootNormalQrMaskWords0024 p else
  []

def k3PrefixGroup0005TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 2273 then rootTwistQrMaskWords0020 p else
  if p ≤ 2383 then rootTwistQrMaskWords0021 p else
  if p ≤ 2531 then rootTwistQrMaskWords0022 p else
  if p ≤ 2663 then rootTwistQrMaskWords0023 p else
  if p ≤ 2753 then rootTwistQrMaskWords0024 p else
  []

def k3PrefixGroup0005MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0020 ++
  rootMaskSemanticGroup0021 ++
  rootMaskSemanticGroup0022 ++
  rootMaskSemanticGroup0023 ++
  rootMaskSemanticGroup0024

def k3PrefixGroup0005 : List (List ℕ) :=
  [[3, 2143],
    [3, 2153],
    [3, 2161],
    [3, 2179],
    [3, 2203],
    [3, 2207],
    [3, 2213],
    [3, 2221],
    [3, 2237],
    [3, 2239],
    [3, 2243],
    [3, 2251],
    [3, 2267],
    [3, 2269],
    [3, 2273],
    [3, 2281],
    [3, 2287],
    [3, 2293],
    [3, 2297],
    [3, 2309],
    [3, 2311],
    [3, 2333],
    [3, 2339],
    [3, 2341],
    [3, 2347],
    [3, 2351],
    [3, 2357],
    [3, 2371],
    [3, 2377],
    [3, 2381],
    [3, 2383],
    [3, 2389],
    [3, 2393],
    [3, 2399],
    [3, 2411],
    [3, 2417],
    [3, 2423],
    [3, 2437],
    [3, 2441],
    [3, 2447],
    [3, 2459],
    [3, 2467],
    [3, 2473],
    [3, 2477],
    [3, 2503],
    [3, 2521],
    [3, 2531],
    [3, 2539],
    [3, 2543],
    [3, 2549],
    [3, 2551],
    [3, 2557],
    [3, 2579],
    [3, 2591],
    [3, 2593],
    [3, 2609],
    [3, 2617],
    [3, 2621],
    [3, 2633],
    [3, 2647],
    [3, 2657],
    [3, 2659],
    [3, 2663],
    [3, 2671]]

theorem k3PrefixGroup0005_support_covered :
    k3PrefixGroup0005.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0005MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0005_passes :
    k3PrefixGroup0005.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0005_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0005_mask_group0020_passes :
    rootMaskSemanticGroup0020.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020_passes) p hp
  have hnormal : k3PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0005_mask_group0021_passes :
    rootMaskSemanticGroup0021.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021_passes) p hp
  have hnormal : k3PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0021 p := by
    simp only [rootMaskSemanticGroup0021,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0021 p := by
    simp only [rootMaskSemanticGroup0021,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0005_mask_group0022_passes :
    rootMaskSemanticGroup0022.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022_passes) p hp
  have hnormal : k3PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0022 p := by
    simp only [rootMaskSemanticGroup0022,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0022 p := by
    simp only [rootMaskSemanticGroup0022,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0005_mask_group0023_passes :
    rootMaskSemanticGroup0023.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023_passes) p hp
  have hnormal : k3PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0023 p := by
    simp only [rootMaskSemanticGroup0023,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0023 p := by
    simp only [rootMaskSemanticGroup0023,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0005_mask_group0024_passes :
    rootMaskSemanticGroup0024.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024_passes) p hp
  have hnormal : k3PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0024 p := by
    simp only [rootMaskSemanticGroup0024,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0024 p := by
    simp only [rootMaskSemanticGroup0024,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0005_mask_primes_pass :
    k3PrefixGroup0005MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0005NormalLookup
        k3PrefixGroup0005TwistLookup) = true := by
  simp only [k3PrefixGroup0005MaskPrimes, List.all_append]
  rw [k3PrefixGroup0005_mask_group0000_passes]
  rw [k3PrefixGroup0005_mask_group0020_passes]
  rw [k3PrefixGroup0005_mask_group0021_passes]
  rw [k3PrefixGroup0005_mask_group0022_passes]
  rw [k3PrefixGroup0005_mask_group0023_passes]
  rw [k3PrefixGroup0005_mask_group0024_passes]
  rfl

theorem k3PrefixGroup0005_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0005) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0005NormalLookup,
    k3PrefixGroup0005TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0005_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0005_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0005MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0005_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0005_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
