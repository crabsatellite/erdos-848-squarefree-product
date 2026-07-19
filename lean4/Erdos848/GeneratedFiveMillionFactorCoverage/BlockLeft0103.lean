import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0103 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0103 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0103 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0103 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0103 table tree)
    (hleft : factorLeftValid0103 table tree)
    (hright : factorRightValid0103 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0103 :
    factorRootValid0103 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0103 := by
  unfold factorRootValid0103 factorDataChunk0103
  decide

theorem factorLeft0103 :
    factorLeftValid0103 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0103 := by
  unfold factorLeftValid0103 factorDataChunk0103
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
