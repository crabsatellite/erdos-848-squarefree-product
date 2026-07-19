import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0032 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0032 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0032 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0032 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0032 table tree)
    (hleft : factorLeftValid0032 table tree)
    (hright : factorRightValid0032 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0032 :
    factorRootValid0032 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0032 := by
  unfold factorRootValid0032 factorDataChunk0032
  decide

theorem factorLeft0032 :
    factorLeftValid0032 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0032 := by
  unfold factorLeftValid0032 factorDataChunk0032
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
