import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0074 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0074 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0074 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0074 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0074 table tree)
    (hleft : factorLeftValid0074 table tree)
    (hright : factorRightValid0074 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0074 :
    factorRootValid0074 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0074 := by
  unfold factorRootValid0074 factorDataChunk0074
  decide

theorem factorLeft0074 :
    factorLeftValid0074 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0074 := by
  unfold factorLeftValid0074 factorDataChunk0074
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
