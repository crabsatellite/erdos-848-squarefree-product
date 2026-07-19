import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0121 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0121 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0121 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0121 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0121 table tree)
    (hleft : factorLeftValid0121 table tree)
    (hright : factorRightValid0121 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0121 :
    factorRootValid0121 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0121 := by
  unfold factorRootValid0121 factorDataChunk0121
  decide

theorem factorLeft0121 :
    factorLeftValid0121 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0121 := by
  unfold factorLeftValid0121 factorDataChunk0121
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
