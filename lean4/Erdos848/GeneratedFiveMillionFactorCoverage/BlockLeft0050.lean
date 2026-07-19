import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0050 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0050 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0050 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0050 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0050 table tree)
    (hleft : factorLeftValid0050 table tree)
    (hright : factorRightValid0050 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0050 :
    factorRootValid0050 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0050 := by
  unfold factorRootValid0050 factorDataChunk0050
  decide

theorem factorLeft0050 :
    factorLeftValid0050 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0050 := by
  unfold factorLeftValid0050 factorDataChunk0050
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
