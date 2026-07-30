import Erdos848.TailGlobalMixedActualTail
import Erdos848.TailFiveMillionHallBridge

namespace Erdos848

lemma odd_of_mod_four_eq_one_or_three
    {x : ℕ} (hmod : x % 4 = 1 ∨ x % 4 = 3) : Odd x := by
  have hmodTwo : x % 2 = 1 := (Nat.odd_mod_four_iff).2 hmod
  refine ⟨x / 2, ?_⟩
  have hdecomp := Nat.mod_add_div x 2
  omega

/-- The active-cell pivot producer retains enough provenance to prove that
all six selected pivots are odd, as required by the actual root theorem. -/
theorem fiveMillionActiveCellPivots_odd
    {N : ℕ} {B charged pivots : Finset ℕ}
    (parity : Bool)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    ∀ pivot ∈ pivots, Odd pivot := by
  intro pivot hpivot
  have hpivotMod := hclass pivot (hpivotsStructured hpivot)
  apply odd_of_mod_four_eq_one_or_three
  cases parity <;> simp_all

/-- Direct construction of the complete controlling one-odd certificate.
The finite periodic part, actual transformed-root tail, and pivot provenance
are all kernel terms. -/
noncomputable def fiveMillionOneOddS7Certificate_of_activeCells
    {N : ℕ} {B charged : Finset ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hcellsLower : 6 ≤ cells.card) (hcellsUpper : cells.card ≤ 7)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    FiveMillionOneOddS7Certificate N B := by
  let result := fiveMillionSixPivotPatternWithStructuredOfActiveCells
    parity cells hcellsLower hactive hclass
  let pivots := result.1
  let pattern := result.2.1
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B charged := result.2.2
  have hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot :=
    fiveMillionActiveCellPivots_odd parity hpivotsStructured hclass
  exact
    { charged := charged
      parity := parity
      cells := cells
      pivots := pivots
      chargedSubset := hcharged
      chargedCard := hchargedCard
      cellsCard := hcellsUpper
      structuredClass := hclass
      structuredCells := hcells
      pivotPattern := pattern
      tail := globalMixedBaseTailCertificate_actual
        hLower hBout pattern.pivotsCard pattern.pivotsResidual hpivotsOdd }

theorem fiveMillionPivotSieveWitness_of_oneOddActiveCells
    {N : ℕ} {B charged : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hcellsLower : 6 ≤ cells.card) (hcellsUpper : cells.card ≤ 7)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    FiveMillionPivotSieveWitness N B := by
  exact fiveMillionOneOddS7Certificate.toPivotSieveWitness
    hLower hUpper hBout hBprop
      (fiveMillionOneOddS7Certificate_of_activeCells
        hLower hBout parity cells hcharged hchargedCard
          hcellsLower hcellsUpper hactive hclass hcells)

#print axioms fiveMillionOneOddS7Certificate_of_activeCells
#print axioms fiveMillionPivotSieveWitness_of_oneOddActiveCells

end Erdos848
