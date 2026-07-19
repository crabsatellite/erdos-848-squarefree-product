import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0078 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0078 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0078 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0078 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0078 table tree)
    (hleft : factorLeftValid0078 table tree)
    (hright : factorRightValid0078 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0078 :
    factorRootValid0078 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0078 := by
  unfold factorRootValid0078 factorDataChunk0078
  decide

theorem factorLeft0078 :
    factorLeftValid0078 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0078 := by
  unfold factorLeftValid0078 factorDataChunk0078
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
