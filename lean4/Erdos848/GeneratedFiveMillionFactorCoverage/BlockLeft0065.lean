import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0065 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0065 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0065 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0065 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0065 table tree)
    (hleft : factorLeftValid0065 table tree)
    (hright : factorRightValid0065 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0065 :
    factorRootValid0065 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0065 := by
  unfold factorRootValid0065 factorDataChunk0065
  decide

theorem factorLeft0065 :
    factorLeftValid0065 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0065 := by
  unfold factorLeftValid0065 factorDataChunk0065
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
