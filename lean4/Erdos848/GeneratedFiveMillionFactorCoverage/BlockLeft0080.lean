import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0080 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0080 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0080 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0080 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0080 table tree)
    (hleft : factorLeftValid0080 table tree)
    (hright : factorRightValid0080 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0080 :
    factorRootValid0080 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0080 := by
  unfold factorRootValid0080 factorDataChunk0080
  decide

theorem factorLeft0080 :
    factorLeftValid0080 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0080 := by
  unfold factorLeftValid0080 factorDataChunk0080
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
