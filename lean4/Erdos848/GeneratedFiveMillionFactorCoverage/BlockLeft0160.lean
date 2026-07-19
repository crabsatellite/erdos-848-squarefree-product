import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0160 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0160 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0160 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0160 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0160 table tree)
    (hleft : factorLeftValid0160 table tree)
    (hright : factorRightValid0160 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0160 :
    factorRootValid0160 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0160 := by
  unfold factorRootValid0160 factorDataChunk0160
  decide

theorem factorLeft0160 :
    factorLeftValid0160 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0160 := by
  unfold factorLeftValid0160 factorDataChunk0160
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
