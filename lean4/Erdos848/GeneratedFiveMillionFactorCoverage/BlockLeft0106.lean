import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0106 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0106 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0106 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0106 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0106 table tree)
    (hleft : factorLeftValid0106 table tree)
    (hright : factorRightValid0106 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0106 :
    factorRootValid0106 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0106 := by
  unfold factorRootValid0106 factorDataChunk0106
  decide

theorem factorLeft0106 :
    factorLeftValid0106 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0106 := by
  unfold factorLeftValid0106 factorDataChunk0106
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
