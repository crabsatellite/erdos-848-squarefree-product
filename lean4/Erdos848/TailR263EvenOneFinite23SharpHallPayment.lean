import Erdos848.TailR263EvenOneFinite23SharpProfile
import Erdos848.TailR263FourPivotTerminal

namespace Erdos848

/-! The sharp feasible certificate acts on the unchanged Hall-base cut. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem e1FiniteSharpHallBaseTripleIntersection_ratio_le_of_profile
    [E1Finite23SharpCertificate]
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (cellType : E1FiniteCellType)
    (hcommonResidue : ∀ index,
      e1FiniteConstraintForProfile .noncommon cellType index = .common →
        ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index,
      e1FiniteConstraintForProfile .noncommon cellType index = .noncommon →
        ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N ≤
      2 * e1FiniteSharpFourTargetRat cellType := by
  classical
  let source := eventIntersection (hallBasePart N B)
    (finiteSquarePrimeEvent 23) pivots
  let seven := e1FiniteActualAllThreeResidue N pivots 7
  let eighteen := e1FiniteActualAllThreeResidue N pivots 18
  have hsubset : source ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbase := (Finset.mem_inter.mp hparts.1).2
    have hfinite :
        pivots.filter (fun pivot =>
          finiteSquarePrimeEvent 23 pivot point) = pivots :=
      Finset.filter_eq_self.mpr fun pivot hpivot =>
        hparts.2 pivot hpivot
    have hthree :
        3 ≤ (pivots.filter fun pivot =>
          finiteSquarePrimeEvent 23 pivot point).card := by
      rw [hfinite, hcard]
    rcases Finset.mem_union.mp hbase with hseven | heightteen
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp hseven).2, hthree⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp heightteen).2, hthree⟩
  have hcardNat : source.card ≤ seven.card + eighteen.card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le seven eighteen)
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hsource :
      (source.card : Rat) / N ≤
        (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
    have hcardRat :
        (source.card : Rat) ≤
          (seven.card : Rat) + (eighteen.card : Rat) := by
      exact_mod_cast hcardNat
    calc
      (source.card : Rat) / N ≤
          ((seven.card : Rat) + (eighteen.card : Rat)) / N :=
        div_le_div_of_nonneg_right hcardRat hNpos.le
      _ = (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
        rw [add_div]
  have hseven :=
    e1FiniteSharpActualAllThreeResidue_ratio_le_of_profile
      hLower hUpper hBout hvaluation hpivots hcard 7 cellType
        hcommonResidue hnoncommonResidue
  have heightteen :=
    e1FiniteSharpActualAllThreeResidue_ratio_le_of_profile
      hLower hUpper hBout hvaluation hpivots hcard 18 cellType
        hcommonResidue hnoncommonResidue
  dsimp [source, seven, eighteen] at hsource hseven heightteen ⊢
  linarith

#print axioms e1FiniteSharpHallBaseTripleIntersection_ratio_le_of_profile

end Erdos848
