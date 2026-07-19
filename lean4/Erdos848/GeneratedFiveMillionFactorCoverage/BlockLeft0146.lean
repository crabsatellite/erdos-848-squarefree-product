import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0146 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0146 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0146 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0146 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0146 table tree)
    (hleft : factorLeftValid0146 table tree)
    (hright : factorRightValid0146 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0146 :
    factorRootValid0146 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0146 := by
  unfold factorRootValid0146 factorDataChunk0146
  decide

theorem factorLeft0146 :
    factorLeftValid0146 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0146 := by
  unfold factorLeftValid0146 factorDataChunk0146
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
