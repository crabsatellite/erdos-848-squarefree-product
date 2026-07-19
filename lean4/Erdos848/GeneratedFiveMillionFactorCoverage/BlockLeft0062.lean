import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0062 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0062 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0062 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0062 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0062 table tree)
    (hleft : factorLeftValid0062 table tree)
    (hright : factorRightValid0062 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0062 :
    factorRootValid0062 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0062 := by
  unfold factorRootValid0062 factorDataChunk0062
  decide

theorem factorLeft0062 :
    factorLeftValid0062 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0062 := by
  unfold factorLeftValid0062 factorDataChunk0062
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
