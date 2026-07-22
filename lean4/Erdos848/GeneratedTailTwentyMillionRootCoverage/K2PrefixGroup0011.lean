import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData
import Erdos848.TailTwentyMillionRootMaskCongr
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0044
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0045
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0046
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0047

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0011NormalLookup (p : ℕ) : List ℕ :=
  if p ≤ 5471 then rootNormalQrMaskWords0044 p else
  if p ≤ 5591 then rootNormalQrMaskWords0045 p else
  if p ≤ 5737 then rootNormalQrMaskWords0046 p else
  if p ≤ 5857 then rootNormalQrMaskWords0047 p else
  []

def k2PrefixGroup0011TwistLookup (p : ℕ) : List ℕ :=
  if p ≤ 5471 then rootTwistQrMaskWords0044 p else
  if p ≤ 5591 then rootTwistQrMaskWords0045 p else
  if p ≤ 5737 then rootTwistQrMaskWords0046 p else
  if p ≤ 5857 then rootTwistQrMaskWords0047 p else
  []

def k2PrefixGroup0011MaskPrimes : List ℕ :=
  rootMaskSemanticGroup0044 ++
  rootMaskSemanticGroup0045 ++
  rootMaskSemanticGroup0046 ++
  rootMaskSemanticGroup0047

def k2PrefixGroup0011 : List (List ℕ) :=
  [[5347],
    [5351],
    [5381],
    [5387],
    [5393],
    [5399],
    [5407],
    [5413],
    [5417],
    [5419],
    [5431],
    [5437],
    [5441],
    [5443],
    [5449],
    [5471],
    [5477],
    [5479],
    [5483],
    [5501],
    [5503],
    [5507],
    [5519],
    [5521],
    [5527],
    [5531],
    [5557],
    [5563],
    [5569],
    [5573],
    [5581],
    [5591],
    [5623],
    [5639],
    [5641],
    [5647],
    [5651],
    [5653],
    [5657],
    [5659],
    [5669],
    [5683],
    [5689],
    [5693],
    [5701],
    [5711],
    [5717],
    [5737],
    [5741],
    [5743],
    [5749],
    [5779],
    [5783],
    [5791],
    [5801],
    [5807],
    [5813],
    [5821],
    [5827],
    [5839],
    [5843],
    [5849],
    [5851],
    [5857]]

theorem k2PrefixGroup0011_support_covered :
    k2PrefixGroup0011.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k2PrefixGroup0011MaskPrimes))) = true := by
  rfl

theorem k2PrefixGroup0011_passes :
    k2PrefixGroup0011.all
      (Erdos848.twentyMillionRootCorePrefixPasses
        k2PrefixGroup0011NormalLookup
        k2PrefixGroup0011TwistLookup rootBaseWords 2) = true := by
  rfl

theorem k2PrefixGroup0011_mask_group0044_passes :
    rootMaskSemanticGroup0044.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0011NormalLookup
        k2PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0044_passes) p hp
  have hnormal : k2PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0044 p := by
    simp only [rootMaskSemanticGroup0044,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0044 p := by
    simp only [rootMaskSemanticGroup0044,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0011_mask_group0045_passes :
    rootMaskSemanticGroup0045.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0011NormalLookup
        k2PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0045_passes) p hp
  have hnormal : k2PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0045 p := by
    simp only [rootMaskSemanticGroup0045,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0045 p := by
    simp only [rootMaskSemanticGroup0045,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0011_mask_group0046_passes :
    rootMaskSemanticGroup0046.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0011NormalLookup
        k2PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0046_passes) p hp
  have hnormal : k2PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0046 p := by
    simp only [rootMaskSemanticGroup0046,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0046 p := by
    simp only [rootMaskSemanticGroup0046,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0011_mask_group0047_passes :
    rootMaskSemanticGroup0047.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0011NormalLookup
        k2PrefixGroup0011TwistLookup) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0047_passes) p hp
  have hnormal : k2PrefixGroup0011NormalLookup p =
      rootNormalQrMaskWords0047 p := by
    simp only [rootMaskSemanticGroup0047,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have htwist : k2PrefixGroup0011TwistLookup p =
      rootTwistQrMaskWords0047 p := by
    simp only [rootMaskSemanticGroup0047,
      List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem k2PrefixGroup0011_mask_primes_pass :
    k2PrefixGroup0011MaskPrimes.all
      (Erdos848.twentyMillionRootMaskPassesWith
        k2PrefixGroup0011NormalLookup
        k2PrefixGroup0011TwistLookup) = true := by
  simp only [k2PrefixGroup0011MaskPrimes, List.all_append]
  rw [k2PrefixGroup0011_mask_group0044_passes]
  rw [k2PrefixGroup0011_mask_group0045_passes]
  rw [k2PrefixGroup0011_mask_group0046_passes]
  rw [k2PrefixGroup0011_mask_group0047_passes]
  rfl

theorem k2PrefixGroup0011_certified
    {support : List ℕ} (hsupport : support ∈ k2PrefixGroup0011) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  refine ⟨k2PrefixGroup0011NormalLookup,
    k2PrefixGroup0011TwistLookup, ?_,
    (List.all_eq_true.mp
      k2PrefixGroup0011_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k2PrefixGroup0011_support_covered) support hsupport
  have hmem : p ∈
      k2PrefixGroup0011MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k2PrefixGroup0011_mask_primes_pass) p hmem

#print axioms k2PrefixGroup0011_certified

end Erdos848.GeneratedTailTwentyMillionRootCoverage
