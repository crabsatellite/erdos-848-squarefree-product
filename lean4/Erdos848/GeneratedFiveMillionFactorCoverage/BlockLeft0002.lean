import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0002 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0002 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0002 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0002 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0002 table tree)
    (hleft : factorLeftValid0002 table tree)
    (hright : factorRightValid0002 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0002 :
    factorRootValid0002 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0002 := by
  unfold factorRootValid0002 factorDataChunk0002
  decide

theorem factorLeft0002 :
    factorLeftValid0002 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0002 := by
  unfold factorLeftValid0002 factorDataChunk0002
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
