import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0097 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0097 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0097 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0097 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0097 table tree)
    (hleft : factorLeftValid0097 table tree)
    (hright : factorRightValid0097 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0097 :
    factorRootValid0097 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0097 := by
  unfold factorRootValid0097 factorDataChunk0097
  decide

theorem factorLeft0097 :
    factorLeftValid0097 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0097 := by
  unfold factorLeftValid0097 factorDataChunk0097
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
