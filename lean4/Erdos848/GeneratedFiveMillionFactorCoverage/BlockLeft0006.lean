import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0006 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0006 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0006 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0006 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0006 table tree)
    (hleft : factorLeftValid0006 table tree)
    (hright : factorRightValid0006 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0006 :
    factorRootValid0006 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0006 := by
  unfold factorRootValid0006 factorDataChunk0006
  decide

theorem factorLeft0006 :
    factorLeftValid0006 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0006 := by
  unfold factorLeftValid0006 factorDataChunk0006
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
