import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0003 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0003 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0003 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0003 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0003 table tree)
    (hleft : factorLeftValid0003 table tree)
    (hright : factorRightValid0003 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0003 :
    factorRootValid0003 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0003 := by
  unfold factorRootValid0003 factorDataChunk0003
  decide

theorem factorLeft0003 :
    factorLeftValid0003 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0003 := by
  unfold factorLeftValid0003 factorDataChunk0003
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
