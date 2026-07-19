import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0011 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0011 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0011 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0011 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0011 table tree)
    (hleft : factorLeftValid0011 table tree)
    (hright : factorRightValid0011 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0011 :
    factorRootValid0011 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0011 := by
  unfold factorRootValid0011 factorDataChunk0011
  decide

theorem factorLeft0011 :
    factorLeftValid0011 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0011 := by
  unfold factorLeftValid0011 factorDataChunk0011
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
