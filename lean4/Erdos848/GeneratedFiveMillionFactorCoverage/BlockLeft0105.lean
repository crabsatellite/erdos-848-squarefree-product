import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0105 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0105 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0105 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0105 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0105 table tree)
    (hleft : factorLeftValid0105 table tree)
    (hright : factorRightValid0105 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0105 :
    factorRootValid0105 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0105 := by
  unfold factorRootValid0105 factorDataChunk0105
  decide

theorem factorLeft0105 :
    factorLeftValid0105 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0105 := by
  unfold factorLeftValid0105 factorDataChunk0105
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
