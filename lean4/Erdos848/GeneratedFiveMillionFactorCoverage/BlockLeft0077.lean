import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0077 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0077 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0077 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0077 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0077 table tree)
    (hleft : factorLeftValid0077 table tree)
    (hright : factorRightValid0077 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0077 :
    factorRootValid0077 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0077 := by
  unfold factorRootValid0077 factorDataChunk0077
  decide

theorem factorLeft0077 :
    factorLeftValid0077 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0077 := by
  unfold factorLeftValid0077 factorDataChunk0077
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
