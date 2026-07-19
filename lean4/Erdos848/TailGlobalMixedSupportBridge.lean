import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticCertificate
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848

/-!
# Semantic endpoint bridge for the global mixed-support certificate

The finite certificate is evaluated at the first ambient endpoint compatible
with a retained support prefix.  The successor-prime table is certified
independently, so this comparison contains no scan over ambient values of `N`.
-/

theorem globalMixedSupportEndpoint_le
    {N : ℕ} (support : List ℕ)
    (hN : 5_000_000 ≤ N)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ N)
    (hDomain :
      ∀ p ∈ support.dropLast,
        p ∈ GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes) :
    globalMixedSupportEndpoint support.dropLast ≤ N := by
  unfold globalMixedSupportEndpoint
  apply max_le hN
  by_cases hSupport : support = []
  · subst support
    change 3 ≤ N
    omega
  by_cases hPrefix : support.dropLast = []
  · rw [hPrefix]
    change 3 ≤ N
    omega
  let p := support.dropLast.getLast hPrefix
  let q := support.getLast hSupport
  have hpMemPrefix : p ∈ support.dropLast := by
    exact List.getLast_mem hPrefix
  have hpMem : p ∈ support :=
    List.dropLast_subset support hpMemPrefix
  have hqMem : q ∈ support := List.getLast_mem hSupport
  have hpq : p < q :=
    hIncreasing.rel_dropLast_getLast hpMemPrefix
  have hext :=
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime_semantic
      (Or.inr (hDomain p hpMemPrefix))
  have hextLe :
      GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime p ≤ q :=
    hext.2.2 q (hPrimes q hqMem) hpq
  have hdecomp := List.dropLast_append_getLast hSupport
  have hprodEq := congrArg List.prod hdecomp
  simp only [List.prod_append, List.prod_cons, List.prod_nil, Nat.mul_one]
    at hprodEq
  unfold globalMixedSupportLowerProduct
  rw [List.getLast?_eq_getLast_of_ne_nil hPrefix]
  simp only [Option.getD_some]
  calc
    support.dropLast.prod *
          GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime p ≤
        support.dropLast.prod * q :=
      Nat.mul_le_mul_left _ hextLe
    _ = support.prod := hprodEq
    _ ≤ N := hProduct

#print axioms globalMixedSupportEndpoint_le

end Erdos848
