import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0030 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0030 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0030 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0030 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0030 table tree)
    (hleft : factorLeftValid0030 table tree)
    (hright : factorRightValid0030 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0030 :
    factorRootValid0030 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0030 := by
  unfold factorRootValid0030 factorDataChunk0030
  decide

theorem factorLeft0030 :
    factorLeftValid0030 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0030 := by
  unfold factorLeftValid0030 factorDataChunk0030
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
