import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0068 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0068 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0068 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0068 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0068 table tree)
    (hleft : factorLeftValid0068 table tree)
    (hright : factorRightValid0068 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0068 :
    factorRootValid0068 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0068 := by
  unfold factorRootValid0068 factorDataChunk0068
  decide

theorem factorLeft0068 :
    factorLeftValid0068 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0068 := by
  unfold factorLeftValid0068 factorDataChunk0068
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
