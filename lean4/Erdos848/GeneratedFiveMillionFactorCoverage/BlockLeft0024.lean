import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0024 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0024 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0024 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0024 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0024 table tree)
    (hleft : factorLeftValid0024 table tree)
    (hright : factorRightValid0024 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0024 :
    factorRootValid0024 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0024 := by
  unfold factorRootValid0024 factorDataChunk0024
  decide

theorem factorLeft0024 :
    factorLeftValid0024 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0024 := by
  unfold factorLeftValid0024 factorDataChunk0024
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
