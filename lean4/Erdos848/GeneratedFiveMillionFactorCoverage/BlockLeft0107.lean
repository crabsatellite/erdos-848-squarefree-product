import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0107 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0107 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0107 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0107 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0107 table tree)
    (hleft : factorLeftValid0107 table tree)
    (hright : factorRightValid0107 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0107 :
    factorRootValid0107 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0107 := by
  unfold factorRootValid0107 factorDataChunk0107
  decide

theorem factorLeft0107 :
    factorLeftValid0107 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0107 := by
  unfold factorLeftValid0107 factorDataChunk0107
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
