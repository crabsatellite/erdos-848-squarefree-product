import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0001 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0001 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0001 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0001 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0001 table tree)
    (hleft : factorLeftValid0001 table tree)
    (hright : factorRightValid0001 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0001 :
    factorRootValid0001 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0001 := by
  unfold factorRootValid0001 factorDataChunk0001
  decide

theorem factorLeft0001 :
    factorLeftValid0001 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0001 := by
  unfold factorLeftValid0001 factorDataChunk0001
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
