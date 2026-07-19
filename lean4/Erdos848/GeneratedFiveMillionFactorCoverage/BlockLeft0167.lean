import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0167 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0167 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0167 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0167 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0167 table tree)
    (hleft : factorLeftValid0167 table tree)
    (hright : factorRightValid0167 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0167 :
    factorRootValid0167 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0167 := by
  unfold factorRootValid0167 factorDataChunk0167
  decide

theorem factorLeft0167 :
    factorLeftValid0167 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0167 := by
  unfold factorLeftValid0167 factorDataChunk0167
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
