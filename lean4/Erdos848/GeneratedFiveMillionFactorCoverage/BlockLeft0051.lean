import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0051 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0051 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0051 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0051 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0051 table tree)
    (hleft : factorLeftValid0051 table tree)
    (hright : factorRightValid0051 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0051 :
    factorRootValid0051 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0051 := by
  unfold factorRootValid0051 factorDataChunk0051
  decide

theorem factorLeft0051 :
    factorLeftValid0051 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0051 := by
  unfold factorLeftValid0051 factorDataChunk0051
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
