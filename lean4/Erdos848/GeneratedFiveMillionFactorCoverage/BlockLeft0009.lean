import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0009 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0009 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0009 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0009 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0009 table tree)
    (hleft : factorLeftValid0009 table tree)
    (hright : factorRightValid0009 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0009 :
    factorRootValid0009 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0009 := by
  unfold factorRootValid0009 factorDataChunk0009
  decide

theorem factorLeft0009 :
    factorLeftValid0009 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0009 := by
  unfold factorLeftValid0009 factorDataChunk0009
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
