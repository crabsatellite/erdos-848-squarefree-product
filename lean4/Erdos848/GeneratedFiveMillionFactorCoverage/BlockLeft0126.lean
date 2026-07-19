import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0126 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0126 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0126 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0126 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0126 table tree)
    (hleft : factorLeftValid0126 table tree)
    (hright : factorRightValid0126 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0126 :
    factorRootValid0126 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0126 := by
  unfold factorRootValid0126 factorDataChunk0126
  decide

theorem factorLeft0126 :
    factorLeftValid0126 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0126 := by
  unfold factorLeftValid0126 factorDataChunk0126
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
