import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0039 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0039 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0039 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0039 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0039 table tree)
    (hleft : factorLeftValid0039 table tree)
    (hright : factorRightValid0039 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0039 :
    factorRootValid0039 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0039 := by
  unfold factorRootValid0039 factorDataChunk0039
  decide

theorem factorLeft0039 :
    factorLeftValid0039 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0039 := by
  unfold factorLeftValid0039 factorDataChunk0039
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
