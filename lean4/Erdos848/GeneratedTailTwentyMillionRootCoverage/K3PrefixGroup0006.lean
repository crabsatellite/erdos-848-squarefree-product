import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0024
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0025
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0026
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0027
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0028

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0006NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootNormalQrMaskWords0000 p else
  if p ≤ 2753 then rootNormalQrMaskWords0024 p else
  if p ≤ 2887 then rootNormalQrMaskWords0025 p else
  if p ≤ 3023 then rootNormalQrMaskWords0026 p else
  if p ≤ 3181 then rootNormalQrMaskWords0027 p else
  if p ≤ 3313 then rootNormalQrMaskWords0028 p else
  []

def k3PrefixGroup0006TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 61 then rootTwistQrMaskWords0000 p else
  if p ≤ 2753 then rootTwistQrMaskWords0024 p else
  if p ≤ 2887 then rootTwistQrMaskWords0025 p else
  if p ≤ 3023 then rootTwistQrMaskWords0026 p else
  if p ≤ 3181 then rootTwistQrMaskWords0027 p else
  if p ≤ 3313 then rootTwistQrMaskWords0028 p else
  []

def k3PrefixGroup0006MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0000 ++
  rootMaskSemanticGroup0024 ++
  rootMaskSemanticGroup0025 ++
  rootMaskSemanticGroup0026 ++
  rootMaskSemanticGroup0027 ++
  rootMaskSemanticGroup0028

def k3PrefixGroup0006 : List (List ℕ) :=
  [[3, 2677],
    [3, 2683],
    [3, 2687],
    [3, 2689],
    [3, 2693],
    [3, 2699],
    [3, 2707],
    [3, 2711],
    [3, 2713],
    [3, 2719],
    [3, 2729],
    [3, 2731],
    [3, 2741],
    [3, 2749],
    [3, 2753],
    [3, 2767],
    [3, 2777],
    [3, 2789],
    [3, 2791],
    [3, 2797],
    [3, 2801],
    [3, 2803],
    [3, 2819],
    [3, 2833],
    [3, 2837],
    [3, 2843],
    [3, 2851],
    [3, 2857],
    [3, 2861],
    [3, 2879],
    [3, 2887],
    [3, 2897],
    [3, 2903],
    [3, 2909],
    [3, 2917],
    [3, 2927],
    [3, 2939],
    [3, 2953],
    [3, 2957],
    [3, 2963],
    [3, 2969],
    [3, 2971],
    [3, 2999],
    [3, 3001],
    [3, 3011],
    [3, 3019],
    [3, 3023],
    [3, 3037],
    [3, 3041],
    [3, 3049],
    [3, 3061],
    [3, 3067],
    [3, 3079],
    [3, 3083],
    [3, 3089],
    [3, 3109],
    [3, 3119],
    [3, 3121],
    [3, 3137],
    [3, 3163],
    [3, 3167],
    [3, 3169],
    [3, 3181],
    [3, 3187]]

theorem k3PrefixGroup0006_support_covered :
    k3PrefixGroup0006.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k3PrefixGroup0006MaskPrimes))) = true := by
  rfl

theorem k3PrefixGroup0006_passes :
    k3PrefixGroup0006.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup rootBaseWords 3) = true := by
  rfl

theorem k3PrefixGroup0006_mask_group0000_passes :
    rootMaskSemanticGroup0000.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0000_passes) p hp
  have hnormal : k3PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0000 p := by
    simp only [rootMaskSemanticGroup0000,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0006_mask_group0024_passes :
    rootMaskSemanticGroup0024.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0024_passes) p hp
  have hnormal : k3PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0024 p := by
    simp only [rootMaskSemanticGroup0024,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0024 p := by
    simp only [rootMaskSemanticGroup0024,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0006_mask_group0025_passes :
    rootMaskSemanticGroup0025.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0025_passes) p hp
  have hnormal : k3PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0025 p := by
    simp only [rootMaskSemanticGroup0025,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0025 p := by
    simp only [rootMaskSemanticGroup0025,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0006_mask_group0026_passes :
    rootMaskSemanticGroup0026.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0026_passes) p hp
  have hnormal : k3PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0026 p := by
    simp only [rootMaskSemanticGroup0026,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0026 p := by
    simp only [rootMaskSemanticGroup0026,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0006_mask_group0027_passes :
    rootMaskSemanticGroup0027.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0027_passes) p hp
  have hnormal : k3PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0027 p := by
    simp only [rootMaskSemanticGroup0027,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0027 p := by
    simp only [rootMaskSemanticGroup0027,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0006_mask_group0028_passes :
    rootMaskSemanticGroup0028.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0028_passes) p hp
  have hnormal : k3PrefixGroup0006NormalLookup p =
      rootNormalQrMaskWords0028 p := by
    simp only [rootMaskSemanticGroup0028,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k3PrefixGroup0006TwistLookup p =
      rootTwistQrMaskWords0028 p := by
    simp only [rootMaskSemanticGroup0028,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k3PrefixGroup0006_mask_primes_pass :
    k3PrefixGroup0006MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k3PrefixGroup0006NormalLookup
        k3PrefixGroup0006TwistLookup) = true := by
  simp only [k3PrefixGroup0006MaskPrimes, List.all_append]
  rw [k3PrefixGroup0006_mask_group0000_passes]
  rw [k3PrefixGroup0006_mask_group0024_passes]
  rw [k3PrefixGroup0006_mask_group0025_passes]
  rw [k3PrefixGroup0006_mask_group0026_passes]
  rw [k3PrefixGroup0006_mask_group0027_passes]
  rw [k3PrefixGroup0006_mask_group0028_passes]
  rfl

theorem k3PrefixGroup0006_certified
    {support : List ℕ} (hsupport : support ∈ k3PrefixGroup0006) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 3 support = true := by
  refine ⟨k3PrefixGroup0006NormalLookup,
    k3PrefixGroup0006TwistLookup, ?_,
    (List.all_eq_true.mp
      k3PrefixGroup0006_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k3PrefixGroup0006_support_covered) support hsupport
  have hmem : p ∈
      k3PrefixGroup0006MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k3PrefixGroup0006_mask_primes_pass) p hmem

#print axioms k3PrefixGroup0006_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
