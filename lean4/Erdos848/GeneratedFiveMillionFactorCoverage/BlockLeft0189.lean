import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0189 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0189 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0189 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0189 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0189 table tree)
    (hleft : factorLeftValid0189 table tree)
    (hright : factorRightValid0189 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0189 :
    factorRootValid0189 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0189 := by
  unfold factorRootValid0189 factorDataChunk0189
  decide

theorem factorLeft0189 :
    factorLeftValid0189 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0189 := by
  unfold factorLeftValid0189 factorDataChunk0189
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
