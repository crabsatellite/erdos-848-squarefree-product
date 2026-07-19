import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0114 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0114 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0114 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0114 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0114 table tree)
    (hleft : factorLeftValid0114 table tree)
    (hright : factorRightValid0114 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0114 :
    factorRootValid0114 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0114 := by
  unfold factorRootValid0114 factorDataChunk0114
  decide

theorem factorLeft0114 :
    factorLeftValid0114 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0114 := by
  unfold factorLeftValid0114 factorDataChunk0114
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
