import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0088 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0088 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0088 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0088 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0088 table tree)
    (hleft : factorLeftValid0088 table tree)
    (hright : factorRightValid0088 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0088 :
    factorRootValid0088 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0088 := by
  unfold factorRootValid0088 factorDataChunk0088
  decide

theorem factorLeft0088 :
    factorLeftValid0088 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0088 := by
  unfold factorLeftValid0088 factorDataChunk0088
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
