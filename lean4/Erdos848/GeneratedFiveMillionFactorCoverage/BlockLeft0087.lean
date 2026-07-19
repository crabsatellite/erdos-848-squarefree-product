import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0087 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0087 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0087 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0087 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0087 table tree)
    (hleft : factorLeftValid0087 table tree)
    (hright : factorRightValid0087 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0087 :
    factorRootValid0087 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0087 := by
  unfold factorRootValid0087 factorDataChunk0087
  decide

theorem factorLeft0087 :
    factorLeftValid0087 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0087 := by
  unfold factorLeftValid0087 factorDataChunk0087
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
