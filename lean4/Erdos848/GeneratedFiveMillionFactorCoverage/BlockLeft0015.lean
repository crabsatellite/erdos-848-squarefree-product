import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0015 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0015 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0015 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0015 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0015 table tree)
    (hleft : factorLeftValid0015 table tree)
    (hright : factorRightValid0015 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0015 :
    factorRootValid0015 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0015 := by
  unfold factorRootValid0015 factorDataChunk0015
  decide

theorem factorLeft0015 :
    factorLeftValid0015 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0015 := by
  unfold factorLeftValid0015 factorDataChunk0015
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
