import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0034 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0034 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0034 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0034 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0034 table tree)
    (hleft : factorLeftValid0034 table tree)
    (hright : factorRightValid0034 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0034 :
    factorRootValid0034 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0034 := by
  unfold factorRootValid0034 factorDataChunk0034
  decide

theorem factorLeft0034 :
    factorLeftValid0034 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0034 := by
  unfold factorLeftValid0034 factorDataChunk0034
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
