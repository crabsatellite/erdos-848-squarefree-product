import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0162 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0162 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0162 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0162 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0162 table tree)
    (hleft : factorLeftValid0162 table tree)
    (hright : factorRightValid0162 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0162 :
    factorRootValid0162 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0162 := by
  unfold factorRootValid0162 factorDataChunk0162
  decide

theorem factorLeft0162 :
    factorLeftValid0162 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0162 := by
  unfold factorLeftValid0162 factorDataChunk0162
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
