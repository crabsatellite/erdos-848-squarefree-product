import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0093 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0093 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0093 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0093 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0093 table tree)
    (hleft : factorLeftValid0093 table tree)
    (hright : factorRightValid0093 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0093 :
    factorRootValid0093 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0093 := by
  unfold factorRootValid0093 factorDataChunk0093
  decide

theorem factorLeft0093 :
    factorLeftValid0093 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0093 := by
  unfold factorLeftValid0093 factorDataChunk0093
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
