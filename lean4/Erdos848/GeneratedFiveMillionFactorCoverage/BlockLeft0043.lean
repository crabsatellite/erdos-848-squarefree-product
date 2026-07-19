import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0043 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0043 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0043 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0043 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0043 table tree)
    (hleft : factorLeftValid0043 table tree)
    (hright : factorRightValid0043 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0043 :
    factorRootValid0043 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0043 := by
  unfold factorRootValid0043 factorDataChunk0043
  decide

theorem factorLeft0043 :
    factorLeftValid0043 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0043 := by
  unfold factorLeftValid0043 factorDataChunk0043
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
