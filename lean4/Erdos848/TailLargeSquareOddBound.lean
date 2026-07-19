import Erdos848.TailLargeSquareEventBound

namespace Erdos848

/-!
# A sharper large-square bound for odd diagonal classes

If `x` is odd and `x ^ 2 + 1 = d * s ^ 2`, reduction modulo eight forces
`d % 8 = 2`.  Thus an odd diagonal class pays for only one eighth of the
negative-Pell coefficient fibres.  This removes the otherwise artificial
cost of charging every Pell fibre to a single odd residue cell.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma square_mod_eight_eq_one_of_odd
    {x : Nat} (hx : x % 2 = 1) :
    x ^ 2 % 8 = 1 := by
  have hcompat : x % 2 = x % 8 % 2 :=
    (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hcase : x % 8 <;>
    norm_num [Nat.pow_mod, hcase] at hcompat ⊢ <;> omega

theorem largeSquareQuotient_mod_eight_eq_two
    {cutoff bound : Nat} {event : Nat × Nat}
    (hevent : event ∈ largeSquareEvents cutoff bound)
    (hodd : event.1 % 2 = 1) :
    largeSquareQuotient event % 8 = 2 := by
  have hequation := largeSquareEvent_equation hevent
  have hmodEquation := congrArg (fun n : Nat => n % 8) hequation
  have hxmod : event.1 ^ 2 % 8 = 1 :=
    square_mod_eight_eq_one_of_odd hodd
  have hright :
      (largeSquareQuotient event * event.2 ^ 2) % 8 = 2 := by
    change (event.1 ^ 2 + 1) % 8 =
      (largeSquareQuotient event * event.2 ^ 2) % 8 at hmodEquation
    rw [Nat.add_mod, hxmod] at hmodEquation
    norm_num at hmodEquation
    exact hmodEquation.symm
  have hquotientRange : largeSquareQuotient event % 8 < 8 :=
    Nat.mod_lt _ (by norm_num)
  have hsRange : event.2 % 8 < 8 :=
    Nat.mod_lt _ (by norm_num)
  interval_cases hq : largeSquareQuotient event % 8 <;>
    interval_cases hs : event.2 % 8 <;>
      norm_num [Nat.mul_mod, Nat.pow_mod, hq, hs] at hright <;> omega

/-- The possible coefficients congruent to two modulo eight up to `q`. -/
def largeSquareOddCoefficients (q : Nat) : Finset Nat :=
  (Finset.range (q + 1)).filter fun d => d % 8 = 2

theorem largeSquareOddCoefficients_card_le (q : Nat) :
    (largeSquareOddCoefficients q).card ≤ q / 8 + 1 := by
  let coefficients := largeSquareOddCoefficients q
  let target := Finset.range (q / 8 + 1)
  have hmap : Set.MapsTo (fun d : Nat => d / 8)
      (coefficients : Set Nat) target := by
    intro d hd
    have hdRange : d < q + 1 :=
      Finset.mem_range.mp (Finset.mem_filter.mp hd).1
    apply Finset.mem_range.mpr
    exact Nat.lt_succ_of_le (Nat.div_le_div_right (by omega : d ≤ q))
  have hinjective : Set.InjOn (fun d : Nat => d / 8)
      (coefficients : Set Nat) := by
    intro d hd e he hquotient
    have hdmod : d % 8 = 2 := (Finset.mem_filter.mp hd).2
    have hemod : e % 8 = 2 := (Finset.mem_filter.mp he).2
    change d / 8 = e / 8 at hquotient
    calc
      d = d % 8 + 8 * (d / 8) := (Nat.mod_add_div d 8).symm
      _ = e % 8 + 8 * (e / 8) := by rw [hdmod, hemod, hquotient]
      _ = e := Nat.mod_add_div e 8
  have hcard :
      coefficients.card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun d : Nat => d / 8) hmap hinjective
  simpa [coefficients, target] using hcard

/-- Large-square events whose diagonal coordinate is odd. -/
def largeSquareOddEvents (cutoff bound : Nat) : Finset (Nat × Nat) :=
  (largeSquareEvents cutoff bound).filter fun event => event.1 % 2 = 1

def largeSquareOddEventFibre
    (cutoff bound d : Nat) : Finset (Nat × Nat) :=
  (largeSquareOddEvents cutoff bound).filter fun event =>
    largeSquareQuotient event = d

theorem largeSquareOddEventFibre_card_le_thirteen
    {cutoff bound d : Nat}
    (hbound : bound ≤ 2_000_000_000) :
    (largeSquareOddEventFibre cutoff bound d).card ≤ 13 := by
  apply (Finset.card_le_card ?_).trans
    (largeSquareEventFibre_card_le_thirteen
      (cutoff := cutoff) (bound := bound) (d := d) hbound)
  intro event hevent
  have hparts := Finset.mem_filter.mp hevent
  exact Finset.mem_filter.mpr
    ⟨(Finset.mem_filter.mp hparts.1).1, hparts.2⟩

theorem largeSquareOddEvents_card_le
    {cutoff bound : Nat}
    (hbound : bound ≤ 2_000_000_000) :
    (largeSquareOddEvents cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * 13 := by
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
    _ ≤ ∑ _d ∈ coefficients, 13 :=
      Finset.sum_le_sum fun d _hd =>
        largeSquareOddEventFibre_card_le_thirteen
          (cutoff := cutoff) (bound := bound) (d := d) hbound
    _ = coefficients.card * 13 := by simp
    _ ≤ (q / 8 + 1) * 13 := by
      exact Nat.mul_le_mul_right 13
        (largeSquareOddCoefficients_card_le q)
    _ = (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * 13 := by
      rfl

/-- Odd bad `x`-coordinates coming from a square above the producer cutoff. -/
def largeSquareOddBadXValues (cutoff bound : Nat) : Finset Nat :=
  (largeSquareBadXValues cutoff bound).filter fun x => x % 2 = 1

theorem largeSquareOddBadXValues_card_le
    {cutoff bound : Nat}
    (hbound : bound ≤ 2_000_000_000) :
    (largeSquareOddBadXValues cutoff bound).card ≤
      (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * 13 := by
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
    _ ≤ (bound ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * 13 :=
      largeSquareOddEvents_card_le hbound

#print axioms largeSquareQuotient_mod_eight_eq_two
#print axioms largeSquareOddCoefficients_card_le
#print axioms largeSquareOddEvents_card_le
#print axioms largeSquareOddBadXValues_card_le

end Erdos848
