import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0040 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0040 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0040 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0040 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0040 table tree)
    (hleft : factorLeftValid0040 table tree)
    (hright : factorRightValid0040 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0040 :
    factorRootValid0040 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0040 := by
  unfold factorRootValid0040 factorDataChunk0040
  decide

theorem factorLeft0040 :
    factorLeftValid0040 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0040 := by
  unfold factorLeftValid0040 factorDataChunk0040
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
