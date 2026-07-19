import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0169 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0169 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0169 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0169 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0169 table tree)
    (hleft : factorLeftValid0169 table tree)
    (hright : factorRightValid0169 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0169 :
    factorRootValid0169 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0169 := by
  unfold factorRootValid0169 factorDataChunk0169
  decide

theorem factorLeft0169 :
    factorLeftValid0169 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0169 := by
  unfold factorLeftValid0169 factorDataChunk0169
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
