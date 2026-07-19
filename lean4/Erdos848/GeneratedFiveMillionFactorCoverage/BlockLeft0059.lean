import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0059 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0059 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0059 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0059 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0059 table tree)
    (hleft : factorLeftValid0059 table tree)
    (hright : factorRightValid0059 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0059 :
    factorRootValid0059 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0059 := by
  unfold factorRootValid0059 factorDataChunk0059
  decide

theorem factorLeft0059 :
    factorLeftValid0059 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0059 := by
  unfold factorLeftValid0059 factorDataChunk0059
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
