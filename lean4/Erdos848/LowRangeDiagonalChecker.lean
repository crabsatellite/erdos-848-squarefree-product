import Erdos848.OutsideDiagonalChecker
import Erdos848.LowRangeCombinatorics

namespace Erdos848

/-!
Kernel checker for the low-range diagonal set.  Unlike the prefix marker, this
certificate deliberately omits the two base progressions `7, 18 (mod 25)`.
Those progressions are skipped inside each square-root progression and are
excluded mathematically before the prime-root coverage is consulted.
-/

lemma outsideLowBase_of_mem_lowDiagonalBad {N x : ℕ}
    (hx : x ∈ lowDiagonalBad N) : OutsideLowBase x := by
  have hxFilter := Finset.mem_filter.mp hx
  have hxIcc : x ∈ Finset.Icc 1 N := (Finset.mem_sdiff.mp hxFilter.1).1
  have hxNotBase : x ∉ lowBaseSet N := (Finset.mem_sdiff.mp hxFilter.1).2
  constructor
  · intro hseven
    apply hxNotBase
    simp [lowBaseSet, OriginalA7, OriginalA18, hxIcc, hseven]
  · intro heighteen
    apply hxNotBase
    simp [lowBaseSet, OriginalA7, OriginalA18, hxIcc, heighteen]

theorem LowRangeDiagonalCoverageCertificate.contains_of_mem_lowDiagonalBad
    (certificate : LowRangeDiagonalCoverageCertificate) {N x : ℕ}
    (hNLimit : N ≤ certificate.marker.limit)
    (hx : x ∈ lowDiagonalBad N) : certificate.marker.Contains x := by
  have hxFilter := Finset.mem_filter.mp hx
  have hxIcc : x ∈ Finset.Icc 1 N := (Finset.mem_sdiff.mp hxFilter.1).1
  have hxBounds : 1 ≤ x ∧ x ≤ N := Finset.mem_Icc.mp hxIcc
  exact certificate.contains_of_not_squarefree hxBounds.1
    (hxBounds.2.trans hNLimit) (outsideLowBase_of_mem_lowDiagonalBad hx)
    (by simpa [pow_two] using hxFilter.2)

namespace IndexedMarkerData

theorem card_cast_le_of_envelope {marker : IndexedMarkerData}
    (hordered : marker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ} {S : Finset ℕ}
    (hcutoff : marker.Cutoff upper count)
    (hcontains : ∀ x ∈ S, marker.Contains x)
    (hvalue : ∀ x ∈ S, x ≤ N)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((S.card : ℕ) : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  have hcard : S.card ≤ count := card_le_cutoff hordered hcutoff hcontains
    (fun x hx => (hvalue x hx).trans hNUpper)
  have hcardQ : ((S.card : ℕ) : ℚ) ≤ (count : ℚ) := by exact_mod_cast hcard
  have henvelopeQ : (count : ℚ) * 1_000_000 ≤
      (coefficient : ℚ) * lower := by exact_mod_cast henvelope
  have hNLowerQ : (lower : ℚ) ≤ N := by exact_mod_cast hNLower
  have hcoefficient : (0 : ℚ) ≤ coefficient := by positivity
  calc
    ((S.card : ℕ) : ℚ) ≤ count := hcardQ
    _ ≤ (coefficient / 1_000_000 : ℚ) * lower := by
      linarith
    _ ≤ (coefficient / 1_000_000 : ℚ) * N := by
      gcongr

/-! ## Category projections -/

inductive MarkerClass where
  | odd
  | modOne
  | modThree
  deriving DecidableEq

def MarkerClass.Accepts : MarkerClass → ℕ → Prop
  | .odd, x => x % 4 = 1 ∨ x % 4 = 3
  | .modOne, x => x % 4 = 1
  | .modThree, x => x % 4 = 3

instance markerClassAcceptsDecidable (kind : MarkerClass) (x : ℕ) :
    Decidable (kind.Accepts x) := by
  cases kind <;> simp [MarkerClass.Accepts] <;> infer_instance

/-- Proof tree for projecting a sorted source marker to one residue category. -/
inductive ProjectionIndexTree where
  | skip
  | leaf (targetIndex : ℕ)
  | node (left right : ProjectionIndexTree)

namespace ProjectionIndexTree

def size : ProjectionIndexTree → ℕ
  | .skip => 1
  | .leaf _ => 1
  | .node left right => left.size + right.size

def check (tree : ProjectionIndexTree) (source target : IndexedMarkerData)
    (kind : MarkerClass) (start : ℕ) : Bool :=
  match tree with
  | .skip =>
      decide (start < source.values.size ∧
        ¬ kind.Accepts (source.values.get start))
  | .leaf targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < target.values.size ∧
        kind.Accepts (source.values.get start) ∧
        target.values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source target kind start &&
        right.check source target kind (start + left.size)

def RangeProjected (source target : IndexedMarkerData) (kind : MarkerClass)
    (start stop : ℕ) : Prop :=
  ∀ index, start ≤ index → index < stop →
    kind.Accepts (source.values.get index) →
    target.Contains (source.values.get index)

theorem range {tree : ProjectionIndexTree}
    {source target : IndexedMarkerData} {kind : MarkerClass} {start : ℕ}
    (hcheck : tree.check source target kind start = true) :
    RangeProjected source target kind start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro index hstart hstop haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          ¬ kind.Accepts (source.values.get start) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact False.elim (hvalid.2 haccepts)
  | leaf targetIndex =>
      intro index hstart hstop _haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          targetIndex < target.values.size ∧
          kind.Accepts (source.values.get start) ∧
          target.values.get targetIndex = source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop haccepts
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex haccepts
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) haccepts

end ProjectionIndexTree

def Projects (source target : IndexedMarkerData) (kind : MarkerClass) : Prop :=
  ∀ index, index < source.values.size →
    kind.Accepts (source.values.get index) →
    target.Contains (source.values.get index)

theorem projects_of_range {source target : IndexedMarkerData}
    {kind : MarkerClass}
    (hrange : ProjectionIndexTree.RangeProjected source target kind 0
      source.values.size) : source.Projects target kind := by
  intro index hindex haccepts
  exact hrange index (Nat.zero_le index) hindex haccepts

theorem projectionRangeAppend {source target : IndexedMarkerData}
    {kind : MarkerClass} {start middle stop : ℕ}
    (hleft : ProjectionIndexTree.RangeProjected source target kind
      start middle)
    (hright : ProjectionIndexTree.RangeProjected source target kind
      middle stop) :
    ProjectionIndexTree.RangeProjected source target kind start stop := by
  intro index hstart hstop haccepts
  by_cases hindex : index < middle
  · exact hleft index hstart hindex haccepts
  · exact hright index (Nat.le_of_not_gt hindex) hstop haccepts

theorem Projects.contains {source target : IndexedMarkerData}
    {kind : MarkerClass} (hprojects : source.Projects target kind)
    {value : ℕ} (hcontains : source.Contains value)
    (haccepts : kind.Accepts value) : target.Contains value := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  exact hget ▸ hprojects index hindex (hget ▸ haccepts)

end IndexedMarkerData

lemma value_le_of_mem_lowDiagonalBad {N x : ℕ}
    (hx : x ∈ lowDiagonalBad N) : x ≤ N := by
  have hxFilter := Finset.mem_filter.mp hx
  exact (Finset.mem_Icc.mp (Finset.mem_sdiff.mp hxFilter.1).1).2

theorem lowDiagonalBad_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (hordered : certificate.marker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : certificate.marker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalBad N).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    exact certificate.contains_of_mem_lowDiagonalBad
      (hNUpper.trans hUpperLimit) hx
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad hx

theorem lowDiagonalOdd_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (oddMarker : IndexedMarkerData)
    (hprojects : certificate.marker.Projects oddMarker .odd)
    (hordered : oddMarker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : oddMarker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalOdd N).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_mem_lowDiagonalBad
        (hNUpper.trans hUpperLimit) hxFilter.1)
      hxFilter.2
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad (Finset.mem_filter.mp hx).1

theorem lowDiagonalModOne_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (modOneMarker : IndexedMarkerData)
    (hprojects : certificate.marker.Projects modOneMarker .modOne)
    (hordered : modOneMarker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : modOneMarker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalMod4 N 1).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_mem_lowDiagonalBad
        (hNUpper.trans hUpperLimit) hxFilter.1)
      hxFilter.2
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad (Finset.mem_filter.mp hx).1

theorem lowDiagonalModThree_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (modThreeMarker : IndexedMarkerData)
    (hprojects : certificate.marker.Projects modThreeMarker .modThree)
    (hordered : modThreeMarker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : modThreeMarker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalMod4 N 3).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_mem_lowDiagonalBad
        (hNUpper.trans hUpperLimit) hxFilter.1)
      hxFilter.2
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad (Finset.mem_filter.mp hx).1

structure LowDiagonalEnvelopeBounds
    (N allCoefficient oddCoefficient classCoefficient : ℕ) : Prop where
  all : ((lowDiagonalBad N).card : ℚ) ≤
    (allCoefficient / 1_000_000 : ℚ) * N
  odd : ((lowDiagonalOdd N).card : ℚ) ≤
    (oddCoefficient / 1_000_000 : ℚ) * N
  modOne : ((lowDiagonalMod4 N 1).card : ℚ) ≤
    (classCoefficient / 1_000_000 : ℚ) * N
  modThree : ((lowDiagonalMod4 N 3).card : ℚ) ≤
    (classCoefficient / 1_000_000 : ℚ) * N

def LowDiagonalEnvelopeRange (start stop allCoefficient oddCoefficient
    classCoefficient : ℕ) : Prop :=
  ∀ N, start ≤ N → N < stop →
    LowDiagonalEnvelopeBounds N allCoefficient oddCoefficient classCoefficient

theorem lowDiagonalEnvelopeRangeAppend
    {start middle stop allCoefficient oddCoefficient classCoefficient : ℕ}
    (hleft : LowDiagonalEnvelopeRange start middle allCoefficient
      oddCoefficient classCoefficient)
    (hright : LowDiagonalEnvelopeRange middle stop allCoefficient
      oddCoefficient classCoefficient) :
    LowDiagonalEnvelopeRange start stop allCoefficient oddCoefficient
      classCoefficient := by
  intro N hstart hstop
  by_cases hN : N < middle
  · exact hleft N hstart hN
  · exact hright N (Nat.le_of_not_gt hN) hstop

end Erdos848
