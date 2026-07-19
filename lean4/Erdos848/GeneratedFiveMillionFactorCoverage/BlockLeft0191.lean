import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0191 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0191 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0191 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0191 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0191 table tree)
    (hleft : factorLeftValid0191 table tree)
    (hright : factorRightValid0191 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0191 :
    factorRootValid0191 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0191 := by
  unfold factorRootValid0191 factorDataChunk0191
  decide

theorem factorLeft0191 :
    factorLeftValid0191 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0191 := by
  unfold factorLeftValid0191 factorDataChunk0191
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
