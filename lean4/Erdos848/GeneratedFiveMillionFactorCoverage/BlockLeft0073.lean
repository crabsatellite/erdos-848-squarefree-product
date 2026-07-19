import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0073 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0073 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0073 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0073 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0073 table tree)
    (hleft : factorLeftValid0073 table tree)
    (hright : factorRightValid0073 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0073 :
    factorRootValid0073 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0073 := by
  unfold factorRootValid0073 factorDataChunk0073
  decide

theorem factorLeft0073 :
    factorLeftValid0073 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0073 := by
  unfold factorLeftValid0073 factorDataChunk0073
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
