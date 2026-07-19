import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0018 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0018 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0018 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0018 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0018 table tree)
    (hleft : factorLeftValid0018 table tree)
    (hright : factorRightValid0018 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0018 :
    factorRootValid0018 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0018 := by
  unfold factorRootValid0018 factorDataChunk0018
  decide

theorem factorLeft0018 :
    factorLeftValid0018 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0018 := by
  unfold factorLeftValid0018 factorDataChunk0018
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
