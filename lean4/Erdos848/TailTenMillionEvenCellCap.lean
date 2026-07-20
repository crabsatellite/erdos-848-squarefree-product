import Erdos848.TailPaperValuationChargeBridge
import Erdos848.TailTenMillionBudget
import Erdos848.TailFiveMillionResidualCore

namespace Erdos848

/-!
# The uniform ten-million cell cap

The external search only suggests the gap `1_000_001`.  The cap and its
normalized payment are proved here from first principles and are shared by
the one-cell, two-cell, and final even-allocation arguments.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def tenMillionClosePairBucketCap (N : Nat) : Nat :=
  (N - 1) / 1_000_001 + 1

@[simp] theorem paperModNineCell_eq_oddModNineResidue (x : Nat) :
    paperModNineCell x = oddModNineResidue x := by
  apply Fin.ext
  simp [paperModNineCell_val, oddModNineResidue]

theorem tenMillionClosePairBucketCap_positive (N : Nat) :
    0 < tenMillionClosePairBucketCap N := by
  unfold tenMillionClosePairBucketCap
  omega

theorem tenMillionClosePairBucketCap_ratio_le_cellCharge
    {N : Nat} (hLower : tenMillionLower ≤ N) :
    (tenMillionClosePairBucketCap N : Rat) / N ≤
      tenMillionCellCharge := by
  have hNposNat : 0 < N := by
    exact lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv :
      ((((N - 1) / 1_000_001 : Nat) : Rat)) ≤
        ((N - 1 : Nat) : Rat) / 1_000_001 :=
    Nat.cast_div_le
  have hsub : (((N - 1 : Nat) : Rat)) ≤ (N : Rat) := by
    exact_mod_cast Nat.sub_le N 1
  have hraw :
      (tenMillionClosePairBucketCap N : Rat) ≤
        (N : Rat) / 1_000_001 + 1 := by
    unfold tenMillionClosePairBucketCap
    push_cast
    linarith
  have hLowerQ : (tenMillionLower : Rat) ≤ N := by
    exact_mod_cast hLower
  have hone :
      (1 : Rat) ≤ (N : Rat) / tenMillionLower := by
    rw [le_div_iff₀ (by norm_num [tenMillionLower] :
      (0 : Rat) < tenMillionLower)]
    simpa using hLowerQ
  rw [div_le_iff₀ hNpos]
  unfold tenMillionCellCharge
  calc
    (tenMillionClosePairBucketCap N : Rat) ≤
        (N : Rat) / 1_000_001 + 1 := hraw
    _ ≤ (N : Rat) / 1_000_001 + (N : Rat) / tenMillionLower := by
      exact add_le_add le_rfl hone
    _ = (1 / 1_000_001 + 1 / tenMillionLower) * N := by
      ring

theorem valuationPart_card_le_nine_cap_of_no_dense
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hnoDense :
      ∀ cell : Fin 9,
        (cellFibre (fiveMillionValuationPart N B valuation)
          oddModNineResidue cell).card ≤ tenMillionClosePairBucketCap N) :
    (fiveMillionValuationPart N B valuation).card ≤
      9 * tenMillionClosePairBucketCap N := by
  simpa using
    card_le_cellCount_mul_of_fibres_le
      (fiveMillionValuationPart N B valuation)
      oddModNineResidue (tenMillionClosePairBucketCap N) hnoDense

#print axioms tenMillionClosePairBucketCap_ratio_le_cellCharge
#print axioms valuationPart_card_le_nine_cap_of_no_dense

end Erdos848
