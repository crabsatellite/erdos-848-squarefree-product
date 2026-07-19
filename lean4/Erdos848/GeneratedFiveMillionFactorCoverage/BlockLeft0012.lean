import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0012 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0012 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0012 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0012 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0012 table tree)
    (hleft : factorLeftValid0012 table tree)
    (hright : factorRightValid0012 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0012 :
    factorRootValid0012 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0012 := by
  unfold factorRootValid0012 factorDataChunk0012
  decide

theorem factorLeft0012 :
    factorLeftValid0012 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0012 := by
  unfold factorLeftValid0012 factorDataChunk0012
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
