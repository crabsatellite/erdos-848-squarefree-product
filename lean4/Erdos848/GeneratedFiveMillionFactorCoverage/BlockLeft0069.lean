import Erdos848.GeneratedFiveMillionFactorCoverage.Data

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def factorRootValid0069 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node data _ _ => data.Valid table

def factorLeftValid0069 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ left _ => left.Valid table

def factorRightValid0069 (table : Erdos848.PrattTableData) :
    Erdos848.SquarefreeFactorTree -> Prop
  | .empty => True
  | .node _ _ right => right.Valid table

theorem factorValidOfParts0069 {table : Erdos848.PrattTableData}
    {tree : Erdos848.SquarefreeFactorTree}
    (hroot : factorRootValid0069 table tree)
    (hleft : factorLeftValid0069 table tree)
    (hright : factorRightValid0069 table tree) : tree.Valid table := by
  cases tree with
  | empty => trivial
  | node data left right => exact ⟨hroot, hleft, hright⟩

theorem factorRoot0069 :
    factorRootValid0069 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0069 := by
  unfold factorRootValid0069 factorDataChunk0069
  decide

theorem factorLeft0069 :
    factorLeftValid0069 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0069 := by
  unfold factorLeftValid0069 factorDataChunk0069
  decide

end Erdos848.GeneratedFiveMillionFactorCoverage
