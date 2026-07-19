import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0190 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0190 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0190 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0190 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0190 table tree)
    (hleft : factorLeftValid0190 table tree)
    (hright : factorRightValid0190 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0190 :
    factorRootValid0190 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0190 := by
  unfold factorRootValid0190 factorDataChunk0190
  decide

theorem factorLeft0190 :
    factorLeftValid0190 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0190 := by
  unfold factorLeftValid0190 factorDataChunk0190
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
