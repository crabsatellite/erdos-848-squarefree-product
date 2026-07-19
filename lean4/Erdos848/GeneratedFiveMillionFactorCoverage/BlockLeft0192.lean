import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0192 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0192 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0192 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0192 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0192 table tree)
    (hleft : factorLeftValid0192 table tree)
    (hright : factorRightValid0192 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0192 :
    factorRootValid0192 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0192 := by
  unfold factorRootValid0192 factorDataChunk0192
  decide

theorem factorLeft0192 :
    factorLeftValid0192 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0192 := by
  unfold factorLeftValid0192 factorDataChunk0192
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
