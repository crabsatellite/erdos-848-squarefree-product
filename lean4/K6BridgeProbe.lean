import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0000

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k6PrefixGroup0000StructuralPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2)) &&
    row.1.all fun p => decide (p ≤ 733)

theorem k6PrefixGroup0000_structural_passes :
    k6PrefixGroup0000.all k6PrefixGroup0000StructuralPasses = true := by
  rfl

theorem k6PrefixGroup0000NormalLookup_eq_global
    {p : ℕ} (hp : p ≤ 733) :
    k6PrefixGroup0000NormalLookup p = normalQrMaskWords p := by
  by_cases h0 : p ≤ 61
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0]
  by_cases h1 : p ≤ 139
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1]
  by_cases h2 : p ≤ 229
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1, h2]
  by_cases h3 : p ≤ 317
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1, h2, h3]
  by_cases h4 : p ≤ 421
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1, h2, h3, h4]
  by_cases h5 : p ≤ 521
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1, h2, h3, h4,
      h5]
  by_cases h6 : p ≤ 619
  · simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1, h2, h3, h4,
      h5, h6]
  have h7 : p ≤ 733 := hp
  simp [k6PrefixGroup0000NormalLookup, normalQrMaskWords, h0, h1, h2, h3, h4,
    h5, h6, h7]

theorem k6PrefixGroup0000TwistLookup_eq_global
    {p : ℕ} (hp : p ≤ 733) :
    k6PrefixGroup0000TwistLookup p = twistQrMaskWords p := by
  by_cases h0 : p ≤ 61
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0]
  by_cases h1 : p ≤ 139
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1]
  by_cases h2 : p ≤ 229
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1, h2]
  by_cases h3 : p ≤ 317
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1, h2, h3]
  by_cases h4 : p ≤ 421
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1, h2, h3, h4]
  by_cases h5 : p ≤ 521
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1, h2, h3, h4,
      h5]
  by_cases h6 : p ≤ 619
  · simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1, h2, h3, h4,
      h5, h6]
  have h7 : p ≤ 733 := hp
  simp [k6PrefixGroup0000TwistLookup, twistQrMaskWords, h0, h1, h2, h3, h4,
    h5, h6, h7]

theorem k6PrefixGroup0000_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k6PrefixGroup0000) :
    Erdos848.globalMixedSupportPrefixPasses 6 row.1 = true := by
  have hstruct := (List.all_eq_true.mp
    k6PrefixGroup0000_structural_passes) row hrow
  have hstruct' := Bool.and_eq_true_iff.mp hstruct
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hstruct'.1
  have hsupport : ∀ p ∈ row.1, p ≤ 733 := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hstruct'.2) p hp)
  have hleaf := (List.all_eq_true.mp k6PrefixGroup0000_passes) row hrow
  unfold k6PrefixGroup0000Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k6PrefixGroup0000NormalLookup normalQrMaskWords
    k6PrefixGroup0000TwistLookup twistQrMaskWords 6
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k6PrefixGroup0000NormalLookup_eq_global
      (hsupport p (List.mem_filter.mp hp).1))
    (fun p hp => k6PrefixGroup0000TwistLookup_eq_global
      (hsupport p (List.mem_filter.mp hp).1))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k6PrefixGroup0000_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
