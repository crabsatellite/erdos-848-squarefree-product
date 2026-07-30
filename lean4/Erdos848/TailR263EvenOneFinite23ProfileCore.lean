import Erdos848.TailR263EvenOneFinite23RootCover

namespace Erdos848

/-! Structural profile definitions shared by the ordinary and sharp routes. -/

def e1FiniteSevenConstraint :
    E1FiniteCellType → E1FinitePatternConstraint
  | .good => .noncommon
  | .seven => .common
  | .eleven => .noncommon
  | .both => .common

def e1FiniteElevenConstraint :
    E1FiniteCellType → E1FinitePatternConstraint
  | .good => .noncommon
  | .seven => .noncommon
  | .eleven => .common
  | .both => .common

def e1FiniteConstraintForProfile
    (threeConstraint : E1FinitePatternConstraint)
    (cellType : E1FiniteCellType) :
    E1FinitePrimeIndex → E1FinitePatternConstraint :=
  fun index =>
    if index = 0 then threeConstraint
    else if index = 1 then e1FiniteSevenConstraint cellType
    else if index = 2 then e1FiniteElevenConstraint cellType
    else .free

end Erdos848
