import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0067 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0067 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0067 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0067 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0067 table tree)
    (hleft : factorLeftValid0067 table tree)
    (hright : factorRightValid0067 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0067 :
    factorRootValid0067 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0067 := by
  unfold factorRootValid0067 factorDataChunk0067
  decide

theorem factorLeft0067 :
    factorLeftValid0067 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0067 := by
  unfold factorLeftValid0067 factorDataChunk0067
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
