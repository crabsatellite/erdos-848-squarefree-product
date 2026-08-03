import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0006NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 2753 then rootNormalQrMaskWords0024 p else
  if p ≤ 2887 then rootNormalQrMaskWords0025 p else
  if p ≤ 3023 then rootNormalQrMaskWords0026 p else
  if p ≤ 3181 then rootNormalQrMaskWords0027 p else
  []

def k2PrefixGroup0006TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 2753 then rootTwistQrMaskWords0024 p else
  if p ≤ 2887 then rootTwistQrMaskWords0025 p else
  if p ≤ 3023 then rootTwistQrMaskWords0026 p else
  if p ≤ 3181 then rootTwistQrMaskWords0027 p else
  []

def k2PrefixGroup0006MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0024 ++
  rootMaskSemanticGroup0025 ++
  rootMaskSemanticGroup0026 ++
  rootMaskSemanticGroup0027

def k2PrefixGroup0006 : List (List ℕ) :=
  [[2671],
    [2677],
    [2683],
    [2687],
    [2689],
    [2693],
    [2699],
    [2707],
    [2711],
    [2713],
    [2719],
    [2729],
    [2731],
    [2741],
    [2749],
    [2753],
    [2767],
    [2777],
    [2789],
    [2791],
    [2797],
    [2801],
    [2803],
    [2819],
    [2833],
    [2837],
    [2843],
    [2851],
    [2857],
    [2861],
    [2879],
    [2887],
    [2897],
    [2903],
    [2909],
    [2917],
    [2927],
    [2939],
    [2953],
    [2957],
    [2963],
    [2969],
    [2971],
    [2999],
    [3001],
    [3011],
    [3019],
    [3023],
    [3037],
    [3041],
    [3049],
    [3061],
    [3067],
    [3079],
    [3083],
    [3089],
    [3109],
    [3119],
    [3121],
    [3137],
    [3163],
    [3167],
    [3169],
    [3181]]

theorem k2PrefixGroup0006_support_covered :
    k2PrefixGroup0006.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0006MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0006_passes :
    k2PrefixGroup0006.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0006NormalLookup
        k2PrefixGroup0006TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0006_mask_group0024_passes :
    rootMaskSemanticGroup0024.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0006NormalLookup
        k2PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024_passes) p hp
  have hnormal : k2PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0024 p := by
    simp only [rootMaskSemanticGroup0024,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0024 p := by
    simp only [rootMaskSemanticGroup0024,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0006_mask_group0025_passes :
    rootMaskSemanticGroup0025.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0006NormalLookup
        k2PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025_passes) p hp
  have hnormal : k2PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0025 p := by
    simp only [rootMaskSemanticGroup0025,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0025 p := by
    simp only [rootMaskSemanticGroup0025,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0006_mask_group0026_passes :
    rootMaskSemanticGroup0026.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0006NormalLookup
        k2PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026_passes) p hp
  have hnormal : k2PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0026 p := by
    simp only [rootMaskSemanticGroup0026,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0026 p := by
    simp only [rootMaskSemanticGroup0026,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0006_mask_group0027_passes :
    rootMaskSemanticGroup0027.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0006NormalLookup
        k2PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027_passes) p hp
  have hnormal : k2PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0027 p := by
    simp only [rootMaskSemanticGroup0027,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0027 p := by
    simp only [rootMaskSemanticGroup0027,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0006_mask_primes_pass :
    k2PrefixGroup0006MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0006NormalLookup
        k2PrefixGroup0006TwistLookup) = true := by
  simp only [k2PrefixGroup0006MaskPrimes, List.all_append]
  rw [k2PrefixGroup0006_mask_group0024_passes]
  rw [k2PrefixGroup0006_mask_group0025_passes]
  rw [k2PrefixGroup0006_mask_group0026_passes]
  rw [k2PrefixGroup0006_mask_group0027_passes]
  rfl

theorem k2PrefixGroup0006_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0006) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0006NormalLookup,
    k2PrefixGroup0006TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0006_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0006_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0006MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0006_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0006_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
