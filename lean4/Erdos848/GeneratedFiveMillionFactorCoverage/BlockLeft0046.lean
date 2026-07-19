import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0046 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0046 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0046 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0046 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0046 table tree)
    (hleft : factorLeftValid0046 table tree)
    (hright : factorRightValid0046 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0046 :
    factorRootValid0046 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0046 := by
  unfold factorRootValid0046 factorDataChunk0046
  decide

theorem factorLeft0046 :
    factorLeftValid0046 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0046 := by
  unfold factorLeftValid0046 factorDataChunk0046
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
