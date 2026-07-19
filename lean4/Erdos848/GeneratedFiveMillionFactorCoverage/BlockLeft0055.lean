import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0055 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0055 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0055 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0055 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0055 table tree)
    (hleft : factorLeftValid0055 table tree)
    (hright : factorRightValid0055 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0055 :
    factorRootValid0055 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0055 := by
  unfold factorRootValid0055 factorDataChunk0055
  decide

theorem factorLeft0055 :
    factorLeftValid0055 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0055 := by
  unfold factorLeftValid0055 factorDataChunk0055
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
