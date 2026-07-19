import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0049 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0049 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0049 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0049 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0049 table tree)
    (hleft : factorLeftValid0049 table tree)
    (hright : factorRightValid0049 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0049 :
    factorRootValid0049 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0049 := by
  unfold factorRootValid0049 factorDataChunk0049
  decide

theorem factorLeft0049 :
    factorLeftValid0049 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0049 := by
  unfold factorLeftValid0049 factorDataChunk0049
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
