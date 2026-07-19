import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0014 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0014 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0014 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0014 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0014 table tree)
    (hleft : factorLeftValid0014 table tree)
    (hright : factorRightValid0014 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0014 :
    factorRootValid0014 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0014 := by
  unfold factorRootValid0014 factorDataChunk0014
  decide

theorem factorLeft0014 :
    factorLeftValid0014 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0014 := by
  unfold factorLeftValid0014 factorDataChunk0014
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
