import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0156 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0156 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0156 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0156 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0156 table tree)
    (hleft : factorLeftValid0156 table tree)
    (hright : factorRightValid0156 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0156 :
    factorRootValid0156 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0156 := by
  unfold factorRootValid0156 factorDataChunk0156
  decide

theorem factorLeft0156 :
    factorLeftValid0156 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0156 := by
  unfold factorLeftValid0156 factorDataChunk0156
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
