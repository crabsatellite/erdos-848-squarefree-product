import Mathlib

namespace Erdos848

/-!
Small kernel checker for the exact prime-count jumps used by the transformed-
root envelopes.  A generated certificate lists every prime through `bound`
and supplies one nontrivial divisor for each omitted integer.  The checker,
not the producer's `prime_pi`, proves completeness and the exact value of
`Nat.primeCounting`.
-/

structure BoundedPrimeCountingCertificate (bound : ℕ) where
  listed : Finset ℕ
  factorWitness : ℕ → ℕ
  listed_le : ∀ {p}, p ∈ listed → p ≤ bound
  listed_prime : ∀ {p}, p ∈ listed → Nat.Prime p
  omitted_factor : ∀ {n}, 2 ≤ n → n ≤ bound → n ∉ listed →
    2 ≤ factorWitness n ∧ factorWitness n < n ∧ factorWitness n ∣ n

namespace BoundedPrimeCountingCertificate

variable {bound : ℕ}

theorem listed_eq_primesLE
    (certificate : BoundedPrimeCountingCertificate bound) :
    certificate.listed = Nat.primesLE bound := by
  ext n
  constructor
  · intro hn
    exact Nat.mem_primesLE.mpr
      ⟨certificate.listed_le hn, certificate.listed_prime hn⟩
  · intro hn
    rcases Nat.mem_primesLE.mp hn with ⟨hnbound, hnprime⟩
    by_contra hnotListed
    obtain ⟨hwTwo, hwLt, hwDvd⟩ := certificate.omitted_factor
      hnprime.two_le hnbound hnotListed
    rcases hnprime.eq_one_or_self_of_dvd _ hwDvd with hwOne | hwSelf
    · omega
    · omega

theorem listed_card_eq_primeCounting
    (certificate : BoundedPrimeCountingCertificate bound) :
    certificate.listed.card = bound.primeCounting := by
  rw [certificate.listed_eq_primesLE]
  exact Nat.primesLE_card_eq_primeCounting bound

theorem primeCounting_eq_of_listed_card
    (certificate : BoundedPrimeCountingCertificate bound)
    {count : ℕ} (hcard : certificate.listed.card = count) :
    bound.primeCounting = count := by
  rw [← hcard, certificate.listed_card_eq_primeCounting]

end BoundedPrimeCountingCertificate

/-- Exact conversion of a prime-count difference into the cardinality of the
literal prime interval. -/
theorem primeCounting_sub_eq_card_sdiff
    {cutoff Y : ℕ} (hcutoff : cutoff ≤ Y) :
    Y.primeCounting - cutoff.primeCounting =
      (Nat.primesLE Y \ Nat.primesLE cutoff).card := by
  have hsubset : Nat.primesLE cutoff ⊆ Nat.primesLE Y := by
    intro p hp
    rcases Nat.mem_primesLE.mp hp with ⟨hpCutoff, hpPrime⟩
    exact Nat.mem_primesLE.mpr ⟨hpCutoff.trans hcutoff, hpPrime⟩
  rw [Finset.card_sdiff_of_subset hsubset,
    Nat.primesLE_card_eq_primeCounting,
    Nat.primesLE_card_eq_primeCounting]

end Erdos848
