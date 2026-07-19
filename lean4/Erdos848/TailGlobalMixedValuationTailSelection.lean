import Erdos848.TailGlobalMixedEvenActualTail
import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848

/-! Actual pivot subsets and tail certificates selected from valuation parts. -/

inductive FiveMillionValuationTailWitness
    (N : Nat) (B : Finset Nat) : Prop where
  | evenOne (pivots : Finset Nat)
      (subset : pivots ⊆ fiveMillionValuationPart N B .evenOne)
      (certificate : FiveMillionBaseTailCertificate N B pivots)
  | evenTwo (pivots : Finset Nat)
      (subset : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
      (certificate : FiveMillionBaseTailCertificate N B pivots)
  | evenThree (pivots : Finset Nat)
      (subset : pivots ⊆ fiveMillionValuationPart N B .evenThree)
      (certificate : FiveMillionEvenThreeBaseTailCertificate N B pivots)
  | oddOne (pivots : Finset Nat)
      (subset : pivots ⊆ fiveMillionValuationPart N B .oddOne)
      (certificate : FiveMillionBaseTailCertificate N B pivots)
  | oddThree (pivots : Finset Nat)
      (subset : pivots ⊆ fiveMillionValuationPart N B .oddThree)
      (certificate : FiveMillionBaseTailCertificate N B pivots)

theorem exists_evenOne_valuationTailWitness
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcard : 6 <= (fiveMillionValuationPart N B .evenOne).card) :
    FiveMillionValuationTailWitness N B := by
  classical
  obtain ⟨pivots, hsubset, hpivotsCard⟩ :=
    Finset.exists_subset_card_eq hcard
  apply FiveMillionValuationTailWitness.evenOne pivots hsubset
  exact globalMixedEvenOneBaseTailCertificate_actual
    hLower hBout hpivotsCard
    (hsubset.trans (fiveMillionValuationPart_subset_residual N B .evenOne))
    (fun pivot hpivot => fiveMillionValuationPart_evenOne (hsubset hpivot))

theorem exists_evenTwo_valuationTailWitness
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcard : 6 <= (fiveMillionValuationPart N B .evenTwo).card) :
    FiveMillionValuationTailWitness N B := by
  classical
  obtain ⟨pivots, hsubset, hpivotsCard⟩ :=
    Finset.exists_subset_card_eq hcard
  apply FiveMillionValuationTailWitness.evenTwo pivots hsubset
  exact globalMixedEvenTwoBaseTailCertificate_actual
    hLower hBout hpivotsCard
    (hsubset.trans (fiveMillionValuationPart_subset_residual N B .evenTwo))
    (fun pivot hpivot => fiveMillionValuationPart_evenTwo (hsubset hpivot))

theorem exists_evenThree_valuationTailWitness
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcard : 3 <= (fiveMillionValuationPart N B .evenThree).card) :
    FiveMillionValuationTailWitness N B := by
  classical
  obtain ⟨pivots, hsubset, hpivotsCard⟩ :=
    Finset.exists_subset_card_eq hcard
  apply FiveMillionValuationTailWitness.evenThree pivots hsubset
  exact globalMixedEvenThreeBaseTailCertificate_actual
    hLower hBout hpivotsCard
    (hsubset.trans (fiveMillionValuationPart_subset_residual N B .evenThree))
    (fun pivot hpivot => fiveMillionValuationPart_evenThree (hsubset hpivot))

theorem exists_oddOne_valuationTailWitness
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcard : 6 <= (fiveMillionValuationPart N B .oddOne).card) :
    FiveMillionValuationTailWitness N B := by
  classical
  obtain ⟨pivots, hsubset, hpivotsCard⟩ :=
    Finset.exists_subset_card_eq hcard
  apply FiveMillionValuationTailWitness.oddOne pivots hsubset
  exact globalMixedBaseTailCertificate_actual
    hLower hBout hpivotsCard
    (hsubset.trans (fiveMillionValuationPart_subset_residual N B .oddOne))
    (fun pivot hpivot => fiveMillionValuationPart_odd
      (cls := .oddOne) (Or.inl rfl) (hsubset hpivot))

theorem exists_oddThree_valuationTailWitness
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcard : 6 <= (fiveMillionValuationPart N B .oddThree).card) :
    FiveMillionValuationTailWitness N B := by
  classical
  obtain ⟨pivots, hsubset, hpivotsCard⟩ :=
    Finset.exists_subset_card_eq hcard
  apply FiveMillionValuationTailWitness.oddThree pivots hsubset
  exact globalMixedBaseTailCertificate_actual
    hLower hBout hpivotsCard
    (hsubset.trans (fiveMillionValuationPart_subset_residual N B .oddThree))
    (fun pivot hpivot => fiveMillionValuationPart_odd
      (cls := .oddThree) (Or.inr rfl) (hsubset hpivot))

theorem exists_valuationTailWitness_of_residual_card_gt_twentyFive
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hlarge : 25 < (hallResidual N B).card) :
    FiveMillionValuationTailWitness N B := by
  obtain ⟨cls, hclass⟩ :=
    exists_fiveMillionValuationPart_card_gt
      (N := N) (B := B) (bound := 5) (by simpa using hlarge)
  cases cls with
  | evenOne =>
      exact exists_evenOne_valuationTailWitness hLower hBout (by omega)
  | evenTwo =>
      exact exists_evenTwo_valuationTailWitness hLower hBout (by omega)
  | evenThree =>
      exact exists_evenThree_valuationTailWitness hLower hBout (by omega)
  | oddOne =>
      exact exists_oddOne_valuationTailWitness hLower hBout (by omega)
  | oddThree =>
      exact exists_oddThree_valuationTailWitness hLower hBout (by omega)

#print axioms exists_valuationTailWitness_of_residual_card_gt_twentyFive

end Erdos848
