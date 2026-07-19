import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0150 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0150 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0150 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0150 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0150 table tree)
    (hleft : factorLeftValid0150 table tree)
    (hright : factorRightValid0150 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0150 :
    factorRootValid0150 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0150 := by
  unfold factorRootValid0150 factorDataChunk0150
  decide

theorem factorLeft0150 :
    factorLeftValid0150 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0150 := by
  unfold factorLeftValid0150 factorDataChunk0150
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
