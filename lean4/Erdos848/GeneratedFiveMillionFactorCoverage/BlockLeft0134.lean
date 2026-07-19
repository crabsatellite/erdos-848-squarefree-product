import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0134 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0134 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0134 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0134 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0134 table tree)
    (hleft : factorLeftValid0134 table tree)
    (hright : factorRightValid0134 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0134 :
    factorRootValid0134 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0134 := by
  unfold factorRootValid0134 factorDataChunk0134
  decide

theorem factorLeft0134 :
    factorLeftValid0134 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0134 := by
  unfold factorLeftValid0134 factorDataChunk0134
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
