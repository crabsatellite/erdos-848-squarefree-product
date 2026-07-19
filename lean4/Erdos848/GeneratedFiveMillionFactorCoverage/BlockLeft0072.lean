import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0072 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0072 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0072 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0072 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0072 table tree)
    (hleft : factorLeftValid0072 table tree)
    (hright : factorRightValid0072 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0072 :
    factorRootValid0072 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0072 := by
  unfold factorRootValid0072 factorDataChunk0072
  decide

theorem factorLeft0072 :
    factorLeftValid0072 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0072 := by
  unfold factorLeftValid0072 factorDataChunk0072
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
