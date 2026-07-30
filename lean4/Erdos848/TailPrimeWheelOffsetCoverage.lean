import Erdos848.TailPrimePackedIntervalChecker

namespace Erdos848

/-- Proposition-only boundary for the shared wheel certificate.  Generated
period theorems consume this interface instead of re-instantiating the large
structure-valued wheel witness. -/
def PackedWheelOffsetCoverage
    (periodWidth offsetCount : Nat) (packedOffsets : Array Nat) : Prop :=
  ∀ {offset : Nat},
    offset < periodWidth →
    offset.Coprime periodWidth →
    ∃ index < offsetCount,
      packedWheelOffsetCode packedOffsets index = offset

/-- The same chunk contract with its finite candidate set named explicitly.
This avoids eliminating an existential witness inside every concrete period
endpoint theorem. -/
def PackedWheelPrimeChunkSetProperty
    (period periodWidth : Nat) (packedOffsets : Array Nat)
    (index width candidateCount : Nat) (candidates : Finset Nat) : Prop :=
  candidates.card ≤ candidateCount ∧
    ∀ {globalIndex value : Nat},
      index ≤ globalIndex →
      globalIndex < index + width →
      period * periodWidth +
          packedWheelOffsetCode packedOffsets globalIndex = value →
      Nat.Prime value →
      value ∈ candidates

namespace PackedWheelPrimeChunkProperty

noncomputable def candidateSet
    {period periodWidth index width candidateCount : Nat}
    {packedOffsets : Array Nat}
    (coverage :
      PackedWheelPrimeChunkProperty
        period periodWidth packedOffsets index width candidateCount) :
    Finset Nat :=
  Classical.choose coverage

theorem candidateSet_spec
    {period periodWidth index width candidateCount : Nat}
    {packedOffsets : Array Nat}
    (coverage :
      PackedWheelPrimeChunkProperty
        period periodWidth packedOffsets index width candidateCount) :
    PackedWheelPrimeChunkSetProperty
      period periodWidth packedOffsets index width candidateCount
        (candidateSet coverage) :=
  Classical.choose_spec coverage

theorem primeCounting_endpoint_le_of_explicit_set
    {period periodWidth offsetCount candidateCount : Nat}
    {packedOffsets : Array Nat}
    (candidates : Finset Nat)
    (coverage :
      PackedWheelPrimeChunkSetProperty
        period periodWidth packedOffsets 0 offsetCount candidateCount
          candidates)
    (offsetCoverage :
      PackedWheelOffsetCoverage
        periodWidth offsetCount packedOffsets)
    (hperiod : 2 ≤ period)
    (hperiodWidth : 0 < periodWidth) :
    Nat.primeCounting (period * periodWidth + periodWidth - 1) ≤
      Nat.primeCounting (period * periodWidth - 1) +
        candidateCount := by
  rcases coverage with ⟨hcandidatesCard, hcover⟩
  have hsubset :
      Nat.primesLE (period * periodWidth + periodWidth - 1) ⊆
        Nat.primesLE (period * periodWidth - 1) ∪ candidates := by
    intro p hp
    have hpData := Nat.mem_primesLE.mp hp
    by_cases hpStart : p < period * periodWidth
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpData.2⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      have hpLower : period * periodWidth ≤ p := Nat.le_of_not_gt hpStart
      have hpUpper : p < period * periodWidth + periodWidth := by omega
      have hpNotDvd : ¬ p ∣ periodWidth := by
        intro hpDvd
        have hpLe : p ≤ periodWidth :=
          Nat.le_of_dvd hperiodWidth hpDvd
        have htwice :
            2 * periodWidth ≤ period * periodWidth :=
          Nat.mul_le_mul_right periodWidth hperiod
        omega
      have hpCoprime : p.Coprime periodWidth :=
        hpData.2.coprime_iff_not_dvd.mpr hpNotDvd
      have hoffsetCoprime :
          (p - period * periodWidth).Coprime periodWidth := by
        apply
          (Nat.coprime_add_mul_right_left
            (p - period * periodWidth) periodWidth period).mp
        have hsum :
            p - period * periodWidth + period * periodWidth = p := by
          omega
        rwa [hsum]
      obtain ⟨globalIndex, hglobalUpper, hget⟩ :=
        offsetCoverage (by omega) hoffsetCoprime
      have hvalue :
          period * periodWidth +
              packedWheelOffsetCode packedOffsets globalIndex = p := by
        rw [hget]
        omega
      exact hcover (by omega) (by omega) hvalue hpData.2
  have hcardBound := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (period * periodWidth + periodWidth - 1) =
        (Nat.primesLE
          (period * periodWidth + periodWidth - 1)).card := by simp
    _ ≤
        (Nat.primesLE (period * periodWidth - 1) ∪
          candidates).card := hcardBound
    _ ≤
        (Nat.primesLE (period * periodWidth - 1)).card +
          candidates.card := Finset.card_union_le _ _
    _ ≤
        Nat.primeCounting (period * periodWidth - 1) +
          candidateCount := by
      rw [Nat.primesLE_card_eq_primeCounting]
      exact Nat.add_le_add_left hcandidatesCard _

theorem primeCounting_endpoint_le_of_offset_cover
    {period periodWidth offsetCount candidateCount : Nat}
    {packedOffsets : Array Nat}
    (coverage :
      PackedWheelPrimeChunkProperty
        period periodWidth packedOffsets 0 offsetCount candidateCount)
    (offsetCoverage :
      PackedWheelOffsetCoverage
        periodWidth offsetCount packedOffsets)
    (hperiod : 2 ≤ period)
    (hperiodWidth : 0 < periodWidth) :
    Nat.primeCounting (period * periodWidth + periodWidth - 1) ≤
      Nat.primeCounting (period * periodWidth - 1) +
        candidateCount := by
  exact primeCounting_endpoint_le_of_explicit_set
    (candidateSet coverage) (candidateSet_spec coverage)
    offsetCoverage hperiod hperiodWidth

#print axioms
  PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_offset_cover

end PackedWheelPrimeChunkProperty

end Erdos848
