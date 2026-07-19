import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0118 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0118 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0118 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0118 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0118 table tree)
    (hleft : factorLeftValid0118 table tree)
    (hright : factorRightValid0118 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0118 :
    factorRootValid0118 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0118 := by
  unfold factorRootValid0118 factorDataChunk0118
  decide

theorem factorLeft0118 :
    factorLeftValid0118 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0118 := by
  unfold factorLeftValid0118 factorDataChunk0118
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
