import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0113 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0113 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0113 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0113 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0113 table tree)
    (hleft : factorLeftValid0113 table tree)
    (hright : factorRightValid0113 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0113 :
    factorRootValid0113 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0113 := by
  unfold factorRootValid0113 factorDataChunk0113
  decide

theorem factorLeft0113 :
    factorLeftValid0113 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0113 := by
  unfold factorLeftValid0113 factorDataChunk0113
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
