import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0116 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0116 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0116 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0116 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0116 table tree)
    (hleft : factorLeftValid0116 table tree)
    (hright : factorRightValid0116 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0116 :
    factorRootValid0116 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0116 := by
  unfold factorRootValid0116 factorDataChunk0116
  decide

theorem factorLeft0116 :
    factorLeftValid0116 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0116 := by
  unfold factorLeftValid0116 factorDataChunk0116
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
