import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0137 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0137 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0137 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0137 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0137 table tree)
    (hleft : factorLeftValid0137 table tree)
    (hright : factorRightValid0137 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0137 :
    factorRootValid0137 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0137 := by
  unfold factorRootValid0137 factorDataChunk0137
  decide

theorem factorLeft0137 :
    factorLeftValid0137 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0137 := by
  unfold factorLeftValid0137 factorDataChunk0137
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
