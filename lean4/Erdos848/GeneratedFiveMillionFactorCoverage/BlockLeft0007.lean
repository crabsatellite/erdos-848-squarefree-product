import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0007 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0007 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0007 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0007 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0007 table tree)
    (hleft : factorLeftValid0007 table tree)
    (hright : factorRightValid0007 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0007 :
    factorRootValid0007 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0007 := by
  unfold factorRootValid0007 factorDataChunk0007
  decide

theorem factorLeft0007 :
    factorLeftValid0007 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0007 := by
  unfold factorLeftValid0007 factorDataChunk0007
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
