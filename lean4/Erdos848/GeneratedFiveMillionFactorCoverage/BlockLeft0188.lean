import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0188 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0188 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0188 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0188 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0188 table tree)
    (hleft : factorLeftValid0188 table tree)
    (hright : factorRightValid0188 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0188 :
    factorRootValid0188 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0188 := by
  unfold factorRootValid0188 factorDataChunk0188
  decide

theorem factorLeft0188 :
    factorLeftValid0188 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0188 := by
  unfold factorLeftValid0188 factorDataChunk0188
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
