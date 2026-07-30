import Erdos848.TailHighNegativePellCapacity
import Erdos848.TailLargeSquareOddBound

namespace Erdos848

/-!
# An unbounded large-square payment

This is the high-range form of `TailLargeSquareEventBound`.  The finite
constant `13` is replaced by the kernel-computed capacity `Nat.clog 5 bound`.
-/

theorem highLargeSquareEventFibre_card_le_clog
    {cutoff bound d : Nat} :
    (largeSquareEventFibre cutoff bound d).card ≤ Nat.clog 5 bound := by
  classical
  let fibre := largeSquareEventFibre cutoff bound d
  by_cases hnonempty : fibre.Nonempty
  · obtain ⟨anchor, hanchor⟩ := hnonempty
    have hanchorEvent :
        anchor ∈ largeSquareEvents cutoff bound :=
      (Finset.mem_filter.mp hanchor).1
    have hanchorQuotient :
        largeSquareQuotient anchor = d :=
      (Finset.mem_filter.mp hanchor).2
    have hd : 2 ≤ d := by
      simpa [hanchorQuotient] using
        largeSquareQuotient_two_le hanchorEvent
    have hmap : Set.MapsTo Prod.fst
        (fibre : Set (Nat × Nat))
        (negativePellXValues d bound) := by
      intro event hevent
      have heventEvent :
          event ∈ largeSquareEvents cutoff bound :=
        (Finset.mem_filter.mp hevent).1
      have heventQuotient :
          largeSquareQuotient event = d :=
        (Finset.mem_filter.mp hevent).2
      have hparts := mem_largeSquareEvents_iff.mp heventEvent
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr hparts.1, hparts.2.2.1,
        event.2, Finset.mem_range.mpr hparts.2.1, ?_⟩
      simpa [heventQuotient] using
        largeSquareEvent_equation heventEvent
    have hinjective : Set.InjOn Prod.fst
        (fibre : Set (Nat × Nat)) := by
      intro left hleft right hright hfirst
      have hleftEvent :
          left ∈ largeSquareEvents cutoff bound :=
        (Finset.mem_filter.mp hleft).1
      have hrightEvent :
          right ∈ largeSquareEvents cutoff bound :=
        (Finset.mem_filter.mp hright).1
      have hleftQuotient :
          largeSquareQuotient left = d :=
        (Finset.mem_filter.mp hleft).2
      have hrightQuotient :
          largeSquareQuotient right = d :=
        (Finset.mem_filter.mp hright).2
      have hleftEquation := largeSquareEvent_equation hleftEvent
      have hrightEquation := largeSquareEvent_equation hrightEvent
      have hsquares :
          d * left.2 ^ 2 = d * right.2 ^ 2 := by
        calc
          d * left.2 ^ 2 = left.1 ^ 2 + 1 := by
            simpa [hleftQuotient] using hleftEquation.symm
          _ = right.1 ^ 2 + 1 := by rw [hfirst]
          _ = d * right.2 ^ 2 := by
            simpa [hrightQuotient] using hrightEquation
      have hsecondPowers :
          left.2 ^ 2 = right.2 ^ 2 :=
        Nat.mul_left_cancel (by omega : 0 < d) hsquares
      apply Prod.ext
      · exact hfirst
      · exact Nat.pow_left_injective (by norm_num) hsecondPowers
    exact (Finset.card_le_card_of_injOn
      Prod.fst hmap hinjective).trans
        (negativePellXValues_card_le_clog hd)
  · have hempty : fibre = ∅ :=
      Finset.not_nonempty_iff_eq_empty.mp hnonempty
    simp [fibre, hempty]

theorem highLargeSquareEvents_card_le
    {cutoff bound : Nat} :
    (largeSquareEvents cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 + 1) * Nat.clog 5 bound := by
  classical
  let events := largeSquareEvents cutoff bound
  let coefficients :=
    Finset.range (bound ^ 2 / (cutoff + 1) ^ 2 + 1)
  have hmaps : Set.MapsTo largeSquareQuotient
      (events : Set (Nat × Nat)) coefficients := by
    intro event hevent
    apply Finset.mem_range.mpr
    exact Nat.lt_succ_of_le (largeSquareQuotient_le hevent)
  have hpartition :
      events.card =
        ∑ d ∈ coefficients,
          (largeSquareEventFibre cutoff bound d).card := by
    simpa [events, coefficients, largeSquareEventFibre] using
      Finset.card_eq_sum_card_fiberwise hmaps
  calc
    (largeSquareEvents cutoff bound).card =
        ∑ d ∈ coefficients,
          (largeSquareEventFibre cutoff bound d).card := by
      simpa [events] using hpartition
    _ ≤ ∑ _d ∈ coefficients, Nat.clog 5 bound :=
      Finset.sum_le_sum fun _d _hd =>
        highLargeSquareEventFibre_card_le_clog
          (cutoff := cutoff) (bound := bound)
    _ = coefficients.card * Nat.clog 5 bound := by simp
    _ = (bound ^ 2 / (cutoff + 1) ^ 2 + 1) *
        Nat.clog 5 bound := by
      simp [coefficients]

theorem highLargeSquareBadXValues_card_le
    {cutoff bound : Nat} :
    (largeSquareBadXValues cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 + 1) * Nat.clog 5 bound := by
  exact Finset.card_image_le.trans highLargeSquareEvents_card_le

theorem highLargeSquareOddEventFibre_card_le_clog
    {cutoff bound d : Nat} :
    (largeSquareOddEventFibre cutoff bound d).card ≤
      Nat.clog 5 bound := by
  apply (Finset.card_le_card ?_).trans
    (highLargeSquareEventFibre_card_le_clog
      (cutoff := cutoff) (bound := bound) (d := d))
  intro event hevent
  have hparts := Finset.mem_filter.mp hevent
  exact Finset.mem_filter.mpr
    ⟨(Finset.mem_filter.mp hparts.1).1, hparts.2⟩

theorem highLargeSquareOddEvents_card_le
    {cutoff bound : Nat} :
    (largeSquareOddEvents cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) *
        Nat.clog 5 bound := by
  classical
  let q := bound ^ 2 / (cutoff + 1) ^ 2
  let events := largeSquareOddEvents cutoff bound
  let coefficients := largeSquareOddCoefficients q
  have hmaps : Set.MapsTo largeSquareQuotient
      (events : Set (Nat × Nat)) coefficients := by
    intro event hevent
    have hparts := Finset.mem_filter.mp hevent
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr
      (Nat.lt_succ_of_le (largeSquareQuotient_le hparts.1)), ?_⟩
    exact largeSquareQuotient_mod_eight_eq_two hparts.1 hparts.2
  have hpartition :
      events.card =
        ∑ d ∈ coefficients,
          (largeSquareOddEventFibre cutoff bound d).card := by
    simpa [events, coefficients, largeSquareOddEventFibre] using
      Finset.card_eq_sum_card_fiberwise hmaps
  calc
    (largeSquareOddEvents cutoff bound).card =
        ∑ d ∈ coefficients,
          (largeSquareOddEventFibre cutoff bound d).card := by
      simpa [events] using hpartition
    _ ≤ ∑ _d ∈ coefficients, Nat.clog 5 bound :=
      Finset.sum_le_sum fun _d _hd =>
        highLargeSquareOddEventFibre_card_le_clog
          (cutoff := cutoff) (bound := bound)
    _ = coefficients.card * Nat.clog 5 bound := by simp
    _ ≤ (q / 8 + 1) * Nat.clog 5 bound := by
      exact Nat.mul_le_mul_right (Nat.clog 5 bound)
        (largeSquareOddCoefficients_card_le q)
    _ = (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) *
        Nat.clog 5 bound := by
      rfl

theorem highLargeSquareOddBadXValues_card_le
    {cutoff bound : Nat} :
    (largeSquareOddBadXValues cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) *
        Nat.clog 5 bound := by
  have hsubset :
      largeSquareOddBadXValues cutoff bound ⊆
        (largeSquareOddEvents cutoff bound).image Prod.fst := by
    intro x hx
    have hparts := Finset.mem_filter.mp hx
    obtain ⟨event, hevent, hfirst⟩ :=
      Finset.mem_image.mp hparts.1
    apply Finset.mem_image.mpr
    refine ⟨event, Finset.mem_filter.mpr ⟨hevent, ?_⟩, hfirst⟩
    simpa [hfirst] using hparts.2
  calc
    (largeSquareOddBadXValues cutoff bound).card ≤
        ((largeSquareOddEvents cutoff bound).image Prod.fst).card :=
      Finset.card_le_card hsubset
    _ ≤ (largeSquareOddEvents cutoff bound).card :=
      Finset.card_image_le
    _ ≤ (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) *
        Nat.clog 5 bound :=
      highLargeSquareOddEvents_card_le

def highLargeSquarePayment
    (cutoff bound : Nat) (odd : Bool) : Nat :=
  if odd then
    (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * Nat.clog 5 bound
  else
    (bound ^ 2 / (cutoff + 1) ^ 2 + 1) * Nat.clog 5 bound

#print axioms highLargeSquareEventFibre_card_le_clog
#print axioms highLargeSquareBadXValues_card_le
#print axioms highLargeSquareOddBadXValues_card_le

end Erdos848
