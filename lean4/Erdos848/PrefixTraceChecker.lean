import Erdos848.IndexedDiagonalChecker

namespace Erdos848

/-! ## Declarative prefix-colouring trace certificates

The finite producer recolours old vertices while it advances through the
candidate sequence.  The public certificate records the resulting state as
half-open time intervals.  This avoids trusting a mutable replay engine: every
candidate interval points to one checked anchor-state interval, and the
generic theorems below turn those local facts into a colouring at every
prefix.
-/

/-- A Boolean squarefree oracle together with its kernel proof of soundness. -/
structure SquarefreeOracle where
  certifies : ℕ → Bool
  sound : ∀ {n : ℕ}, certifies n = true → Squarefree n

/-- The three possible occupants of one colour class. -/
inductive OccupantRole where
  | anchor
  | opposite
  | exceptional
deriving DecidableEq, Inhabited

/-- Generic lookup with a harmless default outside the checked index range. -/
def listGetD {α : Type} [Inhabited α] : List α → ℕ → α
  | [], _ => default
  | head :: _, 0 => head
  | _ :: tail, index + 1 => listGetD tail index

theorem listGetD_mem {α : Type} [Inhabited α] {items : List α} {index : ℕ}
    (hindex : index < items.length) : listGetD items index ∈ items := by
  induction items generalizing index with
  | nil => simp at hindex
  | cons head tail ih =>
      cases index with
      | zero => simp [listGetD]
      | succ index =>
          simp only [List.length_cons, Nat.succ_lt_succ_iff] at hindex
          exact List.mem_cons_of_mem head (ih hindex)

/-- A list whose intervals form one exact contiguous half-open cover. -/
def IntervalChain {α : Type} (start stop : α → ℕ) :
    List α → ℕ → ℕ → Prop
  | [], first, last => first = last
  | item :: items, first, last =>
      start item = first ∧ first < stop item ∧
        IntervalChain start stop items (stop item) last

instance intervalChainDecidable {α : Type} (start stop : α → ℕ)
    (items : List α) (first last : ℕ) :
    Decidable (IntervalChain start stop items first last) := by
  induction items generalizing first with
  | nil =>
      simp only [IntervalChain]
      infer_instance
  | cons item items ih =>
      simp only [IntervalChain]
      letI : Decidable (IntervalChain start stop items (stop item) last) :=
        ih (stop item)
      infer_instance

theorem IntervalChain.exists_covering {α : Type} {start stop : α → ℕ}
    {items : List α} {first last n : ℕ}
    (hchain : IntervalChain start stop items first last)
    (hfirst : first ≤ n) (hlast : n < last) :
    ∃ item ∈ items, start item ≤ n ∧ n < stop item := by
  induction items generalizing first with
  | nil =>
      simp only [IntervalChain] at hchain
      omega
  | cons item items ih =>
      simp only [IntervalChain] at hchain
      rcases hchain with ⟨hstart, hnonempty, htail⟩
      by_cases hn : n < stop item
      · exact ⟨item, by simp, by omega⟩
      · obtain ⟨found, hmem, hfound⟩ :=
          ih htail (Nat.le_of_not_gt hn)
        exact ⟨found, List.mem_cons_of_mem item hmem, hfound⟩

theorem IntervalChain.first_le_start_of_mem {α : Type}
    {start stop : α → ℕ} {items : List α} {first last : ℕ}
    (hchain : IntervalChain start stop items first last)
    {item : α} (hmem : item ∈ items) : first ≤ start item := by
  induction items generalizing first with
  | nil => simp at hmem
  | cons head tail ih =>
      simp only [IntervalChain] at hchain
      rcases hchain with ⟨hstart, hnonempty, htail⟩
      rcases List.mem_cons.mp hmem with hitem | hitem
      · subst item
        omega
      · exact le_trans (Nat.le_of_lt hnonempty) (ih htail hitem)

/-- The unique interval item active at `n`, with a default off the cover. -/
def intervalLookup {α : Type} [Inhabited α] (start stop : α → ℕ) :
    List α → ℕ → α
  | [], _ => default
  | item :: items, n =>
      if start item ≤ n ∧ n < stop item then item
      else intervalLookup start stop items n

theorem IntervalChain.intervalLookup_eq_of_mem {α : Type} [Inhabited α]
    {start stop : α → ℕ} {items : List α} {first last n : ℕ}
    (hchain : IntervalChain start stop items first last)
    {item : α} (hmem : item ∈ items)
    (hstart : start item ≤ n) (hstop : n < stop item) :
    intervalLookup start stop items n = item := by
  induction items generalizing first with
  | nil => simp at hmem
  | cons head tail ih =>
      simp only [IntervalChain] at hchain
      rcases hchain with ⟨hheadStart, hheadNonempty, htail⟩
      rcases List.mem_cons.mp hmem with hitem | hitem
      · subst item
        simp [intervalLookup, hstart, hstop]
      · have htailStart : stop head ≤ start item :=
          IntervalChain.first_le_start_of_mem htail hitem
        have hnot : ¬ (start head ≤ n ∧ n < stop head) := by omega
        simp only [intervalLookup, if_neg hnot]
        exact ih htail hitem

/-- One constant state of an anchor colour on a half-open prefix interval. -/
structure AnchorStateData where
  anchor : ℕ
  start : ℕ
  stop : ℕ
  opposite : ℕ
  exceptional : ℕ
deriving Inhabited

namespace AnchorStateData

def owner (state : AnchorStateData) : OccupantRole → ℕ
  | .anchor => state.anchor
  | .opposite => state.opposite
  | .exceptional => state.exceptional

def Valid (oracle : SquarefreeOracle) (state : AnchorStateData) : Prop :=
  1 ≤ state.anchor ∧
  state.anchor % 25 = 7 ∧
  state.anchor ≤ state.start ∧
  state.start < state.stop ∧
  (state.opposite = 0 ∨
    (1 ≤ state.opposite ∧ state.opposite ≤ state.start ∧
      state.opposite % 25 = 18 ∧
      oracle.certifies (state.anchor * state.opposite + 1) = true)) ∧
  (state.exceptional = 0 ∨
    (1 ≤ state.exceptional ∧ state.exceptional ≤ state.start ∧
      state.exceptional % 25 ≠ 7 ∧ state.exceptional % 25 ≠ 18 ∧
      oracle.certifies (state.anchor * state.exceptional + 1) = true)) ∧
  (state.opposite ≠ 0 → state.exceptional ≠ 0 →
    oracle.certifies (state.opposite * state.exceptional + 1) = true)

instance validDecidable (oracle : SquarefreeOracle) (state : AnchorStateData) :
    Decidable (state.Valid oracle) := by
  unfold Valid
  infer_instance

theorem squarefree_owner_mul_owner_add_one {oracle : SquarefreeOracle}
    {state : AnchorStateData} (hvalid : state.Valid oracle)
    {left right : OccupantRole} (hroles : left ≠ right)
    (hleft : 1 ≤ state.owner left) (hright : 1 ≤ state.owner right) :
    Squarefree (state.owner left * state.owner right + 1) := by
  rcases hvalid with ⟨_, _, _, _, hopposite, hexceptional, hcross⟩
  cases left <;> cases right
  · exact (hroles rfl).elim
  · rcases hopposite.resolve_left (by
      simpa [owner] using (show state.owner .opposite ≠ 0 by omega)) with
      ⟨_, _, _, hedge⟩
    exact oracle.sound hedge
  · rcases hexceptional.resolve_left (by
      simpa [owner] using (show state.owner .exceptional ≠ 0 by omega)) with
      ⟨_, _, _, _, hedge⟩
    exact oracle.sound hedge
  · rcases hopposite.resolve_left (by
      simpa [owner] using (show state.owner .opposite ≠ 0 by omega)) with
      ⟨_, _, _, hedge⟩
    simpa [owner, Nat.mul_comm] using oracle.sound hedge
  · exact (hroles rfl).elim
  · exact oracle.sound <| hcross
      (by simpa [owner] using (show state.owner .opposite ≠ 0 by omega))
      (by simpa [owner] using (show state.owner .exceptional ≠ 0 by omega))
  · rcases hexceptional.resolve_left (by
      simpa [owner] using (show state.owner .exceptional ≠ 0 by omega)) with
      ⟨_, _, _, _, hedge⟩
    simpa [owner, Nat.mul_comm] using oracle.sound hedge
  · simpa [owner, Nat.mul_comm] using oracle.sound (hcross
      (by simpa [owner] using (show state.owner .opposite ≠ 0 by omega))
      (by simpa [owner] using (show state.owner .exceptional ≠ 0 by omega)))
  · exact (hroles rfl).elim

end AnchorStateData

/-- The complete state timeline of one residue-7 anchor. -/
structure AnchorHistoryData where
  anchor : ℕ
  states : List AnchorStateData
deriving Inhabited

namespace AnchorHistoryData

def stateAt (history : AnchorHistoryData) (n : ℕ) : AnchorStateData :=
  intervalLookup AnchorStateData.start AnchorStateData.stop history.states n

def ownerAt (history : AnchorHistoryData) (role : OccupantRole) (n : ℕ) : ℕ :=
  (history.stateAt n).owner role

def Valid (oracle : SquarefreeOracle) (limit : ℕ)
    (history : AnchorHistoryData) : Prop :=
  IntervalChain AnchorStateData.start AnchorStateData.stop history.states
      history.anchor (limit + 1) ∧
    ∀ state ∈ history.states,
      state.anchor = history.anchor ∧ state.Valid oracle

instance validDecidable (oracle : SquarefreeOracle) (limit : ℕ)
    (history : AnchorHistoryData) : Decidable (history.Valid oracle limit) := by
  unfold Valid
  infer_instance

theorem stateAt_valid {oracle : SquarefreeOracle} {limit n : ℕ}
    {history : AnchorHistoryData} (hvalid : history.Valid oracle limit)
    (hstart : history.anchor ≤ n) (hstop : n ≤ limit) :
    (history.stateAt n).anchor = history.anchor ∧
      (history.stateAt n).Valid oracle := by
  obtain ⟨state, hmem, hstateStart, hstateStop⟩ :=
    IntervalChain.exists_covering hvalid.1 hstart (by omega)
  have hlookup : history.stateAt n = state :=
    IntervalChain.intervalLookup_eq_of_mem hvalid.1 hmem hstateStart hstateStop
  simpa [hlookup] using hvalid.2 state hmem

end AnchorHistoryData

/-- Balanced random-access storage for all anchor timelines. -/
inductive AnchorHistoryTree where
  | empty
  | leaf (history : AnchorHistoryData)
  | node (size : ℕ) (left right : AnchorHistoryTree)

namespace AnchorHistoryTree

def size : AnchorHistoryTree → ℕ
  | .empty => 0
  | .leaf _ => 1
  | .node totalSize _ _ => totalSize

def get : AnchorHistoryTree → ℕ → AnchorHistoryData
  | .empty, _ => default
  | .leaf history, 0 => history
  | .leaf _, _ + 1 => default
  | .node _ left right, index =>
      if index < left.size then left.get index
      else right.get (index - left.size)

def IndexedValid (oracle : SquarefreeOracle) (limit startIndex : ℕ) :
    AnchorHistoryTree → Prop
  | .empty => True
  | .leaf history =>
      history.anchor = 7 + 25 * startIndex ∧ history.Valid oracle limit
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.IndexedValid oracle limit startIndex ∧
        right.IndexedValid oracle limit (startIndex + left.size)

instance indexedValidDecidable (oracle : SquarefreeOracle) (limit startIndex : ℕ) :
    (tree : AnchorHistoryTree) →
      Decidable (tree.IndexedValid oracle limit startIndex)
  | .empty => isTrue trivial
  | .leaf history => by
      simp only [IndexedValid]
      infer_instance
  | .node totalSize left right =>
      letI : Decidable (left.IndexedValid oracle limit startIndex) :=
        indexedValidDecidable oracle limit startIndex left
      letI : Decidable
          (right.IndexedValid oracle limit (startIndex + left.size)) :=
        indexedValidDecidable oracle limit (startIndex + left.size) right
      by
        simp only [IndexedValid]
        infer_instance

theorem indexedValid_get {oracle : SquarefreeOracle} {limit startIndex : ℕ}
    {tree : AnchorHistoryTree} (hvalid : tree.IndexedValid oracle limit startIndex)
    {index : ℕ} (hindex : index < tree.size) :
    let history := tree.get index
    history.anchor = 7 + 25 * (startIndex + index) ∧
      history.Valid oracle limit := by
  induction tree generalizing startIndex index with
  | empty => simp [size] at hindex
  | leaf history =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [IndexedValid, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [IndexedValid] at hvalid
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

end AnchorHistoryTree

/-- One interval in the reverse history of a candidate vertex. -/
structure CandidateAssignmentData where
  start : ℕ
  stop : ℕ
  anchorIndex : ℕ
  stateIndex : ℕ
  role : OccupantRole
deriving Inhabited

namespace CandidateAssignmentData

def Valid (anchors : AnchorHistoryTree) (vertex : ℕ)
    (assignment : CandidateAssignmentData) : Prop :=
  assignment.anchorIndex < anchors.size ∧
  assignment.stateIndex < (anchors.get assignment.anchorIndex).states.length ∧
  let state := listGetD (anchors.get assignment.anchorIndex).states
      assignment.stateIndex
  assignment.start = state.start ∧ assignment.stop = state.stop ∧
    state.owner assignment.role = vertex

instance validDecidable (anchors : AnchorHistoryTree) (vertex : ℕ)
    (assignment : CandidateAssignmentData) :
    Decidable (assignment.Valid anchors vertex) := by
  unfold Valid
  infer_instance

end CandidateAssignmentData

/-- The complete reverse-assignment history of one diagonal candidate. -/
structure CandidateHistoryData where
  vertex : ℕ
  assignments : List CandidateAssignmentData
deriving Inhabited

namespace CandidateHistoryData

def Valid (anchors : AnchorHistoryTree) (limit : ℕ)
    (history : CandidateHistoryData) : Prop :=
  IntervalChain CandidateAssignmentData.start CandidateAssignmentData.stop
      history.assignments history.vertex (limit + 1) ∧
    ∀ assignment ∈ history.assignments,
      assignment.Valid anchors history.vertex

instance validDecidable (anchors : AnchorHistoryTree) (limit : ℕ)
    (history : CandidateHistoryData) :
    Decidable (history.Valid anchors limit) := by
  unfold Valid
  infer_instance

end CandidateHistoryData

/-- Balanced sequence parallel to the exact indexed diagonal marker. -/
inductive CandidateHistoryTree where
  | empty
  | leaf (history : CandidateHistoryData)
  | node (size : ℕ) (left right : CandidateHistoryTree)

namespace CandidateHistoryTree

def size : CandidateHistoryTree → ℕ
  | .empty => 0
  | .leaf _ => 1
  | .node totalSize _ _ => totalSize

def get : CandidateHistoryTree → ℕ → CandidateHistoryData
  | .empty, _ => default
  | .leaf history, 0 => history
  | .leaf _, _ + 1 => default
  | .node _ left right, index =>
      if index < left.size then left.get index
      else right.get (index - left.size)

def IndexedValid (marker : IndexedMarkerData) (anchors : AnchorHistoryTree)
    (limit startIndex : ℕ) : CandidateHistoryTree → Prop
  | .empty => True
  | .leaf history =>
      history.vertex = marker.values.get startIndex ∧
        history.Valid anchors limit
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.IndexedValid marker anchors limit startIndex ∧
        right.IndexedValid marker anchors limit (startIndex + left.size)

instance indexedValidDecidable (marker : IndexedMarkerData)
    (anchors : AnchorHistoryTree) (limit startIndex : ℕ) :
    (tree : CandidateHistoryTree) →
      Decidable (tree.IndexedValid marker anchors limit startIndex)
  | .empty => isTrue trivial
  | .leaf history => by
      simp only [IndexedValid]
      infer_instance
  | .node totalSize left right =>
      letI : Decidable
          (left.IndexedValid marker anchors limit startIndex) :=
        indexedValidDecidable marker anchors limit startIndex left
      letI : Decidable
          (right.IndexedValid marker anchors limit (startIndex + left.size)) :=
        indexedValidDecidable marker anchors limit (startIndex + left.size) right
      by
        simp only [IndexedValid]
        infer_instance

theorem indexedValid_get {marker : IndexedMarkerData}
    {anchors : AnchorHistoryTree} {limit startIndex : ℕ}
    {tree : CandidateHistoryTree}
    (hvalid : tree.IndexedValid marker anchors limit startIndex)
    {index : ℕ} (hindex : index < tree.size) :
    let history := tree.get index
    history.vertex = marker.values.get (startIndex + index) ∧
      history.Valid anchors limit := by
  induction tree generalizing startIndex index with
  | empty => simp [size] at hindex
  | leaf history =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [IndexedValid, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [IndexedValid] at hvalid
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

/-- All numerical history data needed to build every bounded prefix state. -/
structure PrefixTraceHistoryCertificate (oracle : SquarefreeOracle) where
  limit : ℕ
  marker : IndexedMarkerData
  anchors : AnchorHistoryTree
  candidates : CandidateHistoryTree
  markerLimit : marker.limit = limit
  anchorsValid : anchors.IndexedValid oracle limit 0
  candidateSize : candidates.size = marker.values.size
  candidatesValid : candidates.IndexedValid marker anchors limit 0

/-- The checked assignment selected for one candidate at one prefix. -/
structure TraceAssignment (anchors : AnchorHistoryTree) (n vertex : ℕ) where
  anchorIndex : ℕ
  role : OccupantRole
  index_lt : anchorIndex < anchors.size
  anchor_le : (anchors.get anchorIndex).anchor ≤ n
  owner_eq : (anchors.get anchorIndex).ownerAt role n = vertex

namespace PrefixTraceHistoryCertificate

theorem assignment_nonempty_of_contains {oracle : SquarefreeOracle}
    (certificate : PrefixTraceHistoryCertificate oracle)
    {n vertex : ℕ} (hvertex : vertex ≤ n) (hn : n ≤ certificate.limit)
    (hcontains : certificate.marker.Contains vertex) :
    Nonempty (TraceAssignment certificate.anchors n vertex) := by
  rcases hcontains with ⟨candidateIndex, hcandidateIndex, hmarkerValue⟩
  have hcandidateTreeIndex : candidateIndex < certificate.candidates.size := by
    rw [certificate.candidateSize]
    exact hcandidateIndex
  have hcandidateValid := CandidateHistoryTree.indexedValid_get
    certificate.candidatesValid hcandidateTreeIndex
  simp only [Nat.zero_add] at hcandidateValid
  let history := certificate.candidates.get candidateIndex
  have hhistoryVertex : history.vertex = vertex := by
    calc
      history.vertex = certificate.marker.values.get candidateIndex :=
        hcandidateValid.1
      _ = vertex := hmarkerValue
  have hhistoryStart : history.vertex ≤ n := hhistoryVertex ▸ hvertex
  obtain ⟨assignment, hassignmentMem, hassignmentStart, hassignmentStop⟩ :=
    IntervalChain.exists_covering hcandidateValid.2.1 hhistoryStart (by omega)
  have hassignmentValid := hcandidateValid.2.2 assignment hassignmentMem
  rcases hassignmentValid with
    ⟨hanchorIndex, hstateIndex, hstartEq, hstopEq, howner⟩
  let anchorHistory := certificate.anchors.get assignment.anchorIndex
  let state := listGetD anchorHistory.states assignment.stateIndex
  have hanchorValid := AnchorHistoryTree.indexedValid_get
    certificate.anchorsValid hanchorIndex
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

/-- The total colour function; off-certificate values use the harmless zero. -/
noncomputable def colourAt {oracle : SquarefreeOracle}
    (certificate : PrefixTraceHistoryCertificate oracle) (n vertex : ℕ) : ℕ := by
  classical
  exact if h : Nonempty (TraceAssignment certificate.anchors n vertex) then
      (certificate.anchors.get (Classical.choice h).anchorIndex).anchor
    else 0

/-- A complete indexed history and diagonal-completeness theorem produce the
literal finite-prefix colouring certificate required by `MainTheorem`. -/
theorem prefixColouringCertificate {oracle : SquarefreeOracle}
    (certificate : PrefixTraceHistoryCertificate oracle)
    (hdiagonal : ∀ {x : ℕ}, 1 ≤ x → x ≤ certificate.limit →
      ¬ Squarefree (x ^ 2 + 1) → certificate.marker.Contains x) :
    PrefixColouringCertificate certificate.limit := by
  classical
  intro n _hn hlimit
  refine ⟨{
    colour := certificate.colourAt n
    colour_mem := ?_
    separated := ?_ }⟩
  · intro x hx hnotSquarefree
    have hxBounds := Finset.mem_Icc.mp hx
    have hxContains : certificate.marker.Contains x :=
      hdiagonal hxBounds.1 (hxBounds.2.trans hlimit) (by
        simpa [pow_two] using hnotSquarefree)
    have hxAssignment := certificate.assignment_nonempty_of_contains
      hxBounds.2 hlimit hxContains
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
    have hxContains : certificate.marker.Contains x :=
      hdiagonal hxBounds.1 (hxBounds.2.trans hlimit) (by
        simpa [pow_two] using hnotSquarefreeX)
    have hyContains : certificate.marker.Contains y :=
      hdiagonal hyBounds.1 (hyBounds.2.trans hlimit) (by
        simpa [pow_two] using hnotSquarefreeY)
    have hxAssignment := certificate.assignment_nonempty_of_contains
      hxBounds.2 hlimit hxContains
    have hyAssignment := certificate.assignment_nonempty_of_contains
      hyBounds.2 hlimit hyContains
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

end PrefixTraceHistoryCertificate

end Erdos848
