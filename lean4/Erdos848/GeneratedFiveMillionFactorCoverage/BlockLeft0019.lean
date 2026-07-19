import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0019 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0019 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0019 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0019 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0019 table tree)
    (hleft : factorLeftValid0019 table tree)
    (hright : factorRightValid0019 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0019 :
    factorRootValid0019 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0019 := by
  unfold factorRootValid0019 factorDataChunk0019
  decide

theorem factorLeft0019 :
    factorLeftValid0019 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0019 := by
  unfold factorLeftValid0019 factorDataChunk0019
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
