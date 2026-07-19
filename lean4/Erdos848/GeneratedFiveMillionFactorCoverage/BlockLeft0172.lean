import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0172 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0172 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0172 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0172 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0172 table tree)
    (hleft : factorLeftValid0172 table tree)
    (hright : factorRightValid0172 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0172 :
    factorRootValid0172 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0172 := by
  unfold factorRootValid0172 factorDataChunk0172
  decide

theorem factorLeft0172 :
    factorLeftValid0172 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0172 := by
  unfold factorLeftValid0172 factorDataChunk0172
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
