import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0130 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0130 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0130 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0130 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0130 table tree)
    (hleft : factorLeftValid0130 table tree)
    (hright : factorRightValid0130 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0130 :
    factorRootValid0130 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0130 := by
  unfold factorRootValid0130 factorDataChunk0130
  decide

theorem factorLeft0130 :
    factorLeftValid0130 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0130 := by
  unfold factorLeftValid0130 factorDataChunk0130
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
