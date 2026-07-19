import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0152 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0152 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0152 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0152 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0152 table tree)
    (hleft : factorLeftValid0152 table tree)
    (hright : factorRightValid0152 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0152 :
    factorRootValid0152 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0152 := by
  unfold factorRootValid0152 factorDataChunk0152
  decide

theorem factorLeft0152 :
    factorLeftValid0152 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0152 := by
  unfold factorLeftValid0152 factorDataChunk0152
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
