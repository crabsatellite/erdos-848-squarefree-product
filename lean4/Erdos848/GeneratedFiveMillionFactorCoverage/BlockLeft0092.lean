import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0092 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0092 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0092 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0092 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0092 table tree)
    (hleft : factorLeftValid0092 table tree)
    (hright : factorRightValid0092 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0092 :
    factorRootValid0092 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0092 := by
  unfold factorRootValid0092 factorDataChunk0092
  decide

theorem factorLeft0092 :
    factorLeftValid0092 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0092 := by
  unfold factorLeftValid0092 factorDataChunk0092
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
