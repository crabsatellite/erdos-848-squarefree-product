import Erdos848.TailHallSieveBridge
import Erdos848.HallPartition
import Erdos848.TailFiveMillionRootSupportClassification

namespace Erdos848

/-!
# Lightweight actual pivot support

These definitions and structural lemmas are used by the global all-`N` tail.
They are separated from `TailFiveMillionActualTail`, whose finite-prefix Hall
assembly imports the large diagonal certificate.
-/

noncomputable def twoBaseHighTailSquarePoints
    (N pivot upper : Nat) : Finset Nat := by
  classical
  exact (lowBaseSet N).filter (tailSquarePrimeEvent upper pivot)

def fiveMillionPivotSupportFinset (pivot : Nat) : Finset Nat :=
  pivot.primeFactors.filter fun q => q ≠ 2 ∧ q ≠ 5

def fiveMillionPivotSupport (pivot : Nat) : List Nat :=
  (fiveMillionPivotSupportFinset pivot).sort

lemma fiveMillionPivotSupport_primes (pivot : Nat) :
    ∀ q ∈ fiveMillionPivotSupport pivot, FiveMillionSupportPrime q := by
  intro q hq
  have hqFin : q ∈ fiveMillionPivotSupportFinset pivot := by
    simpa [fiveMillionPivotSupport] using hq
  have hparts := Finset.mem_filter.mp hqFin
  have hprime := Nat.prime_of_mem_primeFactors hparts.1
  exact ⟨hprime, hprime.odd_of_ne_two hparts.2.1, hparts.2.2⟩

lemma fiveMillionPivotSupport_dvd
    {pivot q : Nat} (hq : q ∈ fiveMillionPivotSupport pivot) :
    q ∣ pivot := by
  have hqFin : q ∈ fiveMillionPivotSupportFinset pivot := by
    simpa [fiveMillionPivotSupport] using hq
  exact Nat.dvd_of_mem_primeFactors (Finset.mem_filter.mp hqFin).1

lemma fiveMillionPivotSupport_increasing (pivot : Nat) :
    (fiveMillionPivotSupport pivot).Pairwise (· < ·) := by
  exact (Finset.sortedLT_sort
    (fiveMillionPivotSupportFinset pivot)).pairwise

lemma fiveMillionPivotSupport_prod_dvd (pivot : Nat) :
    (fiveMillionPivotSupport pivot).prod ∣ pivot := by
  let support := fiveMillionPivotSupportFinset pivot
  have hsubset : support ⊆ pivot.primeFactors := Finset.filter_subset _ _
  have hsortProd : (support.sort).prod = ∏ q ∈ support, q := by
    calc
      (support.sort).prod = support.toList.prod :=
        (Finset.sort_perm_toList support _).prod_eq
      _ = ∏ q ∈ support, q := Finset.prod_toList support
  have hfiltered : (∏ q ∈ support, q) ∣ ∏ q ∈ pivot.primeFactors, q := by
    simpa using
      (Finset.prod_dvd_prod_of_subset support pivot.primeFactors id hsubset)
  rw [fiveMillionPivotSupport, hsortProd]
  exact hfiltered.trans (Nat.prod_primeFactors_dvd pivot)

lemma fiveMillionPivotSupport_prod_le
    {pivot upper : Nat} (hpivotPos : 0 < pivot) (hpivot : pivot <= upper) :
    (fiveMillionPivotSupport pivot).prod <= upper := by
  exact (Nat.le_of_dvd hpivotPos
    (fiveMillionPivotSupport_prod_dvd pivot)).trans hpivot

/-- A prime factor of the pivot forces the raw complementary quotient to be
a nonzero square modulo that prime. -/
lemma quotient_modEq_square_of_prime_dvd_pivot
    {pivot point p m q : Nat}
    (hqPrime : Nat.Prime q) (hqPivot : q ∣ pivot)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    ¬ q ∣ m ∧ ∃ root : Nat, root ^ 2 ≡ m [MOD q] := by
  letI : Fact (Nat.Prime q) := ⟨hqPrime⟩
  have heqZ : (p : ZMod q) ^ 2 * (m : ZMod q) = 1 := by
    have hcast := congrArg (fun value : Nat => (value : ZMod q)) hequation
    have hpivotZ : (pivot : ZMod q) = 0 :=
      (ZMod.natCast_eq_zero_iff pivot q).mpr hqPivot
    push_cast at hcast
    rw [hpivotZ] at hcast
    simpa using hcast
  have hpZ : (p : ZMod q) ≠ 0 := by
    intro hpZero
    rw [hpZero] at heqZ
    simp at heqZ
  have hmNotDvd : ¬ q ∣ m := by
    intro hqm
    have hmZero : (m : ZMod q) = 0 :=
      (ZMod.natCast_eq_zero_iff m q).mpr hqm
    rw [hmZero] at heqZ
    simp at heqZ
  let rootZ : ZMod q := (p : ZMod q)⁻¹
  have hrootZ : rootZ ^ 2 = (m : ZMod q) := by
    have hinv : rootZ * (p : ZMod q) = 1 := inv_mul_cancel₀ hpZ
    calc
      rootZ ^ 2 = rootZ ^ 2 * 1 := by ring
      _ = rootZ ^ 2 * ((p : ZMod q) ^ 2 * (m : ZMod q)) := by rw [heqZ]
      _ = (rootZ * (p : ZMod q)) ^ 2 * (m : ZMod q) := by ring
      _ = (m : ZMod q) := by rw [hinv]; simp
  let root := rootZ.val
  refine ⟨hmNotDvd, root, ?_⟩
  apply (ZMod.natCast_eq_natCast_iff (root ^ 2) m q).mp
  simp only [Nat.cast_pow]
  rw [show (root : ZMod q) = rootZ from ZMod.natCast_zmod_val rootZ]
  exact hrootZ

#print axioms fiveMillionPivotSupport_primes
#print axioms fiveMillionPivotSupport_prod_le
#print axioms quotient_modEq_square_of_prime_dvd_pivot

end Erdos848
