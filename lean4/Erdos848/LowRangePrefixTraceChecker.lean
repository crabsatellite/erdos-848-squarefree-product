import Erdos848.LowRangeDiagonalChecker
import Erdos848.PrefixTraceChecker

namespace Erdos848

/-! ## Split prefix-trace certificates through the low ranges

The full low-range trace has three disjoint kinds of diagonal candidates.  A
residue-`7` vertex is its own anchor, residue-`18` vertices form a formula-
indexed sequence, and the remaining vertices are exactly those covered by the
existing outside-base diagonal marker.  Keeping those representations split
avoids duplicating the anchor histories or materialising one large combined
marker.
-/

namespace CandidateHistoryTree

/-- A candidate-history tree indexed by the arithmetic progression
`residue + modulus * index`. -/
def ResidueIndexedValid (anchors : AnchorHistoryTree) (limit residue modulus
    startIndex : ℕ) : CandidateHistoryTree → Prop
  | .empty => True
  | .leaf history =>
      history.vertex = residue + modulus * startIndex ∧
        history.Valid anchors limit
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.ResidueIndexedValid anchors limit residue modulus startIndex ∧
        right.ResidueIndexedValid anchors limit residue modulus
          (startIndex + left.size)

instance residueIndexedValidDecidable (anchors : AnchorHistoryTree)
    (limit residue modulus startIndex : ℕ) :
    (tree : CandidateHistoryTree) →
      Decidable
        (tree.ResidueIndexedValid anchors limit residue modulus startIndex)
  | .empty => isTrue trivial
  | .leaf history => by
      simp only [ResidueIndexedValid]
      infer_instance
  | .node totalSize left right =>
      letI : Decidable
          (left.ResidueIndexedValid anchors limit residue modulus startIndex) :=
        residueIndexedValidDecidable anchors limit residue modulus startIndex left
      letI : Decidable
          (right.ResidueIndexedValid anchors limit residue modulus
            (startIndex + left.size)) :=
        residueIndexedValidDecidable anchors limit residue modulus
          (startIndex + left.size) right
      by
        simp only [ResidueIndexedValid]
        infer_instance

theorem residueIndexedValid_get {anchors : AnchorHistoryTree}
    {limit residue modulus startIndex : ℕ} {tree : CandidateHistoryTree}
    (hvalid :
      tree.ResidueIndexedValid anchors limit residue modulus startIndex)
    {index : ℕ} (hindex : index < tree.size) :
    let history := tree.get index
    history.vertex = residue + modulus * (startIndex + index) ∧
      history.Valid anchors limit := by
  induction tree generalizing startIndex index with
  | empty => simp [size] at hindex
  | leaf history =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [ResidueIndexedValid, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [ResidueIndexedValid] at hvalid
      change index < totalSize at hindex
      rw [hvalid.1] at hindex
      by_cases hinLeft : index < left.size
      · simpa [get, hinLeft] using hleft hvalid.2.1 hinLeft
      · have hinRight : index - left.size < right.size := by omega
        have hresult := hright hvalid.2.2 hinRight
        have hsum : startIndex + left.size + (index - left.size) =
            startIndex + index := by omega
        rw [hsum] at hresult
        simpa [get, hinLeft] using hresult

end CandidateHistoryTree

/-- Exact number of indices needed for a residue class once that residue occurs
below the limit.  The split certificate only uses residues `7` and `18`. -/
def residueIndexCount (limit residue : ℕ) : ℕ :=
  (limit - residue) / 25 + 1

lemma div_lt_residueIndexCount {x limit residue : ℕ}
    (hmod : x % 25 = residue) (hlimit : x ≤ limit) :
    x / 25 < residueIndexCount limit residue := by
  have hdecomp : x = residue + 25 * (x / 25) := by
    calc
      x = x % 25 + 25 * (x / 25) := (Nat.mod_add_div x 25).symm
      _ = residue + 25 * (x / 25) := by rw [hmod]
  have hmul : 25 * (x / 25) ≤ limit - residue := by omega
  have hquot : x / 25 ≤ (limit - residue) / 25 :=
    (Nat.le_div_iff_mul_le (by omega)).2 <| by
      simpa [Nat.mul_comm] using hmul
  simpa [residueIndexCount] using Nat.lt_succ_of_le hquot

/-- Histories sufficient for the exact prefix colouring through one low-range
limit.  The outside marker and its diagonal completeness proof are reused from
`LowRangeDiagonalCoverageCertificate`. -/
structure LowRangePrefixTraceHistoryCertificate (oracle : SquarefreeOracle) where
  limit : ℕ
  outsideCoverage : LowRangeDiagonalCoverageCertificate
  anchors : AnchorHistoryTree
  oppositeCandidates : CandidateHistoryTree
  outsideCandidates : CandidateHistoryTree
  sameLimit : outsideCoverage.marker.limit = limit
  anchorsValid : anchors.IndexedValid oracle limit 0
  anchorSize : anchors.size = residueIndexCount limit 7
  oppositeSize : oppositeCandidates.size = residueIndexCount limit 18
  oppositeValid :
    oppositeCandidates.ResidueIndexedValid anchors limit 18 25 0
  outsideSize :
    outsideCandidates.size = outsideCoverage.marker.values.size
  outsideValid :
    outsideCandidates.IndexedValid outsideCoverage.marker anchors limit 0

namespace LowRangePrefixTraceHistoryCertificate

/-- Convert one already-validated candidate history into the assignment active
at a requested prefix. -/
theorem assignment_nonempty_of_history {oracle : SquarefreeOracle}
    {limit n vertex : ℕ} {anchors : AnchorHistoryTree}
    (hanchors : anchors.IndexedValid oracle limit 0)
    (history : CandidateHistoryData)
    (hhistoryValid : history.Valid anchors limit)
    (hhistoryVertex : history.vertex = vertex)
    (hvertex : vertex ≤ n) (hn : n ≤ limit) :
    Nonempty (TraceAssignment anchors n vertex) := by
  have hhistoryStart : history.vertex ≤ n := hhistoryVertex ▸ hvertex
  obtain ⟨assignment, hassignmentMem, hassignmentStart, hassignmentStop⟩ :=
    IntervalChain.exists_covering hhistoryValid.1 hhistoryStart (by omega)
  have hassignmentValid := hhistoryValid.2 assignment hassignmentMem
  rcases hassignmentValid with
    ⟨hanchorIndex, hstateIndex, hstartEq, hstopEq, howner⟩
  let anchorHistory := anchors.get assignment.anchorIndex
  let state := listGetD anchorHistory.states assignment.stateIndex
  have hanchorValid := AnchorHistoryTree.indexedValid_get
    hanchors hanchorIndex
  simp only [Nat.zero_add] at hanchorValid
  have hstateMem : state ∈ anchorHistory.states :=
    listGetD_mem hstateIndex
  have hstateValid := hanchorValid.2.2 state hstateMem
  have hstateStart : state.start ≤ n := by
    rw [← hstartEq]
    exact hassignmentStart
  have hstateStop : n < state.stop := by
    rw [← hstopEq]
    exact hassignmentStop
  have hlookup : anchorHistory.stateAt n = state :=
    IntervalChain.intervalLookup_eq_of_mem hanchorValid.2.1 hstateMem
      hstateStart hstateStop
  refine ⟨{
    anchorIndex := assignment.anchorIndex
    role := assignment.role
    index_lt := hanchorIndex
    anchor_le := ?_
    owner_eq := ?_ }⟩
  · calc
      anchorHistory.anchor = state.anchor := hstateValid.1.symm
      _ ≤ state.start := hstateValid.2.2.2.1
      _ ≤ n := hstateStart
  · change anchorHistory.ownerAt assignment.role n = vertex
    rw [AnchorHistoryData.ownerAt, hlookup]
    change state.owner assignment.role = history.vertex at howner
    rw [hhistoryVertex] at howner
    exact howner

/-- Every non-squarefree diagonal vertex receives an assignment, using its own
anchor for residue `7`, the formula-indexed trace for residue `18`, and the
outside marker otherwise. -/
theorem assignment_nonempty {oracle : SquarefreeOracle}
    (certificate : LowRangePrefixTraceHistoryCertificate oracle)
    {n vertex : ℕ} (hpositive : 1 ≤ vertex) (hvertex : vertex ≤ n)
    (hn : n ≤ certificate.limit) (hdiagonal : ¬ Squarefree (vertex ^ 2 + 1)) :
    Nonempty (TraceAssignment certificate.anchors n vertex) := by
  by_cases hseven : vertex % 25 = 7
  · have hindex : vertex / 25 < certificate.anchors.size := by
      rw [certificate.anchorSize]
      exact div_lt_residueIndexCount hseven (hvertex.trans hn)
    let history := certificate.anchors.get (vertex / 25)
    have hhistoryValid := AnchorHistoryTree.indexedValid_get
      certificate.anchorsValid hindex
    simp only [Nat.zero_add] at hhistoryValid
    have hdecomp : vertex = 7 + 25 * (vertex / 25) := by
      calc
        vertex = vertex % 25 + 25 * (vertex / 25) :=
          (Nat.mod_add_div vertex 25).symm
        _ = 7 + 25 * (vertex / 25) := by rw [hseven]
    have hanchorEq : history.anchor = vertex := by
      calc
        history.anchor = 7 + 25 * (vertex / 25) := by
          simpa [history] using hhistoryValid.1
        _ = vertex := hdecomp.symm
    have hanchorLe : history.anchor ≤ n := hanchorEq ▸ hvertex
    have hstateValid := AnchorHistoryData.stateAt_valid hhistoryValid.2
      hanchorLe hn
    refine ⟨{
      anchorIndex := vertex / 25
      role := .anchor
      index_lt := hindex
      anchor_le := hanchorLe
      owner_eq := ?_ }⟩
    simpa [history, AnchorHistoryData.ownerAt, AnchorStateData.owner,
      hstateValid.1, hanchorEq]
  · by_cases heighteen : vertex % 25 = 18
    · have hindex : vertex / 25 < certificate.oppositeCandidates.size := by
        rw [certificate.oppositeSize]
        exact div_lt_residueIndexCount heighteen (hvertex.trans hn)
      have hhistoryValid := CandidateHistoryTree.residueIndexedValid_get
        certificate.oppositeValid hindex
      simp only [Nat.zero_add] at hhistoryValid
      let history := certificate.oppositeCandidates.get (vertex / 25)
      have hdecomp : vertex = 18 + 25 * (vertex / 25) := by
        calc
          vertex = vertex % 25 + 25 * (vertex / 25) :=
            (Nat.mod_add_div vertex 25).symm
          _ = 18 + 25 * (vertex / 25) := by rw [heighteen]
      have hhistoryVertex : history.vertex = vertex := by
        calc
          history.vertex = 18 + 25 * (vertex / 25) := by
            simpa [history] using hhistoryValid.1
          _ = vertex := hdecomp.symm
      exact assignment_nonempty_of_history certificate.anchorsValid history
        hhistoryValid.2 hhistoryVertex hvertex hn
    · have houtside : OutsideLowBase vertex := ⟨hseven, heighteen⟩
      have hmarkerLimit : vertex ≤ certificate.outsideCoverage.marker.limit := by
        rw [certificate.sameLimit]
        exact hvertex.trans hn
      have hcontains := certificate.outsideCoverage.contains_of_not_squarefree
        hpositive hmarkerLimit houtside hdiagonal
      rcases hcontains with ⟨candidateIndex, hcandidateIndex, hmarkerValue⟩
      have htreeIndex : candidateIndex < certificate.outsideCandidates.size := by
        rw [certificate.outsideSize]
        exact hcandidateIndex
      have hhistoryValid := CandidateHistoryTree.indexedValid_get
        certificate.outsideValid htreeIndex
      simp only [Nat.zero_add] at hhistoryValid
      let history := certificate.outsideCandidates.get candidateIndex
      have hhistoryVertex : history.vertex = vertex := by
        calc
          history.vertex = certificate.outsideCoverage.marker.values.get
              candidateIndex := hhistoryValid.1
          _ = vertex := hmarkerValue
      exact assignment_nonempty_of_history certificate.anchorsValid history
        hhistoryValid.2 hhistoryVertex hvertex hn

/-- The total colour function; off-certificate values use the harmless zero. -/
noncomputable def colourAt {oracle : SquarefreeOracle}
    (certificate : LowRangePrefixTraceHistoryCertificate oracle)
    (n vertex : ℕ) : ℕ := by
  classical
  exact if h : Nonempty (TraceAssignment certificate.anchors n vertex) then
      (certificate.anchors.get (Classical.choice h).anchorIndex).anchor
    else 0

/-- The split trace proves the literal finite-prefix colouring certificate at
its full checked limit. -/
theorem prefixColouringCertificate {oracle : SquarefreeOracle}
    (certificate : LowRangePrefixTraceHistoryCertificate oracle) :
    PrefixColouringCertificate certificate.limit := by
  classical
  intro n _hn hlimit
  refine ⟨{
    colour := certificate.colourAt n
    colour_mem := ?_
    separated := ?_ }⟩
  · intro x hx hnotSquarefree
    have hxBounds := Finset.mem_Icc.mp hx
    have hxAssignment := certificate.assignment_nonempty hxBounds.1 hxBounds.2
      hlimit (by simpa [pow_two] using hnotSquarefree)
    let assignment : TraceAssignment certificate.anchors n x :=
      Classical.choice hxAssignment
    have hanchorValid := AnchorHistoryTree.indexedValid_get
      certificate.anchorsValid assignment.index_lt
    simp only [Nat.zero_add] at hanchorValid
    rw [colourAt, dif_pos hxAssignment]
    change (certificate.anchors.get assignment.anchorIndex).anchor ∈ OriginalA7 n
    simp only [OriginalA7, Finset.mem_filter, Finset.mem_Icc]
    refine ⟨⟨?_, assignment.anchor_le⟩, ?_⟩
    · rw [hanchorValid.1]
      omega
    · rw [hanchorValid.1]
      omega
  · intro x y hx hnotSquarefreeX hy hnotSquarefreeY hxy hcolour
    have hxBounds := Finset.mem_Icc.mp hx
    have hyBounds := Finset.mem_Icc.mp hy
    have hxAssignment := certificate.assignment_nonempty hxBounds.1 hxBounds.2
      hlimit (by simpa [pow_two] using hnotSquarefreeX)
    have hyAssignment := certificate.assignment_nonempty hyBounds.1 hyBounds.2
      hlimit (by simpa [pow_two] using hnotSquarefreeY)
    let assignmentX : TraceAssignment certificate.anchors n x :=
      Classical.choice hxAssignment
    let assignmentY : TraceAssignment certificate.anchors n y :=
      Classical.choice hyAssignment
    have hanchorX := AnchorHistoryTree.indexedValid_get
      certificate.anchorsValid assignmentX.index_lt
    have hanchorY := AnchorHistoryTree.indexedValid_get
      certificate.anchorsValid assignmentY.index_lt
    simp only [Nat.zero_add] at hanchorX hanchorY
    have hanchorEq :
        (certificate.anchors.get assignmentX.anchorIndex).anchor =
          (certificate.anchors.get assignmentY.anchorIndex).anchor := by
      simpa [colourAt, hxAssignment, hyAssignment, assignmentX, assignmentY]
        using hcolour
    have hindexEq : assignmentX.anchorIndex = assignmentY.anchorIndex := by
      omega
    by_cases hrole : assignmentX.role = assignmentY.role
    · apply (hxy ?_).elim
      calc
        x = (certificate.anchors.get assignmentX.anchorIndex).ownerAt
            assignmentX.role n := assignmentX.owner_eq.symm
        _ = (certificate.anchors.get assignmentY.anchorIndex).ownerAt
            assignmentY.role n := by rw [hindexEq, hrole]
        _ = y := assignmentY.owner_eq
    · let history := certificate.anchors.get assignmentX.anchorIndex
      have hhistoryValid : history.Valid oracle certificate.limit := hanchorX.2
      have hstateValid := AnchorHistoryData.stateAt_valid hhistoryValid
        assignmentX.anchor_le hlimit
      have hownerX : (history.stateAt n).owner assignmentX.role = x := by
        simpa [history, AnchorHistoryData.ownerAt] using assignmentX.owner_eq
      have hownerY : (history.stateAt n).owner assignmentY.role = y := by
        have hownerY' := assignmentY.owner_eq
        rw [← hindexEq] at hownerY'
        simpa [history, AnchorHistoryData.ownerAt] using hownerY'
      have hedge := AnchorStateData.squarefree_owner_mul_owner_add_one
        hstateValid.2 hrole
        (by rw [hownerX]; exact hxBounds.1)
        (by rw [hownerY]; exact hyBounds.1)
      simpa [hownerX, hownerY] using hedge

end LowRangePrefixTraceHistoryCertificate

end Erdos848
