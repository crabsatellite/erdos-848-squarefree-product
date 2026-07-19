import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0058 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0058 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0058 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0058 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0058 table tree)
    (hleft : factorLeftValid0058 table tree)
    (hright : factorRightValid0058 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0058 :
    factorRootValid0058 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0058 := by
  unfold factorRootValid0058 factorDataChunk0058
  decide

theorem factorLeft0058 :
    factorLeftValid0058 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0058 := by
  unfold factorLeftValid0058 factorDataChunk0058
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
