import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0138 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0138 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0138 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0138 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0138 table tree)
    (hleft : factorLeftValid0138 table tree)
    (hright : factorRightValid0138 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0138 :
    factorRootValid0138 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0138 := by
  unfold factorRootValid0138 factorDataChunk0138
  decide

theorem factorLeft0138 :
    factorLeftValid0138 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0138 := by
  unfold factorLeftValid0138 factorDataChunk0138
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
