import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0085 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0085 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0085 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0085 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0085 table tree)
    (hleft : factorLeftValid0085 table tree)
    (hright : factorRightValid0085 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0085 :
    factorRootValid0085 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0085 := by
  unfold factorRootValid0085 factorDataChunk0085
  decide

theorem factorLeft0085 :
    factorLeftValid0085 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0085 := by
  unfold factorLeftValid0085 factorDataChunk0085
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
