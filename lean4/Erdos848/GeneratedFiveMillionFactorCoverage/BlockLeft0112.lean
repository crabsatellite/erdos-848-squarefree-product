import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0112 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0112 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0112 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0112 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0112 table tree)
    (hleft : factorLeftValid0112 table tree)
    (hright : factorRightValid0112 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0112 :
    factorRootValid0112 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0112 := by
  unfold factorRootValid0112 factorDataChunk0112
  decide

theorem factorLeft0112 :
    factorLeftValid0112 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0112 := by
  unfold factorLeftValid0112 factorDataChunk0112
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
