import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0195 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0195 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0195 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0195 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0195 table tree)
    (hleft : factorLeftValid0195 table tree)
    (hright : factorRightValid0195 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0195 :
    factorRootValid0195 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0195 := by
  unfold factorRootValid0195 factorDataChunk0195
  decide

theorem factorLeft0195 :
    factorLeftValid0195 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0195 := by
  unfold factorLeftValid0195 factorDataChunk0195
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
