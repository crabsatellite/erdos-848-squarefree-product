import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0168 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0168 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0168 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0168 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0168 table tree)
    (hleft : factorLeftValid0168 table tree)
    (hright : factorRightValid0168 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0168 :
    factorRootValid0168 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0168 := by
  unfold factorRootValid0168 factorDataChunk0168
  decide

theorem factorLeft0168 :
    factorLeftValid0168 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0168 := by
  unfold factorLeftValid0168 factorDataChunk0168
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
