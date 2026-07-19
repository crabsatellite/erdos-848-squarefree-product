import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0139 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0139 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0139 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0139 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0139 table tree)
    (hleft : factorLeftValid0139 table tree)
    (hright : factorRightValid0139 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0139 :
    factorRootValid0139 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0139 := by
  unfold factorRootValid0139 factorDataChunk0139
  decide

theorem factorLeft0139 :
    factorLeftValid0139 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0139 := by
  unfold factorLeftValid0139 factorDataChunk0139
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
