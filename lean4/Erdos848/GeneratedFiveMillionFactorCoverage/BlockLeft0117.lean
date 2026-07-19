import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0117 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0117 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0117 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0117 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0117 table tree)
    (hleft : factorLeftValid0117 table tree)
    (hright : factorRightValid0117 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0117 :
    factorRootValid0117 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0117 := by
  unfold factorRootValid0117 factorDataChunk0117
  decide

theorem factorLeft0117 :
    factorLeftValid0117 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0117 := by
  unfold factorLeftValid0117 factorDataChunk0117
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
