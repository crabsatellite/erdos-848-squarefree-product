import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0135 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0135 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0135 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0135 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0135 table tree)
    (hleft : factorLeftValid0135 table tree)
    (hright : factorRightValid0135 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0135 :
    factorRootValid0135 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0135 := by
  unfold factorRootValid0135 factorDataChunk0135
  decide

theorem factorLeft0135 :
    factorLeftValid0135 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0135 := by
  unfold factorLeftValid0135 factorDataChunk0135
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
