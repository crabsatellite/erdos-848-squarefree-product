import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0127 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0127 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0127 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0127 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0127 table tree)
    (hleft : factorLeftValid0127 table tree)
    (hright : factorRightValid0127 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0127 :
    factorRootValid0127 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0127 := by
  unfold factorRootValid0127 factorDataChunk0127
  decide

theorem factorLeft0127 :
    factorLeftValid0127 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0127 := by
  unfold factorLeftValid0127 factorDataChunk0127
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
