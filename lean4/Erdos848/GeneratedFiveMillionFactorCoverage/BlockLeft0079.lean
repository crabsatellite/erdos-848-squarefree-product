import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0079 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0079 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0079 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0079 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0079 table tree)
    (hleft : factorLeftValid0079 table tree)
    (hright : factorRightValid0079 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0079 :
    factorRootValid0079 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0079 := by
  unfold factorRootValid0079 factorDataChunk0079
  decide

theorem factorLeft0079 :
    factorLeftValid0079 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0079 := by
  unfold factorLeftValid0079 factorDataChunk0079
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
