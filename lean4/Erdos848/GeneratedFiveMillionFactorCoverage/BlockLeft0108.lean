import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0108 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0108 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0108 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0108 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0108 table tree)
    (hleft : factorLeftValid0108 table tree)
    (hright : factorRightValid0108 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0108 :
    factorRootValid0108 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0108 := by
  unfold factorRootValid0108 factorDataChunk0108
  decide

theorem factorLeft0108 :
    factorLeftValid0108 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0108 := by
  unfold factorLeftValid0108 factorDataChunk0108
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
