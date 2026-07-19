import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0161 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0161 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0161 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0161 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0161 table tree)
    (hleft : factorLeftValid0161 table tree)
    (hright : factorRightValid0161 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0161 :
    factorRootValid0161 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0161 := by
  unfold factorRootValid0161 factorDataChunk0161
  decide

theorem factorLeft0161 :
    factorLeftValid0161 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0161 := by
  unfold factorLeftValid0161 factorDataChunk0161
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
