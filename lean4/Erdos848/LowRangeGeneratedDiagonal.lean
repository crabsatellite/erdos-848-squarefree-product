import Erdos848.GeneratedLowDiagonalCoverage.Certificate
import Erdos848.LowRangeDegreeReduction

namespace Erdos848

/-! The generated diagonal certificate discharges the diagonal fields of the
two low-range kernel contracts.  The remaining inputs are exactly the pure
opposite-base branch and the degree certificate; no finite-search result is
assumed by these assembly theorems. -/

def Erdos848FirstLowPureEvidence : Prop :=
  ∀ N, 1_500_000 ≤ N → N < 3_000_000 → ∀ B : Finset ℕ,
    Erdos848OutsideSet N B → NonSquarefreeProductProp B →
    hallResidual N B = ∅ →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card

def Erdos848SecondLowPureEvidence : Prop :=
  ∀ N, 3_000_000 ≤ N → N < 5_000_000 → ∀ B : Finset ℕ,
    Erdos848OutsideSet N B → NonSquarefreeProductProp B →
    hallResidual N B = ∅ →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card

def Erdos848FirstLowDegreeEvidence : Prop :=
  ∀ N, 1_500_000 ≤ N → N < 3_000_000 →
    Nonempty (FirstLowDegreeCertificate N)

def Erdos848SecondLowDegreeEvidence : Prop :=
  ∀ N, 3_000_000 ≤ N → N < 5_000_000 →
    Nonempty (SecondLowDegreeCertificate N)

theorem erdos848FirstLowKernelEvidence_of_pure_degree
    (pureEvidence : Erdos848FirstLowPureEvidence)
    (degreeEvidence : Erdos848FirstLowDegreeEvidence) :
    Erdos848FirstLowKernelEvidence := by
  intro N hlower hupper
  obtain ⟨degree⟩ := degreeEvidence N hlower hupper
  have diagonal := GeneratedLowDiagonalCoverage.firstLowDiagonalBounds
    hlower hupper
  exact ⟨firstLowKernelBounds_of_reducedEvidence {
    pure := pureEvidence N hlower hupper
    diagonalAll := diagonal.all
    diagonalOdd := diagonal.odd
    diagonalOne := by
      intro r hr
      rcases hr with rfl | rfl
      · exact diagonal.modOne
      · exact diagonal.modThree
    degree := degree
  }⟩

theorem erdos848SecondLowKernelEvidence_of_pure_degree
    (pureEvidence : Erdos848SecondLowPureEvidence)
    (degreeEvidence : Erdos848SecondLowDegreeEvidence) :
    Erdos848SecondLowKernelEvidence := by
  intro N hlower hupper
  obtain ⟨degree⟩ := degreeEvidence N hlower hupper
  have diagonal := GeneratedLowDiagonalCoverage.secondLowDiagonalBounds
    hlower hupper
  exact ⟨secondLowKernelBounds_of_reducedEvidence {
    pure := pureEvidence N hlower hupper
    diagonalAll := diagonal.all
    diagonalOdd := diagonal.odd
    diagonalOne := by
      intro r hr
      rcases hr with rfl | rfl
      · exact diagonal.modOne
      · exact diagonal.modThree
    degree := degree
  }⟩

theorem erdos848FirstLowClose_of_pure_degree
    (pureEvidence : Erdos848FirstLowPureEvidence)
    (degreeEvidence : Erdos848FirstLowDegreeEvidence) :
    Erdos848FirstLowClose :=
  erdos848FirstLowClose_of_kernelEvidence
    (erdos848FirstLowKernelEvidence_of_pure_degree pureEvidence degreeEvidence)

theorem erdos848SecondLowClose_of_pure_degree
    (pureEvidence : Erdos848SecondLowPureEvidence)
    (degreeEvidence : Erdos848SecondLowDegreeEvidence) :
    Erdos848SecondLowClose :=
  erdos848SecondLowClose_of_kernelEvidence
    (erdos848SecondLowKernelEvidence_of_pure_degree pureEvidence degreeEvidence)

end Erdos848
