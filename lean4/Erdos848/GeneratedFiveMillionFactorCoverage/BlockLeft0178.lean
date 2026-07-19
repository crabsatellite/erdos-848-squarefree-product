import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0178 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0178 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0178 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0178 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0178 table tree)
    (hleft : factorLeftValid0178 table tree)
    (hright : factorRightValid0178 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0178 :
    factorRootValid0178 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0178 := by
  unfold factorRootValid0178 factorDataChunk0178
  decide

theorem factorLeft0178 :
    factorLeftValid0178 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0178 := by
  unfold factorLeftValid0178 factorDataChunk0178
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
