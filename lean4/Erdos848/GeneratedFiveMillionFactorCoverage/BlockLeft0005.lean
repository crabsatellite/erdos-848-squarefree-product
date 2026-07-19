import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0005 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0005 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0005 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0005 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0005 table tree)
    (hleft : factorLeftValid0005 table tree)
    (hright : factorRightValid0005 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0005 :
    factorRootValid0005 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0005 := by
  unfold factorRootValid0005 factorDataChunk0005
  decide

theorem factorLeft0005 :
    factorLeftValid0005 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0005 := by
  unfold factorLeftValid0005 factorDataChunk0005
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
