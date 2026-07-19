import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0181 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0181 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0181 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0181 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0181 table tree)
    (hleft : factorLeftValid0181 table tree)
    (hright : factorRightValid0181 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0181 :
    factorRootValid0181 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0181 := by
  unfold factorRootValid0181 factorDataChunk0181
  decide

theorem factorLeft0181 :
    factorLeftValid0181 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0181 := by
  unfold factorLeftValid0181 factorDataChunk0181
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
