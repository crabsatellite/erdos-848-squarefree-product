import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0048
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0049
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0050
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0051

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0012NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 6029 then rootNormalQrMaskWords0048 p else
  if p ≤ 6151 then rootNormalQrMaskWords0049 p else
  if p ≤ 6287 then rootNormalQrMaskWords0050 p else
  if p ≤ 6317 then rootNormalQrMaskWords0051 p else
  []

def k2PrefixGroup0012TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 6029 then rootTwistQrMaskWords0048 p else
  if p ≤ 6151 then rootTwistQrMaskWords0049 p else
  if p ≤ 6287 then rootTwistQrMaskWords0050 p else
  if p ≤ 6317 then rootTwistQrMaskWords0051 p else
  []

def k2PrefixGroup0012MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0048 ++
  rootMaskSemanticGroup0049 ++
  rootMaskSemanticGroup0050 ++
  rootMaskSemanticGroup0051

def k2PrefixGroup0012 : List (List ℕ) :=
  [[5861],
    [5867],
    [5869],
    [5879],
    [5881],
    [5897],
    [5903],
    [5923],
    [5927],
    [5939],
    [5953],
    [5981],
    [5987],
    [6007],
    [6011],
    [6029],
    [6037],
    [6043],
    [6047],
    [6053],
    [6067],
    [6073],
    [6079],
    [6089],
    [6091],
    [6101],
    [6113],
    [6121],
    [6131],
    [6133],
    [6143],
    [6151],
    [6163],
    [6173],
    [6197],
    [6199],
    [6203],
    [6211],
    [6217],
    [6221],
    [6229],
    [6247],
    [6257],
    [6263],
    [6269],
    [6271],
    [6277],
    [6287],
    [6299],
    [6301],
    [6311],
    [6317]]

theorem k2PrefixGroup0012_support_covered :
    k2PrefixGroup0012.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0012MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0012_passes :
    k2PrefixGroup0012.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0012NormalLookup
        k2PrefixGroup0012TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0012_mask_group0048_passes :
    rootMaskSemanticGroup0048.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0012NormalLookup
        k2PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0048_passes) p hp
  have hnormal : k2PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0048 p := by
    simp only [rootMaskSemanticGroup0048,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0048 p := by
    simp only [rootMaskSemanticGroup0048,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0012_mask_group0049_passes :
    rootMaskSemanticGroup0049.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0012NormalLookup
        k2PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0049_passes) p hp
  have hnormal : k2PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0049 p := by
    simp only [rootMaskSemanticGroup0049,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0049 p := by
    simp only [rootMaskSemanticGroup0049,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0012_mask_group0050_passes :
    rootMaskSemanticGroup0050.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0012NormalLookup
        k2PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0050_passes) p hp
  have hnormal : k2PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0050 p := by
    simp only [rootMaskSemanticGroup0050,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0050 p := by
    simp only [rootMaskSemanticGroup0050,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0012_mask_group0051_passes :
    rootMaskSemanticGroup0051.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0012NormalLookup
        k2PrefixGroup0012TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0051_passes) p hp
  have hnormal : k2PrefixGroup0012NormalLookup p =
      rootNormalQrMaskWords0051 p := by
    simp only [rootMaskSemanticGroup0051,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0012TwistLookup p =
      rootTwistQrMaskWords0051 p := by
    simp only [rootMaskSemanticGroup0051,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0012_mask_primes_pass :
    k2PrefixGroup0012MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0012NormalLookup
        k2PrefixGroup0012TwistLookup) = true := by
  simp only [k2PrefixGroup0012MaskPrimes, List.all_append]
  rw [k2PrefixGroup0012_mask_group0048_passes]
  rw [k2PrefixGroup0012_mask_group0049_passes]
  rw [k2PrefixGroup0012_mask_group0050_passes]
  rw [k2PrefixGroup0012_mask_group0051_passes]
  rfl

theorem k2PrefixGroup0012_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0012) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0012NormalLookup,
    k2PrefixGroup0012TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0012_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0012_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0012MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0012_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0012_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
