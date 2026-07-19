import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0071 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0071 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0071 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0071 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0071 table tree)
    (hleft : factorLeftValid0071 table tree)
    (hright : factorRightValid0071 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0071 :
    factorRootValid0071 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0071 := by
  unfold factorRootValid0071 factorDataChunk0071
  decide

theorem factorLeft0071 :
    factorLeftValid0071 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0071 := by
  unfold factorLeftValid0071 factorDataChunk0071
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
