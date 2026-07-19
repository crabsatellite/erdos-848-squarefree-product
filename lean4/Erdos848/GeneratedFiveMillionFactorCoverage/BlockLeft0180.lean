import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0180 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0180 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0180 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0180 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0180 table tree)
    (hleft : factorLeftValid0180 table tree)
    (hright : factorRightValid0180 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0180 :
    factorRootValid0180 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0180 := by
  unfold factorRootValid0180 factorDataChunk0180
  decide

theorem factorLeft0180 :
    factorLeftValid0180 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0180 := by
  unfold factorLeftValid0180 factorDataChunk0180
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
