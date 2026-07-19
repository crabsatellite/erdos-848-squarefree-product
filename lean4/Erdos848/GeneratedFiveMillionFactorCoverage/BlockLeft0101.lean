import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0101 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0101 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0101 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0101 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0101 table tree)
    (hleft : factorLeftValid0101 table tree)
    (hright : factorRightValid0101 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0101 :
    factorRootValid0101 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0101 := by
  unfold factorRootValid0101 factorDataChunk0101
  decide

theorem factorLeft0101 :
    factorLeftValid0101 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0101 := by
  unfold factorLeftValid0101 factorDataChunk0101
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
