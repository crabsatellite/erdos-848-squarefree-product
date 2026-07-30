import Erdos848.TailNegativePellGap

namespace Erdos848

/-!
# An unbounded integer capacity for negative-Pell fibres

The finite two-billion checker used the constant capacity `13`.  Above that
range the same kernel proof gives a logarithmic capacity.  We state it with
`Nat.clog` so that later endpoint certificates contain only integer
arithmetic and no trusted real-log evaluation.
-/

theorem card_le_clog_five_of_pairwise_left_five
    {values : Finset Nat} {bound : Nat}
    (hpositive : ∀ x ∈ values, 0 < x)
    (hupper : ∀ x ∈ values, x < bound)
    (hfive : ∀ x ∈ values, ∀ y ∈ values, x < y → 5 * x < y) :
    values.card ≤ Nat.clog 5 bound := by
  classical
  by_cases hempty : values = ∅
  · simp [hempty]
  have hcardPositive : 0 < values.card := by
    exact Finset.card_pos.mpr (Finset.nonempty_iff_ne_empty.mpr hempty)
  let e : Fin values.card ↪o Nat := values.orderEmbOfFin rfl
  have hmem (i : Fin values.card) : e i ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i
  have hpow :
      ∀ k : Nat, ∀ hk : k < values.card,
        5 ^ k ≤ e ⟨k, hk⟩ := by
    intro k
    induction k with
    | zero =>
        intro hk
        simpa using hpositive (e ⟨0, hk⟩) (hmem ⟨0, hk⟩)
    | succ k ih =>
        intro hk
        have hkPrevious : k < values.card := by omega
        let previous : Fin values.card := ⟨k, hkPrevious⟩
        let next : Fin values.card := ⟨k + 1, hk⟩
        have hindex : previous < next := by
          simp [previous, next]
        have hstep :
            5 * e previous < e next :=
          hfive (e previous) (hmem previous) (e next) (hmem next)
            (e.strictMono hindex)
        have hprevious : 5 ^ k ≤ e previous := by
          simpa [previous] using ih hkPrevious
        have :
            5 ^ (k + 1) < e next := by
          simpa [Nat.pow_succ, Nat.mul_comm] using
            (lt_of_le_of_lt (Nat.mul_le_mul_left 5 hprevious) hstep)
        simpa [next] using this.le
  let last : Nat := values.card - 1
  have hlastIndex : last < values.card := by
    dsimp [last]
    omega
  have hpowLast : 5 ^ last ≤ e ⟨last, hlastIndex⟩ :=
    hpow last hlastIndex
  have hlastUpper : e ⟨last, hlastIndex⟩ < bound :=
    hupper (e ⟨last, hlastIndex⟩) (hmem ⟨last, hlastIndex⟩)
  have hpowerBelow : 5 ^ last < bound :=
    hpowLast.trans_lt hlastUpper
  have hlastBelowLog : last < Nat.clog 5 bound :=
    (Nat.lt_clog_iff_pow_lt (by norm_num)).2 hpowerBelow
  dsimp [last] at hlastBelowLog
  omega

theorem negativePellXValues_card_le_clog
    {d bound : Nat} (hd : 2 ≤ d) :
    (negativePellXValues d bound).card ≤ Nat.clog 5 bound := by
  classical
  apply card_le_clog_five_of_pairwise_left_five
  · intro x hx
    exact (Finset.mem_filter.mp hx).2.1
  · intro x hx
    exact Finset.mem_range.mp (Finset.mem_filter.mp hx).1
  · intro x hx y hy hxyOrder
    rcases Finset.mem_filter.mp hx with
      ⟨_hxBound, hxPositive, xWitness, _hxWitnessBound, hxEquation⟩
    rcases Finset.mem_filter.mp hy with
      ⟨_hyBound, hyPositive, yWitness, _hyWitnessBound, hyEquation⟩
    have hxWitnessPositive : 0 < xWitness := by
      by_contra hzero
      have : xWitness = 0 := by omega
      subst xWitness
      norm_num at hxEquation
    have hyWitnessPositive : 0 < yWitness := by
      by_contra hzero
      have : yWitness = 0 := by omega
      subst yWitness
      norm_num at hyEquation
    exact negativePell_x_growth_five hd hxPositive hxWitnessPositive
      hyPositive hyWitnessPositive hxEquation hyEquation hxyOrder

#print axioms card_le_clog_five_of_pairwise_left_five
#print axioms negativePellXValues_card_le_clog

end Erdos848
