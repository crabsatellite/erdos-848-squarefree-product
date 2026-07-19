import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0041 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0041 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0041 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0041 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0041 table tree)
    (hleft : factorLeftValid0041 table tree)
    (hright : factorRightValid0041 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0041 :
    factorRootValid0041 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0041 := by
  unfold factorRootValid0041 factorDataChunk0041
  decide

theorem factorLeft0041 :
    factorLeftValid0041 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0041 := by
  unfold factorLeftValid0041 factorDataChunk0041
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
