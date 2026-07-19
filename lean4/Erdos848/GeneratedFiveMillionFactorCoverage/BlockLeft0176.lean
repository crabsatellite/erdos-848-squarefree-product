import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0176 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0176 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0176 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0176 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0176 table tree)
    (hleft : factorLeftValid0176 table tree)
    (hright : factorRightValid0176 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0176 :
    factorRootValid0176 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0176 := by
  unfold factorRootValid0176 factorDataChunk0176
  decide

theorem factorLeft0176 :
    factorLeftValid0176 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0176 := by
  unfold factorLeftValid0176 factorDataChunk0176
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
