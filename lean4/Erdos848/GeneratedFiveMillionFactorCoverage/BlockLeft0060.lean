import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0060 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0060 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0060 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0060 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0060 table tree)
    (hleft : factorLeftValid0060 table tree)
    (hright : factorRightValid0060 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0060 :
    factorRootValid0060 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0060 := by
  unfold factorRootValid0060 factorDataChunk0060
  decide

theorem factorLeft0060 :
    factorLeftValid0060 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0060 := by
  unfold factorLeftValid0060 factorDataChunk0060
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
