import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0076 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0076 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0076 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0076 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0076 table tree)
    (hleft : factorLeftValid0076 table tree)
    (hright : factorRightValid0076 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0076 :
    factorRootValid0076 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0076 := by
  unfold factorRootValid0076 factorDataChunk0076
  decide

theorem factorLeft0076 :
    factorLeftValid0076 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0076 := by
  unfold factorLeftValid0076 factorDataChunk0076
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
