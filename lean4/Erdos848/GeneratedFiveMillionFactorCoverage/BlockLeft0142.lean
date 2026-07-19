import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0142 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0142 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0142 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0142 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0142 table tree)
    (hleft : factorLeftValid0142 table tree)
    (hright : factorRightValid0142 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0142 :
    factorRootValid0142 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0142 := by
  unfold factorRootValid0142 factorDataChunk0142
  decide

theorem factorLeft0142 :
    factorLeftValid0142 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0142 := by
  unfold factorLeftValid0142 factorDataChunk0142
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
