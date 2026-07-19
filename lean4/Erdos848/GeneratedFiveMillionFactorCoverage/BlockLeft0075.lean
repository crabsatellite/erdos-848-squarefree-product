import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0075 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0075 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0075 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0075 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0075 table tree)
    (hleft : factorLeftValid0075 table tree)
    (hright : factorRightValid0075 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0075 :
    factorRootValid0075 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0075 := by
  unfold factorRootValid0075 factorDataChunk0075
  decide

theorem factorLeft0075 :
    factorLeftValid0075 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0075 := by
  unfold factorLeftValid0075 factorDataChunk0075
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
