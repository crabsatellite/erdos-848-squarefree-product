/-!
# Basic statement for Erdos problem #848

This file fixes the theorem surface for the route-audit project.  The live
problem is the exact extremal bound for sets `A subset {1, ..., N}` such that
`a*b + 1` is never squarefree for any `a, b in A`.
-/

namespace Erdos848

/-- Box membership in `{1, ..., N}`. -/
def InBox (N a : Nat) : Prop :=
  1 <= a /\ a <= N

/-- `p^2` divides `n`, written without imported divisibility notation. -/
def SquareDivides (p n : Nat) : Prop :=
  Exists fun k : Nat => n = p * p * k

/-- Squarefree, in the form needed by #848. -/
def Squarefree (n : Nat) : Prop :=
  forall p : Nat, 2 <= p -> Not (SquareDivides p n)

/-- The forbidden coexistence edge: `a*b + 1` is squarefree. -/
def ForbiddenSquarefreeEdge (a b : Nat) : Prop :=
  Squarefree (a * b + 1)

/-- A set is #848-admissible inside `{1, ..., N}`. -/
def Admissible848 (A : Nat -> Prop) (N : Nat) : Prop :=
  forall a b : Nat,
    InBox N a ->
    InBox N b ->
    A a ->
    A b ->
    Not (ForbiddenSquarefreeEdge a b)

/-- Predicate count on `{1, ..., n}`. -/
def countUpTo (A : Nat -> Prop) [DecidablePred A] : Nat -> Nat
  | 0 => 0
  | n + 1 => countUpTo A n + if A (n + 1) then 1 else 0

/-- Size of a predicate family inside `{1, ..., N}`. -/
def familySize (N : Nat) (A : Nat -> Prop) [DecidablePred A] : Nat :=
  countUpTo A N

/-- The residue classes predicted by Sawhney's proof and by the finite search. -/
def CandidateCarrier (r : Nat) (a : Nat) : Prop :=
  a % 25 = r % 25

/-- Decidability for the two residue-class predicates. -/
instance candidateCarrierDecidable (r : Nat) : DecidablePred (CandidateCarrier r) := by
  intro a
  unfold CandidateCarrier
  infer_instance

/-- Count of the candidate residue class up to `N`. -/
def candidateCount (r N : Nat) : Nat :=
  @familySize N (CandidateCarrier r) inferInstance

/-- Upper-bound side of the full #848 close. -/
def AtMostCandidateBound : Prop :=
  forall (N : Nat) (A : Nat -> Prop) (decA : DecidablePred A),
    Admissible848 A N ->
    @familySize N A decA <= Nat.max (candidateCount 7 N) (candidateCount 18 N)

/-- Sharpness side: the two residue classes are admissible extremal examples. -/
def CandidateSharp : Prop :=
  forall N r : Nat,
    (r = 7 \/ r = 18) ->
    Admissible848 (CandidateCarrier r) N

/-- Full theorem surface for Erdos problem #848. -/
def Erdos848FullClose : Prop :=
  AtMostCandidateBound /\ CandidateSharp

end Erdos848
