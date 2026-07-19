import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0099 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0099 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0099 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0099 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0099 table tree)
    (hleft : factorLeftValid0099 table tree)
    (hright : factorRightValid0099 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0099 :
    factorRootValid0099 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0099 := by
  unfold factorRootValid0099 factorDataChunk0099
  decide

theorem factorLeft0099 :
    factorLeftValid0099 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0099 := by
  unfold factorLeftValid0099 factorDataChunk0099
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
