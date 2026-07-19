import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0122 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0122 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0122 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0122 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0122 table tree)
    (hleft : factorLeftValid0122 table tree)
    (hright : factorRightValid0122 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0122 :
    factorRootValid0122 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0122 := by
  unfold factorRootValid0122 factorDataChunk0122
  decide

theorem factorLeft0122 :
    factorLeftValid0122 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0122 := by
  unfold factorLeftValid0122 factorDataChunk0122
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
