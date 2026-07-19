import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0110 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0110 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0110 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0110 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0110 table tree)
    (hleft : factorLeftValid0110 table tree)
    (hright : factorRightValid0110 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0110 :
    factorRootValid0110 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0110 := by
  unfold factorRootValid0110 factorDataChunk0110
  decide

theorem factorLeft0110 :
    factorLeftValid0110 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0110 := by
  unfold factorLeftValid0110 factorDataChunk0110
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
