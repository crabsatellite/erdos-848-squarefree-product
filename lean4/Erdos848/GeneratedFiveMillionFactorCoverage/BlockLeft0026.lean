import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0026 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0026 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0026 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0026 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0026 table tree)
    (hleft : factorLeftValid0026 table tree)
    (hright : factorRightValid0026 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0026 :
    factorRootValid0026 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0026 := by
  unfold factorRootValid0026 factorDataChunk0026
  decide

theorem factorLeft0026 :
    factorLeftValid0026 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0026 := by
  unfold factorLeftValid0026 factorDataChunk0026
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
