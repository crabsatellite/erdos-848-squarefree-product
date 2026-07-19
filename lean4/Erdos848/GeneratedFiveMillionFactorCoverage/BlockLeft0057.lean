import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0057 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0057 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0057 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0057 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0057 table tree)
    (hleft : factorLeftValid0057 table tree)
    (hright : factorRightValid0057 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0057 :
    factorRootValid0057 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0057 := by
  unfold factorRootValid0057 factorDataChunk0057
  decide

theorem factorLeft0057 :
    factorLeftValid0057 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0057 := by
  unfold factorLeftValid0057 factorDataChunk0057
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
