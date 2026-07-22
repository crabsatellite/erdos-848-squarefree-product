import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0021
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0022
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0023

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0005NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 2273 then rootNormalQrMaskWords0020 p else
  if p ≤ 2383 then rootNormalQrMaskWords0021 p else
  if p ≤ 2531 then rootNormalQrMaskWords0022 p else
  if p ≤ 2663 then rootNormalQrMaskWords0023 p else
  []

def k2PrefixGroup0005TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 2273 then rootTwistQrMaskWords0020 p else
  if p ≤ 2383 then rootTwistQrMaskWords0021 p else
  if p ≤ 2531 then rootTwistQrMaskWords0022 p else
  if p ≤ 2663 then rootTwistQrMaskWords0023 p else
  []

def k2PrefixGroup0005MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0020 ++
  rootMaskSemanticGroup0021 ++
  rootMaskSemanticGroup0022 ++
  rootMaskSemanticGroup0023

def k2PrefixGroup0005 : List (List ℕ) :=
  [[2141],
    [2143],
    [2153],
    [2161],
    [2179],
    [2203],
    [2207],
    [2213],
    [2221],
    [2237],
    [2239],
    [2243],
    [2251],
    [2267],
    [2269],
    [2273],
    [2281],
    [2287],
    [2293],
    [2297],
    [2309],
    [2311],
    [2333],
    [2339],
    [2341],
    [2347],
    [2351],
    [2357],
    [2371],
    [2377],
    [2381],
    [2383],
    [2389],
    [2393],
    [2399],
    [2411],
    [2417],
    [2423],
    [2437],
    [2441],
    [2447],
    [2459],
    [2467],
    [2473],
    [2477],
    [2503],
    [2521],
    [2531],
    [2539],
    [2543],
    [2549],
    [2551],
    [2557],
    [2579],
    [2591],
    [2593],
    [2609],
    [2617],
    [2621],
    [2633],
    [2647],
    [2657],
    [2659],
    [2663]]

theorem k2PrefixGroup0005_support_covered :
    k2PrefixGroup0005.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0005MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0005_passes :
    k2PrefixGroup0005.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0005NormalLookup
        k2PrefixGroup0005TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0005_mask_group0020_passes :
    rootMaskSemanticGroup0020.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0005NormalLookup
        k2PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020_passes) p hp
  have hnormal : k2PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0020 p := by
    simp only [rootMaskSemanticGroup0020,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0005_mask_group0021_passes :
    rootMaskSemanticGroup0021.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0005NormalLookup
        k2PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0021_passes) p hp
  have hnormal : k2PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0021 p := by
    simp only [rootMaskSemanticGroup0021,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0021 p := by
    simp only [rootMaskSemanticGroup0021,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0005_mask_group0022_passes :
    rootMaskSemanticGroup0022.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0005NormalLookup
        k2PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0022_passes) p hp
  have hnormal : k2PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0022 p := by
    simp only [rootMaskSemanticGroup0022,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0022 p := by
    simp only [rootMaskSemanticGroup0022,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0005_mask_group0023_passes :
    rootMaskSemanticGroup0023.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0005NormalLookup
        k2PrefixGroup0005TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0023_passes) p hp
  have hnormal : k2PrefixGroup0005NormalLookup p =
      rootNormalQrMaskWords0023 p := by
    simp only [rootMaskSemanticGroup0023,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0005TwistLookup p =
      rootTwistQrMaskWords0023 p := by
    simp only [rootMaskSemanticGroup0023,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0005_mask_primes_pass :
    k2PrefixGroup0005MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0005NormalLookup
        k2PrefixGroup0005TwistLookup) = true := by
  simp only [k2PrefixGroup0005MaskPrimes, List.all_append]
  rw [k2PrefixGroup0005_mask_group0020_passes]
  rw [k2PrefixGroup0005_mask_group0021_passes]
  rw [k2PrefixGroup0005_mask_group0022_passes]
  rw [k2PrefixGroup0005_mask_group0023_passes]
  rfl

theorem k2PrefixGroup0005_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0005) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0005NormalLookup,
    k2PrefixGroup0005TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0005_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0005_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0005MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0005_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0005_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
