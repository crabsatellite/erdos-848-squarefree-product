import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0020 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0020 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0020 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0020 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0020 table tree)
    (hleft : factorLeftValid0020 table tree)
    (hright : factorRightValid0020 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0020 :
    factorRootValid0020 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0020 := by
  unfold factorRootValid0020 factorDataChunk0020
  decide

theorem factorLeft0020 :
    factorLeftValid0020 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0020 := by
  unfold factorLeftValid0020 factorDataChunk0020
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
