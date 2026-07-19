import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0125 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0125 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0125 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0125 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0125 table tree)
    (hleft : factorLeftValid0125 table tree)
    (hright : factorRightValid0125 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0125 :
    factorRootValid0125 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0125 := by
  unfold factorRootValid0125 factorDataChunk0125
  decide

theorem factorLeft0125 :
    factorLeftValid0125 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0125 := by
  unfold factorLeftValid0125 factorDataChunk0125
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
