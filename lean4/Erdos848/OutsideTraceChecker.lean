import Erdos848.PrefixTraceChecker

namespace Erdos848

namespace CandidateHistoryTree

/-!
Memory-bounded factorization of an outside-candidate validity proof.  The
assignment histories and the official marker alignment are independent
recursive predicates.  Checking them in separate kernel processes avoids
holding the large anchor oracle and the 125,808-entry marker reduction at the
same time; the theorem below reconstructs the original public predicate.
-/

def LocallyIndexedValid (anchors : AnchorHistoryTree) (limit : ℕ) :
    CandidateHistoryTree → Prop
  | .empty => True
  | .leaf history => history.Valid anchors limit
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.LocallyIndexedValid anchors limit ∧
        right.LocallyIndexedValid anchors limit

instance locallyIndexedValidDecidable (anchors : AnchorHistoryTree)
    (limit : ℕ) :
    (tree : CandidateHistoryTree) →
      Decidable (tree.LocallyIndexedValid anchors limit)
  | .empty => isTrue trivial
  | .leaf history => by
      simp only [LocallyIndexedValid]
      infer_instance
  | .node totalSize left right =>
      letI : Decidable (left.LocallyIndexedValid anchors limit) :=
        locallyIndexedValidDecidable anchors limit left
      letI : Decidable (right.LocallyIndexedValid anchors limit) :=
        locallyIndexedValidDecidable anchors limit right
      by
        simp only [LocallyIndexedValid]
        infer_instance

def MarkerIndexedValid (marker : IndexedMarkerData) (startIndex : ℕ) :
    CandidateHistoryTree → Prop
  | .empty => True
  | .leaf history => history.vertex = marker.values.get startIndex
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.MarkerIndexedValid marker startIndex ∧
        right.MarkerIndexedValid marker (startIndex + left.size)

instance markerIndexedValidDecidable (marker : IndexedMarkerData)
    (startIndex : ℕ) :
    (tree : CandidateHistoryTree) →
      Decidable (tree.MarkerIndexedValid marker startIndex)
  | .empty => isTrue trivial
  | .leaf history => by
      simp only [MarkerIndexedValid]
      infer_instance
  | .node totalSize left right =>
      letI : Decidable (left.MarkerIndexedValid marker startIndex) :=
        markerIndexedValidDecidable marker startIndex left
      letI : Decidable
          (right.MarkerIndexedValid marker (startIndex + left.size)) :=
        markerIndexedValidDecidable marker (startIndex + left.size) right
      by
        simp only [MarkerIndexedValid]
        infer_instance

/-- The split predicates are exactly sufficient: no assumption is added when
they are recombined into the original marker-indexed history validity. -/
theorem indexedValid_of_local_and_marker
    {marker : IndexedMarkerData} {anchors : AnchorHistoryTree}
    {limit startIndex : ℕ} {tree : CandidateHistoryTree}
    (hlocal : tree.LocallyIndexedValid anchors limit)
    (hmarker : tree.MarkerIndexedValid marker startIndex) :
    tree.IndexedValid marker anchors limit startIndex := by
  induction tree generalizing startIndex with
  | empty => trivial
  | leaf history =>
      exact ⟨hmarker, hlocal⟩
  | node totalSize left right hleft hright =>
      simp only [LocallyIndexedValid] at hlocal
      simp only [MarkerIndexedValid] at hmarker
      exact ⟨hlocal.1,
        hleft hlocal.2.1 hmarker.2.1,
        hright hlocal.2.2 hmarker.2.2⟩

end CandidateHistoryTree

end Erdos848
