import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0133 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0133 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0133 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0133 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0133 table tree)
    (hleft : factorLeftValid0133 table tree)
    (hright : factorRightValid0133 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0133 :
    factorRootValid0133 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0133 := by
  unfold factorRootValid0133 factorDataChunk0133
  decide

theorem factorLeft0133 :
    factorLeftValid0133 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0133 := by
  unfold factorLeftValid0133 factorDataChunk0133
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
