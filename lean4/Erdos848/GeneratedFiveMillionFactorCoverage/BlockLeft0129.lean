import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0129 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0129 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0129 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0129 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0129 table tree)
    (hleft : factorLeftValid0129 table tree)
    (hright : factorRightValid0129 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0129 :
    factorRootValid0129 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0129 := by
  unfold factorRootValid0129 factorDataChunk0129
  decide

theorem factorLeft0129 :
    factorLeftValid0129 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0129 := by
  unfold factorLeftValid0129 factorDataChunk0129
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
