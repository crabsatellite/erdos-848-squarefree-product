import Erdos848.TailNegativePellGap

namespace Erdos848

/-!
# A kernel bound for the large-square tail

The untrusted diagonal producer truncates its Möbius--CRT calculation at a
square modulus `cutoff`.  This file proves the complementary bound without
enumerating the interval: an event

`s ^ 2 ∣ x ^ 2 + 1`, with `cutoff < s`,

is assigned the quotient `d = (x ^ 2 + 1) / s ^ 2`.  Each fixed quotient is
a negative-Pell fibre and therefore has at most thirteen events below two
billion.  The quotient itself lies in a short explicit range.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Pairs `(x, s)` in the strict box below `bound` for which a square larger
than `cutoff` divides `x ^ 2 + 1`. -/
def largeSquareEvents (cutoff bound : Nat) : Finset (Nat × Nat) :=
  ((Finset.range bound).product (Finset.range bound)).filter fun event =>
    0 < event.1 ∧
      cutoff < event.2 ∧
        event.2 ^ 2 ∣ event.1 ^ 2 + 1

theorem mem_largeSquareEvents_iff
    {cutoff bound : Nat} {event : Nat × Nat} :
    event ∈ largeSquareEvents cutoff bound ↔
      event.1 < bound ∧ event.2 < bound ∧
        0 < event.1 ∧ cutoff < event.2 ∧
          event.2 ^ 2 ∣ event.1 ^ 2 + 1 := by
  simp [largeSquareEvents]
  tauto

/-- The negative-Pell coefficient attached to a large-square event. -/
def largeSquareQuotient (event : Nat × Nat) : Nat :=
  (event.1 ^ 2 + 1) / event.2 ^ 2

theorem largeSquareEvent_equation
    {cutoff bound : Nat} {event : Nat × Nat}
    (hevent : event ∈ largeSquareEvents cutoff bound) :
    event.1 ^ 2 + 1 =
      largeSquareQuotient event * event.2 ^ 2 := by
  have hdiv := (mem_largeSquareEvents_iff.mp hevent).2.2.2.2
  simpa [largeSquareQuotient] using (Nat.div_mul_cancel hdiv).symm

/-- Quotient zero and quotient one are impossible for a positive
negative-Pell event. -/
theorem largeSquareQuotient_two_le
    {cutoff bound : Nat} {event : Nat × Nat}
    (hevent : event ∈ largeSquareEvents cutoff bound) :
    2 ≤ largeSquareQuotient event := by
  have hparts := mem_largeSquareEvents_iff.mp hevent
  have hxPositive : 0 < event.1 := hparts.2.2.1
  have hequation := largeSquareEvent_equation hevent
  have hquotientPositive : 0 < largeSquareQuotient event := by
    by_contra hnot
    have hzero : largeSquareQuotient event = 0 := by omega
    rw [hzero] at hequation
    norm_num at hequation
  have hquotientNotOne : largeSquareQuotient event ≠ 1 := by
    intro hone
    rw [hone] at hequation
    norm_num at hequation
    have hxLess : event.1 < event.2 := by
      by_contra hnot
      have hsLe : event.2 ≤ event.1 := by omega
      have hsSquareLe :
          event.2 ^ 2 ≤ event.1 ^ 2 :=
        Nat.pow_le_pow_left hsLe 2
      omega
    have hsuccLe : event.1 + 1 ≤ event.2 := by omega
    have hsuccSquareLe :
        (event.1 + 1) ^ 2 ≤ event.2 ^ 2 :=
      Nat.pow_le_pow_left hsuccLe 2
    nlinarith
  omega

/-- The quotient of every event is bounded by the square-box ratio. -/
theorem largeSquareQuotient_le
    {cutoff bound : Nat} {event : Nat × Nat}
    (hevent : event ∈ largeSquareEvents cutoff bound) :
    largeSquareQuotient event ≤
      bound ^ 2 / (cutoff + 1) ^ 2 := by
  have hparts := mem_largeSquareEvents_iff.mp hevent
  have hxBound : event.1 < bound := hparts.1
  have hsLower : cutoff + 1 ≤ event.2 := by
    omega
  have hxSuccLe : event.1 + 1 ≤ bound := by omega
  have hxSuccSquareLe :
      (event.1 + 1) ^ 2 ≤ bound ^ 2 :=
    Nat.pow_le_pow_left hxSuccLe 2
  have hxSquareLe :
      event.1 ^ 2 + 1 ≤ bound ^ 2 := by
    nlinarith
  have hsSquareLower :
      (cutoff + 1) ^ 2 ≤ event.2 ^ 2 :=
    Nat.pow_le_pow_left hsLower 2
  have hequation := largeSquareEvent_equation hevent
  have hmul :
      largeSquareQuotient event * (cutoff + 1) ^ 2 ≤
        bound ^ 2 := by
    calc
      largeSquareQuotient event * (cutoff + 1) ^ 2 ≤
          largeSquareQuotient event * event.2 ^ 2 :=
        Nat.mul_le_mul_left _ hsSquareLower
      _ = event.1 ^ 2 + 1 := hequation.symm
      _ ≤ bound ^ 2 := hxSquareLe
  exact (Nat.le_div_iff_mul_le (by positivity)).2 hmul

/-- One quotient fibre of the large-square event set. -/
def largeSquareEventFibre
    (cutoff bound d : Nat) : Finset (Nat × Nat) :=
  (largeSquareEvents cutoff bound).filter fun event =>
    largeSquareQuotient event = d

/-- Projection to `x` embeds every nonempty quotient fibre into its
negative-Pell `x`-coordinate set. -/
theorem largeSquareEventFibre_card_le_thirteen
    {cutoff bound d : Nat}
    (hbound : bound ≤ 2_000_000_000) :
    (largeSquareEventFibre cutoff bound d).card ≤ 13 := by
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
        (negativePellXValues_card_le_thirteen hd hbound)
  · have hempty : fibre = ∅ :=
      Finset.not_nonempty_iff_eq_empty.mp hnonempty
    simp [fibre, hempty]

/-- The entire large-square pair set is bounded by thirteen times the number
of possible negative-Pell coefficients. -/
theorem largeSquareEvents_card_le
    {cutoff bound : Nat}
    (hbound : bound ≤ 2_000_000_000) :
    (largeSquareEvents cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 + 1) * 13 := by
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
    _ ≤ ∑ _d ∈ coefficients, 13 :=
      Finset.sum_le_sum fun d _hd =>
        largeSquareEventFibre_card_le_thirteen
          (cutoff := cutoff) (d := d) hbound
    _ = coefficients.card * 13 := by simp
    _ = (bound ^ 2 / (cutoff + 1) ^ 2 + 1) * 13 := by
      simp [coefficients]

/-- The set of bad `x`-coordinates is the image of the event-pair set. -/
def largeSquareBadXValues (cutoff bound : Nat) : Finset Nat :=
  (largeSquareEvents cutoff bound).image Prod.fst

theorem largeSquareBadXValues_card_le
    {cutoff bound : Nat}
    (hbound : bound ≤ 2_000_000_000) :
    (largeSquareBadXValues cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 + 1) * 13 := by
  exact Finset.card_image_le.trans (largeSquareEvents_card_le hbound)

#print axioms largeSquareQuotient_two_le
#print axioms largeSquareEventFibre_card_le_thirteen
#print axioms largeSquareEvents_card_le
#print axioms largeSquareBadXValues_card_le

end Erdos848
