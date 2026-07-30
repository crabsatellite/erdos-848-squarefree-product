import Erdos848.TailTruncatedDiagonalChecker

namespace Erdos848

/-!
# Hybrid truncated-diagonal checker

Small prime squares are handled separately by periodic CRT counting.  This
checker validates only the sparse marker for primes in `(lower, cutoff]`.
It therefore avoids materialising the tens of millions of progression events
coming from the first few diagonal primes.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Small-square diagonal values whose witness prime lies in one open-closed
interval. -/
def intervalTruncatedPrimeSquareBadXValues
    (lower cutoff N : Nat) : Finset Nat :=
  (tailDiagonalBad N).filter fun x =>
    ∃ p ∈ Finset.range (cutoff + 1),
      lower < p ∧ Nat.Prime p ∧ p ^ 2 ∣ x ^ 2 + 1

theorem mem_intervalTruncatedPrimeSquareBadXValues_iff
    {lower cutoff N x : Nat} :
    x ∈ intervalTruncatedPrimeSquareBadXValues lower cutoff N ↔
      x ∈ tailDiagonalBad N ∧
        ∃ p ≤ cutoff,
          lower < p ∧ Nat.Prime p ∧ p ^ 2 ∣ x ^ 2 + 1 := by
  simp [intervalTruncatedPrimeSquareBadXValues]

/-- Progression coverage is required only for primes in `(lower, cutoff]`. -/
def OutsideIndexedRootProgressionsBetween
    (marker : IndexedMarkerData) (lower cutoff : Nat)
    (rootData : DiagonalRootPairData) : Prop :=
  rootData.prime ≤ lower ∨
    cutoff < rootData.prime ∨
      rootData.prime = 5 ∨
        (marker.ResidueCoveredOutside
            (rootData.prime ^ 2) rootData.root₁ ∧
          marker.ResidueCoveredOutside
            (rootData.prime ^ 2) rootData.root₂)

namespace DiagonalRootTree

def OutsideIndexedProgressionsBetween
    (marker : IndexedMarkerData) (lower cutoff : Nat) :
    DiagonalRootTree → Prop
  | .empty => True
  | .leaf data =>
      OutsideIndexedRootProgressionsBetween marker lower cutoff data
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.OutsideIndexedProgressionsBetween marker lower cutoff ∧
        right.OutsideIndexedProgressionsBetween marker lower cutoff

theorem outsideIndexedProgressionsBetween_get
    {marker : IndexedMarkerData} {lower cutoff : Nat}
    {tree : DiagonalRootTree}
    (hvalid :
      tree.OutsideIndexedProgressionsBetween marker lower cutoff)
    {index : Nat} (hindex : index < tree.size) :
    OutsideIndexedRootProgressionsBetween marker lower cutoff
      (tree.get index) := by
  induction tree generalizing index with
  | empty => simp [size] at hindex
  | leaf data =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [OutsideIndexedProgressionsBetween, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [OutsideIndexedProgressionsBetween] at hvalid
      change index < totalSize at hindex
      rw [hvalid.1] at hindex
      by_cases hinLeft : index < left.size
      · simpa [get, hinLeft] using hleft hvalid.2.1 hinLeft
      · have hinRight : index - left.size < right.size := by omega
        simpa [get, hinLeft] using hright hvalid.2.2 hinRight

end DiagonalRootTree

/-- A high-prime marker reuses root arithmetic from an already checked
short marker and checks only the new long progressions. -/
structure HybridHighDiagonalCoverageCertificate where
  coverage : PrimeRootCoverageData
  marker : IndexedMarkerData
  lower : Nat
  cutoff : Nat
  coverageValid : coverage.TreeCovered
  cutoff_le_coverage_limit : cutoff ≤ coverage.limit
  rootArithmetic :
    ∀ index, index < coverage.roots.size →
      (coverage.rootAt index).Valid
  progressionsValid :
    coverage.roots.OutsideIndexedProgressionsBetween
      marker lower cutoff

theorem HybridHighDiagonalCoverageCertificate.contains_of_mem
    (certificate : HybridHighDiagonalCoverageCertificate)
    {N x : Nat} (hNLimit : N ≤ certificate.marker.limit)
    (hx : x ∈ intervalTruncatedPrimeSquareBadXValues
      certificate.lower certificate.cutoff N) :
    certificate.marker.Contains x := by
  obtain ⟨hxTail, p, hpCutoff, hpLower, hp, hpSquare⟩ :=
    mem_intervalTruncatedPrimeSquareBadXValues_iff.mp hx
  have hpNeFive : p ≠ 5 := by
    intro hpFive
    subst p
    exact outside_not_dvd_25_sq_add_one x
      (outside_of_mem_tailDiagonalBad hxTail)
      (by simpa [pow_two] using hpSquare)
  have hpNeTwo : p ≠ 2 := by
    intro hpTwo
    subst p
    exact finite_not_dvd_four_sq_add_one x
      (by simpa [pow_two] using hpSquare)
  have hpGtTwo : 2 < p :=
    lt_of_le_of_ne hp.two_le (Ne.symm hpNeTwo)
  have hpModFour : p % 4 = 1 :=
    finite_prime_sq_divides_implies_one_mod_four
      p x hp hpGtTwo hpSquare
  have hpCoverage : p ≤ certificate.coverage.limit :=
    hpCutoff.trans certificate.cutoff_le_coverage_limit
  obtain ⟨index, hindex, hprime⟩ :=
    certificate.coverage.rootPairAtPrime certificate.coverageValid hp
      hpCoverage hpModFour
  let rootData := certificate.coverage.rootAt index
  have hprime' : rootData.prime = p := by
    simpa [rootData] using hprime
  have hprogressions :
      OutsideIndexedRootProgressionsBetween certificate.marker
        certificate.lower certificate.cutoff rootData := by
    simpa [rootData] using
      DiagonalRootTree.outsideIndexedProgressionsBetween_get
        certificate.progressionsValid hindex
  have hnotLow : ¬ rootData.prime ≤ certificate.lower := by
    rw [hprime']
    omega
  have hnotHigh : ¬ certificate.cutoff < rootData.prime := by
    rw [hprime']
    omega
  have hrootNeFive : rootData.prime ≠ 5 := by
    rw [hprime']
    exact hpNeFive
  have hcovered :
      certificate.marker.ResidueCoveredOutside
          (rootData.prime ^ 2) rootData.root₁ ∧
        certificate.marker.ResidueCoveredOutside
          (rootData.prime ^ 2) rootData.root₂ :=
    ((hprogressions.resolve_left hnotLow).resolve_left hnotHigh).resolve_left
      hrootNeFive
  have hrootValid : rootData.Valid :=
    certificate.rootArithmetic index hindex
  have hpRoot : Nat.Prime rootData.prime := hprime' ▸ hp
  have hpRootMod : rootData.prime % 4 = 1 := hprime' ▸ hpModFour
  have hxRootDiv : rootData.prime ^ 2 ∣ x ^ 2 + 1 := hprime' ▸ hpSquare
  have hrootCases :=
    (rootData.certificate hrootValid).complete hpRoot hpRootMod hxRootDiv
  have hxLimit : x ≤ certificate.marker.limit :=
    (bounds_of_mem_tailDiagonalBad hxTail).2.trans hNLimit
  have hxOutside : OutsideLowBase x :=
    outside_of_mem_tailDiagonalBad hxTail
  rcases hrootCases with hroot₁ | hroot₂
  · exact IndexedMarkerData.contains_of_mod_eq_outside
      (pow_pos hpRoot.pos 2) hrootValid.1 hxLimit hroot₁ hxOutside
      hcovered.1
  · exact IndexedMarkerData.contains_of_mod_eq_outside
      (pow_pos hpRoot.pos 2) hrootValid.2.1 hxLimit hroot₂ hxOutside
      hcovered.2

theorem intervalTruncatedPrimeSquareFiltered_card_le
    (certificate : HybridHighDiagonalCoverageCertificate)
    (target : IndexedMarkerData) (select : Nat → Prop)
    [DecidablePred select]
    (hprojects : certificate.marker.ProjectsPredicate target select)
    (hordered : target.AdjacentOrdered)
    {N upper count : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff : target.Cutoff upper count)
    (hNUpper : N ≤ upper) :
    ((intervalTruncatedPrimeSquareBadXValues
      certificate.lower certificate.cutoff N).filter select).card ≤
        count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    have hxParts := Finset.mem_filter.mp hx
    exact hprojects x
      (certificate.contains_of_mem hNLimit hxParts.1) hxParts.2
  · intro x hx
    exact
      (bounds_of_mem_tailDiagonalBad
        (mem_intervalTruncatedPrimeSquareBadXValues_iff.mp
          (Finset.mem_filter.mp hx).1).1).2.trans hNUpper

#print axioms
  HybridHighDiagonalCoverageCertificate.contains_of_mem
#print axioms intervalTruncatedPrimeSquareFiltered_card_le

end Erdos848
