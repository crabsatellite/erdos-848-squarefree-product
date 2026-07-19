import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0036 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0036 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0036 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0036 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0036 table tree)
    (hleft : factorLeftValid0036 table tree)
    (hright : factorRightValid0036 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0036 :
    factorRootValid0036 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0036 := by
  unfold factorRootValid0036 factorDataChunk0036
  decide

theorem factorLeft0036 :
    factorLeftValid0036 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0036 := by
  unfold factorLeftValid0036 factorDataChunk0036
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
