import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0023 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0023 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0023 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0023 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0023 table tree)
    (hleft : factorLeftValid0023 table tree)
    (hright : factorRightValid0023 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0023 :
    factorRootValid0023 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0023 := by
  unfold factorRootValid0023 factorDataChunk0023
  decide

theorem factorLeft0023 :
    factorLeftValid0023 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0023 := by
  unfold factorLeftValid0023 factorDataChunk0023
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
