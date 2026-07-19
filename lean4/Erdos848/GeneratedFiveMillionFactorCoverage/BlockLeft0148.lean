import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0148 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0148 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0148 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0148 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0148 table tree)
    (hleft : factorLeftValid0148 table tree)
    (hright : factorRightValid0148 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0148 :
    factorRootValid0148 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0148 := by
  unfold factorRootValid0148 factorDataChunk0148
  decide

theorem factorLeft0148 :
    factorLeftValid0148 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0148 := by
  unfold factorLeftValid0148 factorDataChunk0148
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
