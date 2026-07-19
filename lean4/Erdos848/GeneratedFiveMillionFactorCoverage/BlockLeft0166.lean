import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0166 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0166 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0166 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0166 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0166 table tree)
    (hleft : factorLeftValid0166 table tree)
    (hright : factorRightValid0166 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0166 :
    factorRootValid0166 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0166 := by
  unfold factorRootValid0166 factorDataChunk0166
  decide

theorem factorLeft0166 :
    factorLeftValid0166 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0166 := by
  unfold factorLeftValid0166 factorDataChunk0166
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
