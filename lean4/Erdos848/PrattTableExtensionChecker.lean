import Erdos848.FinitePrefixChecker

namespace Erdos848
namespace PrattTableData

/-! ## Incremental shared Pratt tables

An already checked Pratt table can be retained as the left prefix of a larger
table.  Only the appended nodes then need fresh numerical checking.  The
lemmas below transport the old range proof without reducing those old nodes a
second time.
-/

/-- Append a balanced tree of new, globally indexed Pratt nodes. -/
def extend (base : PrattTableData) (extra : PrattNodeTree) : PrattTableData :=
  { nodes := .node (base.nodes.size + extra.size) base.nodes extra }

@[simp] theorem extend_nodes_size (base : PrattTableData)
    (extra : PrattNodeTree) :
    (base.extend extra).nodes.size = base.nodes.size + extra.size := rfl

theorem nodeAt_extend_left (base : PrattTableData) (extra : PrattNodeTree)
    {index : ℕ} (hindex : index < base.nodes.size) :
    (base.extend extra).nodeAt index = base.nodeAt index := by
  simp [extend, nodeAt, PrattNodeTree.get, hindex]

theorem factorValues_extend_left (base : PrattTableData)
    (extra : PrattNodeTree) {index : ℕ} (hindex : index < base.nodes.size)
    (hvalid : base.NodeValid index) :
    (base.extend extra).factorValues index = base.factorValues index := by
  unfold factorValues
  rw [nodeAt_extend_left base extra hindex]
  apply List.map_congr_left
  intro factorIndex hfactorIndex
  have hfactorLt : factorIndex < index := of_decide_eq_true <|
    (List.all_eq_true.mp hvalid.1) factorIndex hfactorIndex
  rw [nodeAt_extend_left base extra (hfactorLt.trans hindex)]

theorem nodeValid_extend_left (base : PrattTableData)
    (extra : PrattNodeTree) {index : ℕ} (hindex : index < base.nodes.size)
    (hvalid : base.NodeValid index) :
    (base.extend extra).NodeValid index := by
  have hfactorValues := factorValues_extend_left base extra hindex hvalid
  unfold NodeValid at hvalid ⊢
  rw [nodeAt_extend_left base extra hindex, hfactorValues]
  exact hvalid

theorem Valid.rangeValid {table : PrattTableData} (hvalid : table.Valid) :
    table.RangeValid 1 table.nodes.size := by
  unfold RangeValid
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hstart hstop
  have hindex : index < table.nodes.size := by omega
  have hor : index = 0 ∨ table.NodeValid index := of_decide_eq_true <|
    (allNatRange_eq_true_iff _ _ _).mp hvalid.2.2 index
      (Nat.zero_le index) (by simpa using hindex)
  exact decide_eq_true_eq.mpr <| hor.resolve_left (by omega)

theorem rangeValid_extend_left (base : PrattTableData)
    (extra : PrattNodeTree) {start stop : ℕ}
    (hstartStop : start ≤ stop) (hstop : stop ≤ base.nodes.size)
    (hvalid : base.RangeValid start stop) :
    (base.extend extra).RangeValid start stop := by
  unfold RangeValid
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hindexStart hindexStop
  have hindexStop' : index < stop := by omega
  have hnode := hvalid.nodeValid hindexStart hindexStop'
  exact decide_eq_true_eq.mpr <|
    nodeValid_extend_left base extra (hindexStop'.trans_le hstop) hnode

/-! The original checker stores repeated prime factors so that their product is
definitionally `p - 1`.  The Lucas order condition, however, only needs one
modular-power check per distinct prime factor.  The fast predicate below keeps
the full product check and removes duplicates only from that final order list.
-/

def FastNodeValid (table : PrattTableData) (index : ℕ) : Prop :=
  let node := table.nodeAt index
  let factors := table.factorValues index
  (node.factorIndices.all fun factorIndex => decide (factorIndex < index)) = true ∧
    1 < node.value ∧
    factors.prod = node.value - 1 ∧
    powMod node.witness (node.value - 1) node.value = 1 % node.value ∧
    (factors.eraseDups.all fun q => decide
      (powMod node.witness ((node.value - 1) / q) node.value ≠
        1 % node.value)) = true

instance fastNodeValidDecidable (table : PrattTableData) (index : ℕ) :
    Decidable (table.FastNodeValid index) := by
  unfold FastNodeValid
  infer_instance

theorem FastNodeValid.nodeValid {table : PrattTableData} {index : ℕ}
    (hvalid : table.FastNodeValid index) : table.NodeValid index := by
  unfold FastNodeValid at hvalid
  unfold NodeValid
  dsimp only at hvalid ⊢
  rcases hvalid with ⟨hrefs, hvalue, hproduct, hfermat, horders⟩
  refine ⟨hrefs, hvalue, hproduct, hfermat, ?_⟩
  apply List.all_eq_true.mpr
  intro q hq
  exact (List.all_eq_true.mp horders) q (List.mem_eraseDups.mpr hq)

def FastRangeValid (table : PrattTableData) (start stop : ℕ) : Prop :=
  allNatRange (fun index => decide (table.FastNodeValid index))
    start (stop - start) = true

instance fastRangeValidDecidable (table : PrattTableData)
    (start stop : ℕ) : Decidable (table.FastRangeValid start stop) := by
  unfold FastRangeValid
  infer_instance

theorem FastRangeValid.fastNodeValid {table : PrattTableData}
    {start stop index : ℕ} (hvalid : table.FastRangeValid start stop)
    (hstart : start ≤ index) (hstop : index < stop) :
    table.FastNodeValid index := by
  apply of_decide_eq_true
  exact (allNatRange_eq_true_iff _ _ _).mp hvalid index hstart (by omega)

theorem FastRangeValid.append {table : PrattTableData}
    {start middle stop : ℕ} (hleft : table.FastRangeValid start middle)
    (hright : table.FastRangeValid middle stop) :
    table.FastRangeValid start stop := by
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hindexStart hindexStop
  by_cases hmiddle : index < middle
  · exact decide_eq_true_eq.mpr <|
      hleft.fastNodeValid hindexStart hmiddle
  · exact decide_eq_true_eq.mpr <|
      hright.fastNodeValid (Nat.le_of_not_gt hmiddle) (by omega)

theorem FastRangeValid.rangeValid {table : PrattTableData}
    {start stop : ℕ} (hstartStop : start ≤ stop)
    (hvalid : table.FastRangeValid start stop) :
    table.RangeValid start stop := by
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hindexStart hindexStop
  have hindexStop' : index < stop := by omega
  exact decide_eq_true_eq.mpr <|
    (hvalid.fastNodeValid hindexStart hindexStop').nodeValid

/-- Extend a valid table by checking exactly the appended half-open range. -/
theorem valid_extend {base : PrattTableData} {extra : PrattNodeTree}
    (hbase : base.Valid)
    (hextra : (base.extend extra).RangeValid base.nodes.size
      (base.extend extra).nodes.size) :
    (base.extend extra).Valid := by
  have hleft : (base.extend extra).RangeValid 1 base.nodes.size :=
    rangeValid_extend_left base extra hbase.1 (Nat.le_refl _)
      hbase.rangeValid
  apply valid_of_range
  · have hbasePositive : 0 < base.nodes.size := hbase.1
    simp only [extend_nodes_size]
    omega
  · rw [nodeAt_extend_left base extra hbase.1]
    exact hbase.2.1
  · exact hleft.append hextra

/-- Fast numerical checks for the appended range are sufficient for the same
ordinary `PrattTableData.Valid` endpoint. -/
theorem valid_extend_fast {base : PrattTableData} {extra : PrattNodeTree}
    (hbase : base.Valid)
    (hextra : (base.extend extra).FastRangeValid base.nodes.size
      (base.extend extra).nodes.size) :
    (base.extend extra).Valid :=
  valid_extend hbase (hextra.rangeValid (by
    simp only [extend_nodes_size]
    omega))

end PrattTableData
end Erdos848
