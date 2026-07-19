import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0017 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0017 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0017 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0017 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0017 table tree)
    (hleft : factorLeftValid0017 table tree)
    (hright : factorRightValid0017 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0017 :
    factorRootValid0017 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0017 := by
  unfold factorRootValid0017 factorDataChunk0017
  decide

theorem factorLeft0017 :
    factorLeftValid0017 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0017 := by
  unfold factorLeftValid0017 factorDataChunk0017
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
