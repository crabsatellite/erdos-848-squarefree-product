import Erdos848.ScratchE3Threshold

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

abbrev ScratchE3PivotRootFamily :=
  ∀ _pivot : Fin 3, ∀ index : E3FinitePrimeIndex,
    Fin (e3FiniteModulus index)

def scratchE3RootNat
    (roots : ScratchE3PivotRootFamily)
    (pivot : Fin 3) (index : E3FinitePrimeIndex) : Nat :=
  (roots pivot index).val

def scratchE3RootBad
    (roots : ScratchE3PivotRootFamily) (pivot : Fin 3) (q : Nat) : Prop :=
  ∃ index : E3FinitePrimeIndex,
    q % e3FiniteModulus index = scratchE3RootNat roots pivot index

def scratchE3RootPairRoots
    (roots : ScratchE3PivotRootFamily) (pair : Fin 3)
    (index : E3FinitePrimeIndex) : Finset Nat :=
  scratchE3PairRootSet pair
    (scratchE3RootNat roots 0 index)
    (scratchE3RootNat roots 1 index)
    (scratchE3RootNat roots 2 index)

def scratchE3RootTripleRoots
    (roots : ScratchE3PivotRootFamily)
    (index : E3FinitePrimeIndex) : Finset Nat :=
  scratchE3TripleRootSet
    (scratchE3RootNat roots 0 index)
    (scratchE3RootNat roots 1 index)
    (scratchE3RootNat roots 2 index)

def scratchE3RootPatternAt
    (roots : ScratchE3PivotRootFamily)
    (index : E3FinitePrimeIndex) : ScratchE3RootPattern :=
  scratchE3RootPatternOf
    (scratchE3RootNat roots 0 index)
    (scratchE3RootNat roots 1 index)
    (scratchE3RootNat roots 2 index)

theorem scratchE3RootPairRoots_card_function
    (roots : ScratchE3PivotRootFamily) (pair : Fin 3)
    (hcommon : roots 0 0 = roots 1 0 ∧ roots 0 0 = roots 2 0) :
    (fun index => (scratchE3RootPairRoots roots pair index).card) =
      scratchE3PairCards
        (scratchE3RootPatternAt roots 1)
        (scratchE3RootPatternAt roots 2)
        (scratchE3RootPatternAt roots 3)
        (scratchE3RootPatternAt roots 4)
        (scratchE3RootPatternAt roots 5) pair := by
  have h12 : roots 1 0 = roots 2 0 := hcommon.1.symm.trans hcommon.2
  funext index
  fin_cases index
  · fin_cases pair <;>
      simp [scratchE3RootPairRoots, scratchE3PairRootSet,
        scratchE3RootNat, scratchE3PairCards,
        hcommon.1, hcommon.2, h12]
  all_goals
    simpa [scratchE3RootPairRoots, scratchE3RootPatternAt,
      scratchE3PairCards] using
      (scratchE3PairRootSet_card pair _ _ _)

theorem scratchE3RootTripleRoots_card_function
    (roots : ScratchE3PivotRootFamily)
    (hcommon : roots 0 0 = roots 1 0 ∧ roots 0 0 = roots 2 0) :
    (fun index => (scratchE3RootTripleRoots roots index).card) =
      scratchE3TripleCards
        (scratchE3RootPatternAt roots 1)
        (scratchE3RootPatternAt roots 2)
        (scratchE3RootPatternAt roots 3)
        (scratchE3RootPatternAt roots 4)
        (scratchE3RootPatternAt roots 5) := by
  have h12 : roots 1 0 = roots 2 0 := hcommon.1.symm.trans hcommon.2
  funext index
  fin_cases index
  · simp [scratchE3RootTripleRoots, scratchE3TripleRootSet,
      scratchE3RootNat, scratchE3TripleCards,
      hcommon.1, hcommon.2, h12]
  all_goals
    simpa [scratchE3RootTripleRoots, scratchE3RootPatternAt,
      scratchE3TripleCards] using
      (scratchE3TripleRootSet_card _ _ _)

theorem scratchE3RootPairSurvivor_filter_eq_noEvent
    (length : Nat) (roots : ScratchE3PivotRootFamily) (pair : Fin 3) :
    (Finset.range length).filter (fun q =>
        scratchE3PairSurvives (scratchE3RootBad roots) pair q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset E3FinitePrimeIndex)
        (fun index q =>
          q % e3FiniteModulus index ∈
            scratchE3RootPairRoots roots pair index) := by
  classical
  ext q
  fin_cases pair <;>
    simp [scratchE3PairSurvives, scratchE3RootBad,
      scratchE3RootPairRoots, scratchE3PairRootSet,
      noEventPoints, activeIndices, Finset.card_eq_zero] <;>
    aesop

theorem scratchE3RootTripleSurvivor_filter_eq_noEvent
    (length : Nat) (roots : ScratchE3PivotRootFamily) :
    (Finset.range length).filter (fun q =>
        scratchE3TripleSurvives (scratchE3RootBad roots) q) =
      noEventPoints (Finset.range length)
        (Finset.univ : Finset E3FinitePrimeIndex)
        (fun index q =>
          q % e3FiniteModulus index ∈
            scratchE3RootTripleRoots roots index) := by
  classical
  ext q
  simp [scratchE3TripleSurvives, scratchE3RootBad,
    scratchE3RootTripleRoots, scratchE3TripleRootSet,
    noEventPoints, activeIndices, Finset.card_eq_zero] <;>
  aesop

#print axioms scratchE3RootPairRoots_card_function
#print axioms scratchE3RootTripleRoots_card_function
#print axioms scratchE3RootPairSurvivor_filter_eq_noEvent
#print axioms scratchE3RootTripleSurvivor_filter_eq_noEvent

end Erdos848
