import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0086 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0086 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0086 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0086 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0086 table tree)
    (hleft : factorLeftValid0086 table tree)
    (hright : factorRightValid0086 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0086 :
    factorRootValid0086 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0086 := by
  unfold factorRootValid0086 factorDataChunk0086
  decide

theorem factorLeft0086 :
    factorLeftValid0086 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0086 := by
  unfold factorLeftValid0086 factorDataChunk0086
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
