import Erdos848.TailDiagonalMobiusSplit

namespace Erdos848

/-!
# Kernel checker for truncated diagonal witnesses

The prime/root table and the marked `x` values deliberately have independent
limits.  An untrusted producer may reuse one checked prime/root table through
`cutoff` while marking a much longer interval of `x` values.  Lean checks the
root progressions and the marker cardinalities; it never searches for primes,
roots, or progression events.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- A checked root record is required to cover its two progressions only when
its prime is at most the producer cutoff. -/
def OutsideIndexedRootRecordValidUpTo (marker : IndexedMarkerData)
    (cutoff : Nat) (rootData : DiagonalRootPairData) : Prop :=
  rootData.Valid ∧
    (cutoff < rootData.prime ∨
      rootData.prime = 5 ∨
        (marker.ResidueCoveredOutside
            (rootData.prime ^ 2) rootData.root₁ ∧
          marker.ResidueCoveredOutside
            (rootData.prime ^ 2) rootData.root₂))

/-- The new part of an extended marker certificate.  Root arithmetic remains
available from the already checked short marker certificate. -/
def OutsideIndexedRootProgressionsUpTo (marker : IndexedMarkerData)
    (cutoff : Nat) (rootData : DiagonalRootPairData) : Prop :=
  cutoff < rootData.prime ∨
    rootData.prime = 5 ∨
      (marker.ResidueCoveredOutside
          (rootData.prime ^ 2) rootData.root₁ ∧
        marker.ResidueCoveredOutside
          (rootData.prime ^ 2) rootData.root₂)

namespace DiagonalRootTree

/-- Tree-shaped validity matching the existing independently compiled root
chunks, but restricted to primes at most `cutoff`. -/
def OutsideIndexedValidUpTo (marker : IndexedMarkerData) (cutoff : Nat) :
    DiagonalRootTree → Prop
  | .empty => True
  | .leaf data => OutsideIndexedRootRecordValidUpTo marker cutoff data
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.OutsideIndexedValidUpTo marker cutoff ∧
        right.OutsideIndexedValidUpTo marker cutoff

/-- Only the progression component of `OutsideIndexedValidUpTo`.  Generated
long-marker packages prove this tree and reuse root arithmetic from the
existing short-marker package. -/
def OutsideIndexedProgressionsUpTo (marker : IndexedMarkerData)
    (cutoff : Nat) : DiagonalRootTree → Prop
  | .empty => True
  | .leaf data => OutsideIndexedRootProgressionsUpTo marker cutoff data
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.OutsideIndexedProgressionsUpTo marker cutoff ∧
        right.OutsideIndexedProgressionsUpTo marker cutoff

theorem outsideIndexedValidUpTo_of_valid_and_progressions
    {oldMarker marker : IndexedMarkerData} {cutoff : Nat}
    {tree : DiagonalRootTree}
    (hvalid : tree.OutsideIndexedValid oldMarker)
    (hprogressions : tree.OutsideIndexedProgressionsUpTo marker cutoff) :
    tree.OutsideIndexedValidUpTo marker cutoff := by
  induction tree with
  | empty => trivial
  | leaf data =>
      exact ⟨hvalid.1, hprogressions⟩
  | node totalSize left right hleft hright =>
      exact
        ⟨hvalid.1, hleft hvalid.2.1 hprogressions.2.1,
          hright hvalid.2.2 hprogressions.2.2⟩

theorem outsideIndexedValidUpTo_get {marker : IndexedMarkerData}
    {cutoff : Nat} {tree : DiagonalRootTree}
    (hvalid : tree.OutsideIndexedValidUpTo marker cutoff)
    {index : Nat} (hindex : index < tree.size) :
    OutsideIndexedRootRecordValidUpTo marker cutoff (tree.get index) := by
  induction tree generalizing index with
  | empty => simp [size] at hindex
  | leaf data =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [OutsideIndexedValidUpTo, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [OutsideIndexedValidUpTo] at hvalid
      change index < totalSize at hindex
      rw [hvalid.1] at hindex
      by_cases hinLeft : index < left.size
      · simpa [get, hinLeft] using hleft hvalid.2.1 hinLeft
      · have hinRight : index - left.size < right.size := by omega
        simpa [get, hinLeft] using hright hvalid.2.2 hinRight

end DiagonalRootTree

/-- A fail-closed certificate for all prime-square events with
`p ≤ cutoff` and `x ≤ marker.limit`. -/
structure TruncatedDiagonalCoverageCertificate where
  coverage : PrimeRootCoverageData
  marker : IndexedMarkerData
  cutoff : Nat
  coverageValid : coverage.TreeCovered
  cutoff_le_coverage_limit : cutoff ≤ coverage.limit
  rootsValid : coverage.roots.OutsideIndexedValidUpTo marker cutoff

theorem TruncatedDiagonalCoverageCertificate.contains_of_mem
    (certificate : TruncatedDiagonalCoverageCertificate)
    {N x : Nat} (hNLimit : N ≤ certificate.marker.limit)
    (hx : x ∈ truncatedPrimeSquareBadXValues certificate.cutoff N) :
    certificate.marker.Contains x := by
  obtain ⟨p, hpCutoff, hp, hpNeTwo, hpNeFive, hpModFour, hpSquare⟩ :=
    normalized_witness_of_mem_truncatedPrimeSquareBadXValues hx
  have hpCoverage : p ≤ certificate.coverage.limit :=
    hpCutoff.trans certificate.cutoff_le_coverage_limit
  obtain ⟨index, hindex, hprime⟩ :=
    certificate.coverage.rootPairAtPrime certificate.coverageValid hp
      hpCoverage hpModFour
  let rootData := certificate.coverage.rootAt index
  have hprime' : rootData.prime = p := by
    simpa [rootData] using hprime
  have hrecord :
      OutsideIndexedRootRecordValidUpTo certificate.marker
        certificate.cutoff rootData := by
    simpa [rootData] using
      DiagonalRootTree.outsideIndexedValidUpTo_get
        certificate.rootsValid hindex
  have hnotAbove : ¬ certificate.cutoff < rootData.prime := by
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
    (hrecord.2.resolve_left hnotAbove).resolve_left hrootNeFive
  have hrootValid : rootData.Valid := hrecord.1
  have hpRoot : Nat.Prime rootData.prime := hprime' ▸ hp
  have hpRootMod : rootData.prime % 4 = 1 := hprime' ▸ hpModFour
  have hxRootDiv : rootData.prime ^ 2 ∣ x ^ 2 + 1 := hprime' ▸ hpSquare
  have hrootCases :=
    (rootData.certificate hrootValid).complete hpRoot hpRootMod hxRootDiv
  have hxLimit : x ≤ certificate.marker.limit :=
    (bounds_of_mem_tailDiagonalBad
      (mem_truncatedPrimeSquareBadXValues_iff.mp hx).1).2.trans hNLimit
  have hxOutside : OutsideLowBase x :=
    outside_of_mem_tailDiagonalBad
      (mem_truncatedPrimeSquareBadXValues_iff.mp hx).1
  rcases hrootCases with hroot₁ | hroot₂
  · exact IndexedMarkerData.contains_of_mod_eq_outside
      (pow_pos hpRoot.pos 2) hrootValid.1 hxLimit hroot₁ hxOutside
      hcovered.1
  · exact IndexedMarkerData.contains_of_mod_eq_outside
      (pow_pos hpRoot.pos 2) hrootValid.2.1 hxLimit hroot₂ hxOutside
      hcovered.2

/-- A predicate-refined marker projection.  Generated witnesses can use a
separate sorted target marker for each terminal branch without duplicating
the prime/root argument. -/
def IndexedMarkerData.ProjectsPredicate (source target : IndexedMarkerData)
    (select : Nat → Prop) : Prop :=
  ∀ x, source.Contains x → select x → target.Contains x

theorem truncatedPrimeSquareFiltered_card_le
    (certificate : TruncatedDiagonalCoverageCertificate)
    (target : IndexedMarkerData) (select : Nat → Prop)
    [DecidablePred select]
    (hprojects : certificate.marker.ProjectsPredicate target select)
    (hordered : target.AdjacentOrdered)
    {N upper count : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff : target.Cutoff upper count)
    (hNUpper : N ≤ upper) :
    ((truncatedPrimeSquareBadXValues certificate.cutoff N).filter select).card ≤
      count := by
  refine IndexedMarkerData.card_le_cutoff hordered hcutoff ?_ ?_
  · intro x hx
    have hxParts := Finset.mem_filter.mp hx
    exact hprojects x (certificate.contains_of_mem hNLimit hxParts.1)
      hxParts.2
  · intro x hx
    exact
      (bounds_of_mem_tailDiagonalBad
        (mem_truncatedPrimeSquareBadXValues_iff.mp
          (Finset.mem_filter.mp hx).1).1).2.trans hNUpper

theorem tailDiagonalFiltered_card_le_truncatedMarker_add_largeSquare
    (certificate : TruncatedDiagonalCoverageCertificate)
    (target : IndexedMarkerData) (select : Nat → Prop)
    [DecidablePred select]
    (hprojects : certificate.marker.ProjectsPredicate target select)
    (hordered : target.AdjacentOrdered)
    {N upper count : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff : target.Cutoff upper count)
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter select).card ≤
      count + (((N + 1) ^ 2 / (certificate.cutoff + 1) ^ 2 + 1) * 13) := by
  exact
    (tailDiagonalFiltered_card_le_truncated_add_largeSquare select hbound).trans
      (Nat.add_le_add_right
        (truncatedPrimeSquareFiltered_card_le certificate target select
          hprojects hordered hNLimit hcutoff hNUpper) _)

#print axioms TruncatedDiagonalCoverageCertificate.contains_of_mem
#print axioms truncatedPrimeSquareFiltered_card_le
#print axioms tailDiagonalFiltered_card_le_truncatedMarker_add_largeSquare

end Erdos848
