import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0028 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0028 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0028 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0028 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0028 table tree)
    (hleft : factorLeftValid0028 table tree)
    (hright : factorRightValid0028 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0028 :
    factorRootValid0028 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0028 := by
  unfold factorRootValid0028 factorDataChunk0028
  decide

theorem factorLeft0028 :
    factorLeftValid0028 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0028 := by
  unfold factorLeftValid0028 factorDataChunk0028
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
