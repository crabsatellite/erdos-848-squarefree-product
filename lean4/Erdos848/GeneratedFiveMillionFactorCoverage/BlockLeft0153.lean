import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0153 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0153 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0153 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0153 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0153 table tree)
    (hleft : factorLeftValid0153 table tree)
    (hright : factorRightValid0153 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0153 :
    factorRootValid0153 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0153 := by
  unfold factorRootValid0153 factorDataChunk0153
  decide

theorem factorLeft0153 :
    factorLeftValid0153 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0153 := by
  unfold factorLeftValid0153 factorDataChunk0153
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
