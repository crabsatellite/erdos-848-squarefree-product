import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0027 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0027 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0027 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0027 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0027 table tree)
    (hleft : factorLeftValid0027 table tree)
    (hright : factorRightValid0027 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0027 :
    factorRootValid0027 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0027 := by
  unfold factorRootValid0027 factorDataChunk0027
  decide

theorem factorLeft0027 :
    factorLeftValid0027 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0027 := by
  unfold factorLeftValid0027 factorDataChunk0027
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
