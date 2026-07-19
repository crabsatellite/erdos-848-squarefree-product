import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0022 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0022 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0022 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0022 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0022 table tree)
    (hleft : factorLeftValid0022 table tree)
    (hright : factorRightValid0022 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0022 :
    factorRootValid0022 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0022 := by
  unfold factorRootValid0022 factorDataChunk0022
  decide

theorem factorLeft0022 :
    factorLeftValid0022 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0022 := by
  unfold factorLeftValid0022 factorDataChunk0022
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
