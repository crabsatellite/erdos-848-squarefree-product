import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0143 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0143 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0143 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0143 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0143 table tree)
    (hleft : factorLeftValid0143 table tree)
    (hright : factorRightValid0143 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0143 :
    factorRootValid0143 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0143 := by
  unfold factorRootValid0143 factorDataChunk0143
  decide

theorem factorLeft0143 :
    factorLeftValid0143 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0143 := by
  unfold factorLeftValid0143 factorDataChunk0143
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
