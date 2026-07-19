import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0095 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0095 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0095 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0095 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0095 table tree)
    (hleft : factorLeftValid0095 table tree)
    (hright : factorRightValid0095 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0095 :
    factorRootValid0095 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0095 := by
  unfold factorRootValid0095 factorDataChunk0095
  decide

theorem factorLeft0095 :
    factorLeftValid0095 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0095 := by
  unfold factorLeftValid0095 factorDataChunk0095
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
