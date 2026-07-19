import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0063 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0063 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0063 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0063 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0063 table tree)
    (hleft : factorLeftValid0063 table tree)
    (hright : factorRightValid0063 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0063 :
    factorRootValid0063 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0063 := by
  unfold factorRootValid0063 factorDataChunk0063
  decide

theorem factorLeft0063 :
    factorLeftValid0063 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0063 := by
  unfold factorLeftValid0063 factorDataChunk0063
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
