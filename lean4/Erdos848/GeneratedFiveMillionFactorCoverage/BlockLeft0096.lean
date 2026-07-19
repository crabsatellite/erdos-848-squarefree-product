import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0096 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0096 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0096 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0096 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0096 table tree)
    (hleft : factorLeftValid0096 table tree)
    (hright : factorRightValid0096 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0096 :
    factorRootValid0096 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0096 := by
  unfold factorRootValid0096 factorDataChunk0096
  decide

theorem factorLeft0096 :
    factorLeftValid0096 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0096 := by
  unfold factorLeftValid0096 factorDataChunk0096
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
