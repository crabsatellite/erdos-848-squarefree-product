import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0141 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0141 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0141 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0141 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0141 table tree)
    (hleft : factorLeftValid0141 table tree)
    (hright : factorRightValid0141 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0141 :
    factorRootValid0141 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0141 := by
  unfold factorRootValid0141 factorDataChunk0141
  decide

theorem factorLeft0141 :
    factorLeftValid0141 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0141 := by
  unfold factorLeftValid0141 factorDataChunk0141
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
