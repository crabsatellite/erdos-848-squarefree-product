import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0008 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0008 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0008 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0008 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0008 table tree)
    (hleft : factorLeftValid0008 table tree)
    (hright : factorRightValid0008 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0008 :
    factorRootValid0008 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0008 := by
  unfold factorRootValid0008 factorDataChunk0008
  decide

theorem factorLeft0008 :
    factorLeftValid0008 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0008 := by
  unfold factorLeftValid0008 factorDataChunk0008
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
