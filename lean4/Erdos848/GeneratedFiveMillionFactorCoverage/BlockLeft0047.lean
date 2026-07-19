import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0047 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0047 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0047 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0047 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0047 table tree)
    (hleft : factorLeftValid0047 table tree)
    (hright : factorRightValid0047 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0047 :
    factorRootValid0047 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0047 := by
  unfold factorRootValid0047 factorDataChunk0047
  decide

theorem factorLeft0047 :
    factorLeftValid0047 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0047 := by
  unfold factorLeftValid0047 factorDataChunk0047
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
