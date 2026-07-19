import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0082 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0082 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0082 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0082 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0082 table tree)
    (hleft : factorLeftValid0082 table tree)
    (hright : factorRightValid0082 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0082 :
    factorRootValid0082 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0082 := by
  unfold factorRootValid0082 factorDataChunk0082
  decide

theorem factorLeft0082 :
    factorLeftValid0082 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0082 := by
  unfold factorLeftValid0082 factorDataChunk0082
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
