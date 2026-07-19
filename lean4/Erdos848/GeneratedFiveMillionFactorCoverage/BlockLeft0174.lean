import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0174 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0174 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0174 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0174 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0174 table tree)
    (hleft : factorLeftValid0174 table tree)
    (hright : factorRightValid0174 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0174 :
    factorRootValid0174 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0174 := by
  unfold factorRootValid0174 factorDataChunk0174
  decide

theorem factorLeft0174 :
    factorLeftValid0174 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0174 := by
  unfold factorLeftValid0174 factorDataChunk0174
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
