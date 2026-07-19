import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0053 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0053 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0053 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0053 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0053 table tree)
    (hleft : factorLeftValid0053 table tree)
    (hright : factorRightValid0053 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0053 :
    factorRootValid0053 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0053 := by
  unfold factorRootValid0053 factorDataChunk0053
  decide

theorem factorLeft0053 :
    factorLeftValid0053 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0053 := by
  unfold factorLeftValid0053 factorDataChunk0053
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
