import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0064 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0064 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0064 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0064 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0064 table tree)
    (hleft : factorLeftValid0064 table tree)
    (hright : factorRightValid0064 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0064 :
    factorRootValid0064 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0064 := by
  unfold factorRootValid0064 factorDataChunk0064
  decide

theorem factorLeft0064 :
    factorLeftValid0064 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0064 := by
  unfold factorLeftValid0064 factorDataChunk0064
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
