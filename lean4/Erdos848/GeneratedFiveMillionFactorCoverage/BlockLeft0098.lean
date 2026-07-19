import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0098 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0098 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0098 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0098 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0098 table tree)
    (hleft : factorLeftValid0098 table tree)
    (hright : factorRightValid0098 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0098 :
    factorRootValid0098 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0098 := by
  unfold factorRootValid0098 factorDataChunk0098
  decide

theorem factorLeft0098 :
    factorLeftValid0098 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0098 := by
  unfold factorLeftValid0098 factorDataChunk0098
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
