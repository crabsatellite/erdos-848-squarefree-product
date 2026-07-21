import Erdos848.TailTenMillionKernelRootCheckerCore
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.CommonData

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k0PrefixGroup0000NormalLookup (p : ℕ) : List ℕ :=
  []

def k0PrefixGroup0000TwistLookup (p : ℕ) : List ℕ :=
  []

def k0PrefixGroup0000MaskPrimes : List ℕ :=
  []

def k0PrefixGroup0000 : List (List ℕ) :=
  [[]]

theorem k0PrefixGroup0000_support_covered :
    k0PrefixGroup0000.all (fun support =>
      support.all (fun p =>
        decide (p ∈ k0PrefixGroup0000MaskPrimes))) = true := by
  rfl

theorem k0PrefixGroup0000_passes :
    k0PrefixGroup0000.all
      (Erdos848.tenMillionKernelRootCorePrefixPasses
        k0PrefixGroup0000NormalLookup
        k0PrefixGroup0000TwistLookup rootBaseWords 0) = true := by
  rfl

theorem k0PrefixGroup0000_mask_primes_pass :
    k0PrefixGroup0000MaskPrimes.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        k0PrefixGroup0000NormalLookup
        k0PrefixGroup0000TwistLookup) = true := by
  rfl

theorem k0PrefixGroup0000_certified
    {support : List ℕ} (hsupport : support ∈ k0PrefixGroup0000) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 0 support = true := by
  refine ⟨k0PrefixGroup0000NormalLookup,
    k0PrefixGroup0000TwistLookup, ?_,
    (List.all_eq_true.mp
      k0PrefixGroup0000_passes) support hsupport⟩
  intro p hp
  have hcovered := (List.all_eq_true.mp
    k0PrefixGroup0000_support_covered) support hsupport
  have hmem : p ∈
      k0PrefixGroup0000MaskPrimes :=
    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)
  exact (List.all_eq_true.mp
    k0PrefixGroup0000_mask_primes_pass) p hmem

#print axioms k0PrefixGroup0000_certified

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
