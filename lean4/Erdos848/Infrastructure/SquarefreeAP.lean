import Init.Data.List.Count
import Erdos848.Infrastructure.ResidueCertificates

/-!
# Squarefree arithmetic-progression / Hall-neighborhood layer

This is the analytic side of the Hall route.  It will replace bounded Hall
checks by explicit lower bounds for squarefree values of `b*(25*t+r)+1`.
The degree statement is intentionally restricted to vertices outside the
candidate class: same-class pairs are already killed by the local `5^2`
obstruction proved in `ResidueCertificates`.
-/

namespace Erdos848

/-- `b` is outside the candidate residue class currently used as the base. -/
def CandidateOutside (r b : Nat) : Prop :=
  Not (CandidateCarrier r b)

/-- The opposite candidate class for the two known extremal residues. -/
def OppositeCandidateCarrier (r b : Nat) : Prop :=
  (r = 7 /\ CandidateCarrier 18 b) \/
    (r = 18 /\ CandidateCarrier 7 b)

/-- The live `7 mod 25` route's opposite carrier is exactly the `18 mod 25` class. -/
theorem oppositeCandidateCarrier_seven_of_candidate_eighteen
    {b : Nat} (hb : CandidateCarrier 18 b) :
    OppositeCandidateCarrier 7 b :=
  Or.inl ⟨rfl, hb⟩

/-- Extract the concrete opposite residue from the live `7 mod 25` opposite carrier. -/
theorem candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven
    {b : Nat} (hb : OppositeCandidateCarrier 7 b) :
    CandidateCarrier 18 b := by
  rcases hb with hOpp | hOpp
  · exact hOpp.right
  · omega

/-- On the live `7 mod 25` route, ruling out `18 mod 25` rules out the opposite carrier. -/
theorem not_oppositeCandidateCarrier_seven_of_not_candidate_eighteen
    {b : Nat} (hb : Not (CandidateCarrier 18 b)) :
    Not (OppositeCandidateCarrier 7 b) := by
  intro hOpp
  exact hb (candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hOpp)

/-- Strict middle-region vertices: outside the base and outside the opposite candidate class. -/
def StrictMiddleOutside (r b : Nat) : Prop :=
  CandidateOutside r b /\ Not (OppositeCandidateCarrier r b)

/-- The part of `A` inside `[1,N]` but outside the chosen candidate class. -/
def BoundedOutsidePart (N r : Nat) (A : Nat -> Prop) (b : Nat) : Prop :=
  InBox N b /\ A b /\ CandidateOutside r b

/-- The part of `A` in the strict middle region. -/
def BoundedStrictMiddlePart (N r : Nat) (A : Nat -> Prop) (b : Nat) : Prop :=
  InBox N b /\ A b /\ StrictMiddleOutside r b

/-- A set of vertices is boxed and outside the chosen candidate class. -/
def BoundedOutsideSet (N r : Nat) (B : Nat -> Prop) : Prop :=
  forall b : Nat, B b -> InBox N b /\ CandidateOutside r b

/-- A set has no squarefree coexistence edges. -/
def NonSquarefreeClique (B : Nat -> Prop) : Prop :=
  forall a b : Nat, B a -> B b -> Not (ForbiddenSquarefreeEdge a b)

/-- Candidate-class vertices hit by squarefree edges from an outside set. -/
def SquarefreeNeighborInCandidate
    (N r : Nat) (B : Nat -> Prop) (a : Nat) : Prop :=
  InBox N a /\
    CandidateCarrier r a /\
    Exists fun b : Nat => B b /\ ForbiddenSquarefreeEdge a b

/-- Count-level Hall expansion for one bounded outside set. -/
def APHallExpansionForOutsideSet
    (N r : Nat) (B : Nat -> Prop)
    (decB : DecidablePred B)
    (decNbr : DecidablePred (SquarefreeNeighborInCandidate N r B)) : Prop :=
  @familySize N B decB <=
    @familySize N (SquarefreeNeighborInCandidate N r B) decNbr

/-- Count-level squarefree AP/Hall expansion for one fixed candidate residue. -/
def SquarefreeAPHallCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decB : DecidablePred B)
    (decNbr : DecidablePred (SquarefreeNeighborInCandidate N r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    APHallExpansionForOutsideSet N r B decB decNbr

/-- Diagnostic Hall target after removing the opposite candidate class. -/
def StrictMiddleAPHallCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decB : DecidablePred B)
    (decNbr : DecidablePred (SquarefreeNeighborInCandidate N r B)),
    BoundedOutsideSet N r B ->
    (forall b : Nat, B b -> StrictMiddleOutside r b) ->
    NonSquarefreeClique B ->
    APHallExpansionForOutsideSet N r B decB decNbr

/-- The opposite-candidate part of an outside set. -/
def OppositeOutsidePart (r : Nat) (B : Nat -> Prop) (b : Nat) : Prop :=
  B b /\ OppositeCandidateCarrier r b

/-- The strict middle part of an outside set. -/
def StrictMiddlePart (r : Nat) (B : Nat -> Prop) (b : Nat) : Prop :=
  B b /\ StrictMiddleOutside r b

/-- Disjoint candidate-neighbor allocations for the opposite block and strict middle. -/
def PartitionedNeighborAllocation
    (N r : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B)) : Prop :=
  Exists fun OppAlloc : Nat -> Prop =>
  Exists fun MidAlloc : Nat -> Prop =>
  Exists fun decOppAlloc : DecidablePred OppAlloc =>
  Exists fun decMidAlloc : DecidablePred MidAlloc =>
    @familySize N (OppositeOutsidePart r B) decOpp <=
      @familySize N OppAlloc decOppAlloc /\
    @familySize N (StrictMiddlePart r B) decMid <=
      @familySize N MidAlloc decMidAlloc /\
    (forall a : Nat, OppAlloc a ->
      SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a) /\
    (forall a : Nat, MidAlloc a ->
      SquarefreeNeighborInCandidate N r (StrictMiddlePart r B) a) /\
    (forall a : Nat, OppAlloc a -> MidAlloc a -> False)

/-- Candidate neighbors hit by either the opposite block or the strict middle block. -/
def PartitionedNeighborUnion
    (N r : Nat) (B : Nat -> Prop) (a : Nat) : Prop :=
  SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a \/
    SquarefreeNeighborInCandidate N r (StrictMiddlePart r B) a

/-- Direct union-capacity inequality for the partitioned neighbor set. -/
def PartitionedNeighborCapacity
    (N r : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decUnion : DecidablePred (PartitionedNeighborUnion N r B)) : Prop :=
  @familySize N (OppositeOutsidePart r B) decOpp +
      @familySize N (StrictMiddlePart r B) decMid <=
    @familySize N (PartitionedNeighborUnion N r B) decUnion

/-- Strict-middle candidate neighbors not already hit by the opposite block. -/
def IncrementalStrictMiddleNeighbor
    (N r : Nat) (B : Nat -> Prop) (a : Nat) : Prop :=
  SquarefreeNeighborInCandidate N r (StrictMiddlePart r B) a /\
    Not (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a)

/-- Incremental capacity: opposite surplus may pay for strict-middle overlap. -/
def PartitionedIncrementalCapacity
    (N r : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)))
    (decNewMid : DecidablePred (IncrementalStrictMiddleNeighbor N r B)) : Prop :=
  @familySize N (OppositeOutsidePart r B) decOpp +
      @familySize N (StrictMiddlePart r B) decMid <=
    @familySize N
        (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)) decOppNbr +
      @familySize N (IncrementalStrictMiddleNeighbor N r B) decNewMid

/-- Opposite-only neighbor expansion, separated from the strict middle. -/
def OppositeNeighborExpansion
    (N r : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))) : Prop :=
  @familySize N (OppositeOutsidePart r B) decOpp <=
    @familySize N
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)) decOppNbr

/-- Certificate image for the opposite block: enough allocated candidate neighbors. -/
def OppositeNeighborAllocation
    (N r : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B)) : Prop :=
  Exists fun OppAlloc : Nat -> Prop =>
  Exists fun decOppAlloc : DecidablePred OppAlloc =>
    @familySize N (OppositeOutsidePart r B) decOpp <=
      @familySize N OppAlloc decOppAlloc /\
    (forall a : Nat, OppAlloc a ->
      SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a)

/-- Opposite candidate neighbors allocated close to the opposite block. -/
def OppositeNearbyNeighbor
    (N r K : Nat) (B : Nat -> Prop) (a : Nat) : Prop :=
  SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a /\
    Exists fun b : Nat =>
      OppositeOutsidePart r B b /\ a <= b + K /\ b <= a + K

/-- Banded certificate image for the opposite block. -/
def OppositeNearbyNeighborAllocation
    (N r K : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B)) : Prop :=
  Exists fun OppAlloc : Nat -> Prop =>
  Exists fun decOppAlloc : DecidablePred OppAlloc =>
    @familySize N (OppositeOutsidePart r B) decOpp <=
      @familySize N OppAlloc decOppAlloc /\
    (forall a : Nat, OppAlloc a ->
      OppositeNearbyNeighbor N r K B a)

/-- Image of an opposite-block matching function. -/
def OppositeMatchingImage
    (r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) (a : Nat) : Prop :=
  Exists fun b : Nat => OppositeOutsidePart r B b /\ mate b = a

/-- Banded opposite-block certificate as the image of an injective matching function. -/
def OppositeNearbyMatchingImageAllocation
    (N r K : Nat) (B : Nat -> Prop)
    (_decOpp : DecidablePred (OppositeOutsidePart r B)) : Prop :=
  Exists fun mate : Nat -> Nat =>
    (forall b : Nat, OppositeOutsidePart r B b ->
      OppositeNearbyNeighbor N r K B (mate b)) /\
    (forall b1 b2 : Nat,
      OppositeOutsidePart r B b1 ->
      OppositeOutsidePart r B b2 ->
      mate b1 = mate b2 ->
      b1 = b2)

/-- Direct global nearby squarefree edge from an opposite-class vertex to the base class. -/
def GlobalOppositeNearbyNeighbor (N r K b a : Nat) : Prop :=
  InBox N b /\
    OppositeCandidateCarrier r b /\
    InBox N a /\
    CandidateCarrier r a /\
    ForbiddenSquarefreeEdge a b /\
    a <= b + K /\
    b <= a + K

/--
Global banded matching for the whole opposite candidate block.

This is stronger than the `B`-relative opposite matching-image cut: after such
a matching is known for every boxed opposite-class vertex, any compatible
outside subset inherits the same matching by restriction.
-/
def GlobalOppositeNearbyMatchingImageAllocation (N r K : Nat) : Prop :=
  Exists fun mate : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeNearbyNeighbor N r K b (mate b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 ->
      OppositeCandidateCarrier r b1 ->
      InBox N b2 ->
      OppositeCandidateCarrier r b2 ->
      mate b1 = mate b2 ->
      b1 = b2)

/-- Global opposite-block matching certificate, independent of the outside clique `B`. -/
def GlobalOppositeNearbyMatchingAPCertificateForResidue (r K : Nat) : Prop :=
  forall N : Nat, GlobalOppositeNearbyMatchingImageAllocation N r K

/-- Seven possible value offsets for an index-bandwidth-three opposite matching. -/
def OppositeFiniteOffsetValue (b code : Nat) : Nat :=
  match code with
  | 0 => b - 86
  | 1 => b - 61
  | 2 => b - 36
  | 3 => b - 11
  | 4 => b + 14
  | 5 => b + 39
  | _ => b + 64

/-- Typed seven-offset code for the index-bandwidth-three opposite matching. -/
inductive OppositeFiniteOffsetCode : Type
  | neg86
  | neg61
  | neg36
  | neg11
  | pos14
  | pos39
  | pos64

/-- Convert a typed finite-offset code to the legacy Nat code. -/
def OppositeFiniteOffsetCode.toNat : OppositeFiniteOffsetCode -> Nat
  | OppositeFiniteOffsetCode.neg86 => 0
  | OppositeFiniteOffsetCode.neg61 => 1
  | OppositeFiniteOffsetCode.neg36 => 2
  | OppositeFiniteOffsetCode.neg11 => 3
  | OppositeFiniteOffsetCode.pos14 => 4
  | OppositeFiniteOffsetCode.pos39 => 5
  | OppositeFiniteOffsetCode.pos64 => 6

/-- A typed finite-offset code is automatically one of the seven permitted codes. -/
theorem oppositeFiniteOffsetCode_toNat_le_six
    (code : OppositeFiniteOffsetCode) :
    OppositeFiniteOffsetCode.toNat code <= 6 := by
  cases code <;> simp [OppositeFiniteOffsetCode.toNat]

/-- Finite-offset value computed from a typed seven-offset code. -/
def OppositeFiniteOffsetCodeValue
    (b : Nat) (code : OppositeFiniteOffsetCode) : Nat :=
  OppositeFiniteOffsetValue b (OppositeFiniteOffsetCode.toNat code)

/-- Index of a value inside its residue class modulo `25`. -/
def CandidateClassIndex (a : Nat) : Nat :=
  a / 25

/-- Residue-class index of a typed finite-offset target value. -/
def OppositeFiniteOffsetCodeTargetIndex
    (b : Nat) (code : OppositeFiniteOffsetCode) : Nat :=
  CandidateClassIndex (OppositeFiniteOffsetCodeValue b code)

/-- Target index expressed as the source residue-class index plus the code shift. -/
def OppositeFiniteOffsetCodeShiftTargetIndex
    (b : Nat) : OppositeFiniteOffsetCode -> Nat
  | OppositeFiniteOffsetCode.neg86 => CandidateClassIndex b - 3
  | OppositeFiniteOffsetCode.neg61 => CandidateClassIndex b - 2
  | OppositeFiniteOffsetCode.neg36 => CandidateClassIndex b - 1
  | OppositeFiniteOffsetCode.neg11 => CandidateClassIndex b
  | OppositeFiniteOffsetCode.pos14 => CandidateClassIndex b + 1
  | OppositeFiniteOffsetCode.pos39 => CandidateClassIndex b + 2
  | OppositeFiniteOffsetCode.pos64 => CandidateClassIndex b + 3

/-- The `18 mod 25` source represented by its residue-class index. -/
def EighteenSourceFromIndex (k : Nat) : Nat :=
  25 * k + 18

/-- Shift target index expressed directly from the source-class index. -/
def OppositeFiniteOffsetSourceIndexShiftTarget
    (k : Nat) : OppositeFiniteOffsetCode -> Nat
  | OppositeFiniteOffsetCode.neg86 => k - 3
  | OppositeFiniteOffsetCode.neg61 => k - 2
  | OppositeFiniteOffsetCode.neg36 => k - 1
  | OppositeFiniteOffsetCode.neg11 => k
  | OppositeFiniteOffsetCode.pos14 => k + 1
  | OppositeFiniteOffsetCode.pos39 => k + 2
  | OppositeFiniteOffsetCode.pos64 => k + 3

/-- Target value expressed from the source-index target. -/
def OppositeFiniteOffsetSourceIndexTargetValue
    (k : Nat) (code : OppositeFiniteOffsetCode) : Nat :=
  25 * OppositeFiniteOffsetSourceIndexShiftTarget k code + 7

/-- The source index is large enough that the typed negative offset does not underflow. -/
def OppositeFiniteOffsetSourceIndexCodeNonUnderflow
    (k : Nat) : OppositeFiniteOffsetCode -> Prop
  | OppositeFiniteOffsetCode.neg86 => 3 <= k
  | OppositeFiniteOffsetCode.neg61 => 2 <= k
  | OppositeFiniteOffsetCode.neg36 => 1 <= k
  | OppositeFiniteOffsetCode.neg11 => True
  | OppositeFiniteOffsetCode.pos14 => True
  | OppositeFiniteOffsetCode.pos39 => True
  | OppositeFiniteOffsetCode.pos64 => True

/--
Non-underflow is enough to identify the original finite-offset target value
with the source-index target value.
-/
theorem oppositeFiniteOffsetCodeValue_eighteenSource_eq_sourceIndexTargetValue_of_nonUnderflow
    {k : Nat} {code : OppositeFiniteOffsetCode}
    (h : OppositeFiniteOffsetSourceIndexCodeNonUnderflow k code) :
    OppositeFiniteOffsetCodeValue (EighteenSourceFromIndex k) code =
      OppositeFiniteOffsetSourceIndexTargetValue k code := by
  cases code
  · simp [OppositeFiniteOffsetSourceIndexCodeNonUnderflow] at h
    change 25 * k + 18 - 86 = 25 * (k - 3) + 7
    omega
  · simp [OppositeFiniteOffsetSourceIndexCodeNonUnderflow] at h
    change 25 * k + 18 - 61 = 25 * (k - 2) + 7
    omega
  · simp [OppositeFiniteOffsetSourceIndexCodeNonUnderflow] at h
    change 25 * k + 18 - 36 = 25 * (k - 1) + 7
    omega
  · change 25 * k + 18 - 11 = 25 * k + 7
    omega
  · change 25 * k + 18 + 14 = 25 * (k + 1) + 7
    omega
  · change 25 * k + 18 + 39 = 25 * (k + 2) + 7
    omega
  · change 25 * k + 18 + 64 = 25 * (k + 3) + 7
    omega

/-- The synthetic source `25*k+18` lies in the `18 mod 25` residue class. -/
theorem candidateCarrier_eighteenSourceFromIndex (k : Nat) :
    CandidateCarrier 18 (EighteenSourceFromIndex k) := by
  unfold CandidateCarrier EighteenSourceFromIndex
  omega

/-- The residue-class index of `25*k+18` is exactly `k`. -/
theorem candidateClassIndex_eighteenSourceFromIndex (k : Nat) :
    CandidateClassIndex (EighteenSourceFromIndex k) = k := by
  unfold CandidateClassIndex EighteenSourceFromIndex
  rw [Nat.mul_add_div (by omega : 0 < 25) k 18]
  omega

/-- Every `18 mod 25` source is recovered from its residue-class index. -/
theorem eighteenSourceFromIndex_candidateClassIndex
    {b : Nat} (hb18 : CandidateCarrier 18 b) :
    EighteenSourceFromIndex (CandidateClassIndex b) = b := by
  unfold CandidateCarrier at hb18
  unfold EighteenSourceFromIndex CandidateClassIndex
  have h := Nat.mod_add_div b 25
  omega

/-- The `b`-indexed shift target is the same target expressed from the source index. -/
theorem oppositeFiniteOffsetCodeShiftTargetIndex_eq_sourceIndexShift
    (b : Nat)
    (code : OppositeFiniteOffsetCode) :
    OppositeFiniteOffsetCodeShiftTargetIndex b code =
      OppositeFiniteOffsetSourceIndexShiftTarget (CandidateClassIndex b) code := by
  cases code <;> rfl

/--
For boxed targets from an `18 mod 25` source, the target residue-class index is
the explicit source-index shift attached to the typed finite-offset code.
-/
theorem oppositeFiniteOffsetCodeTargetIndex_eq_shiftTargetIndex
    {N b : Nat} {code : OppositeFiniteOffsetCode}
    (hb18 : CandidateCarrier 18 b)
    (hTarget : InBox N (OppositeFiniteOffsetCodeValue b code)) :
    OppositeFiniteOffsetCodeTargetIndex b code =
      OppositeFiniteOffsetCodeShiftTargetIndex b code := by
  unfold CandidateCarrier at hb18
  have hdecomp : b = 25 * (b / 25) + 18 := by
    have h := Nat.mod_add_div b 25
    omega
  have hsourceIndex : (25 * (b / 25) + 18) / 25 = b / 25 := by
    rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25) 18]
    omega
  cases code
  · have hleft0 : 1 <= b - 86 := by
      simpa [OppositeFiniteOffsetCodeValue, OppositeFiniteOffsetValue,
        OppositeFiniteOffsetCode.toNat] using
        hTarget.left
    have hleft : 1 <= 25 * (b / 25) + 18 - 86 := by
      rw [← hdecomp]
      exact hleft0
    have hpos : 0 < 25 * (b / 25) + 18 - 86 := by omega
    have hgt : 86 < 25 * (b / 25) + 18 := Nat.sub_pos_iff_lt.mp hpos
    have hk : 3 <= b / 25 := by omega
    have hcalc : (b - 86) / 25 = b / 25 - 3 := by
      rw [hdecomp]
      have hval :
          25 * (b / 25) + 18 - 86 = 25 * (b / 25 - 3) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25 - 3) 7]
      rw [hsourceIndex]
      omega
    change (b - 86) / 25 = b / 25 - 3
    exact hcalc
  · have hleft0 : 1 <= b - 61 := by
      simpa [OppositeFiniteOffsetCodeValue, OppositeFiniteOffsetValue,
        OppositeFiniteOffsetCode.toNat] using
        hTarget.left
    have hleft : 1 <= 25 * (b / 25) + 18 - 61 := by
      rw [← hdecomp]
      exact hleft0
    have hpos : 0 < 25 * (b / 25) + 18 - 61 := by omega
    have hgt : 61 < 25 * (b / 25) + 18 := Nat.sub_pos_iff_lt.mp hpos
    have hk : 2 <= b / 25 := by omega
    have hcalc : (b - 61) / 25 = b / 25 - 2 := by
      rw [hdecomp]
      have hval :
          25 * (b / 25) + 18 - 61 = 25 * (b / 25 - 2) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25 - 2) 7]
      rw [hsourceIndex]
      omega
    change (b - 61) / 25 = b / 25 - 2
    exact hcalc
  · have hleft0 : 1 <= b - 36 := by
      simpa [OppositeFiniteOffsetCodeValue, OppositeFiniteOffsetValue,
        OppositeFiniteOffsetCode.toNat] using
        hTarget.left
    have hleft : 1 <= 25 * (b / 25) + 18 - 36 := by
      rw [← hdecomp]
      exact hleft0
    have hpos : 0 < 25 * (b / 25) + 18 - 36 := by omega
    have hgt : 36 < 25 * (b / 25) + 18 := Nat.sub_pos_iff_lt.mp hpos
    have hk : 1 <= b / 25 := by omega
    have hcalc : (b - 36) / 25 = b / 25 - 1 := by
      rw [hdecomp]
      have hval :
          25 * (b / 25) + 18 - 36 = 25 * (b / 25 - 1) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25 - 1) 7]
      rw [hsourceIndex]
      omega
    change (b - 36) / 25 = b / 25 - 1
    exact hcalc
  · have hcalc : (b - 11) / 25 = b / 25 := by
      rw [hdecomp]
      have hval : 25 * (b / 25) + 18 - 11 = 25 * (b / 25) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25) 7]
      rw [hsourceIndex]
      omega
    change (b - 11) / 25 = b / 25
    exact hcalc
  · have hcalc : (b + 14) / 25 = b / 25 + 1 := by
      rw [hdecomp]
      have hval : 25 * (b / 25) + 18 + 14 = 25 * (b / 25 + 1) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25 + 1) 7]
      rw [hsourceIndex]
    simpa [OppositeFiniteOffsetCodeTargetIndex,
      OppositeFiniteOffsetCodeShiftTargetIndex, OppositeFiniteOffsetCodeValue,
      OppositeFiniteOffsetValue, OppositeFiniteOffsetCode.toNat,
      CandidateClassIndex] using hcalc
  · have hcalc : (b + 39) / 25 = b / 25 + 2 := by
      rw [hdecomp]
      have hval : 25 * (b / 25) + 18 + 39 = 25 * (b / 25 + 2) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25 + 2) 7]
      rw [hsourceIndex]
    simpa [OppositeFiniteOffsetCodeTargetIndex,
      OppositeFiniteOffsetCodeShiftTargetIndex, OppositeFiniteOffsetCodeValue,
      OppositeFiniteOffsetValue, OppositeFiniteOffsetCode.toNat,
      CandidateClassIndex] using hcalc
  · have hcalc : (b + 64) / 25 = b / 25 + 3 := by
      rw [hdecomp]
      have hval : 25 * (b / 25) + 18 + 64 = 25 * (b / 25 + 3) + 7 := by
        omega
      rw [hval]
      rw [Nat.mul_add_div (by omega : 0 < 25) (b / 25 + 3) 7]
      rw [hsourceIndex]
    simpa [OppositeFiniteOffsetCodeTargetIndex,
      OppositeFiniteOffsetCodeShiftTargetIndex, OppositeFiniteOffsetCodeValue,
      OppositeFiniteOffsetValue, OppositeFiniteOffsetCode.toNat,
      CandidateClassIndex] using hcalc

/-- A finite-offset code packaged with the proof that its target remains boxed. -/
def BoxedOppositeFiniteOffsetCode (N b : Nat) : Type :=
  { code : OppositeFiniteOffsetCode //
    InBox N (OppositeFiniteOffsetCodeValue b code) }

/-- The target value carried by a boxed finite-offset code. -/
def boxedOppositeFiniteOffsetCodeValue
    {N b : Nat} (code : BoxedOppositeFiniteOffsetCode N b) : Nat :=
  OppositeFiniteOffsetCodeValue b code.val

/-- Extract the target box proof carried by a boxed finite-offset code. -/
theorem boxedOppositeFiniteOffsetCodeValue_inBox
    {N b : Nat} (code : BoxedOppositeFiniteOffsetCode N b) :
    InBox N (boxedOppositeFiniteOffsetCodeValue code) :=
  code.property

/--
Total Nat-indexed code induced by source-indexed boxed codes.  Non-source
values are unreachable by the live matching image, so they get a harmless
default constructor.
-/
noncomputable def boxedOppositeFiniteOffsetRawCode
    (N : Nat)
    (offset : forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      BoxedOppositeFiniteOffsetCode N b)
    (b : Nat) : OppositeFiniteOffsetCode := by
  classical
  exact
    if h : InBox N b /\ CandidateCarrier 18 b then
      (offset b h.left h.right).val
    else
      OppositeFiniteOffsetCode.neg86

/-- Total mate function induced by source-indexed boxed finite-offset codes. -/
noncomputable def boxedOppositeFiniteOffsetMate
    (N : Nat)
    (offset : forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      BoxedOppositeFiniteOffsetCode N b)
    (b : Nat) : Nat :=
  OppositeFiniteOffsetCodeValue b (boxedOppositeFiniteOffsetRawCode N offset b)

/-- Every permitted finite-offset code lands inside the fixed value band `86`. -/
theorem oppositeFiniteOffsetValue_band_eightySix
    (b code : Nat) (hcode : code <= 6) :
    OppositeFiniteOffsetValue b code <= b + 86 /\
      b <= OppositeFiniteOffsetValue b code + 86 := by
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue]
    omega
  · omega

/--
The arithmetic core of a finite-offset neighbor.  The value-band inequalities
are deliberately omitted because `oppositeFiniteOffsetValue_band_eightySix`
derives them from `code <= 6`.
-/
def GlobalOppositeFiniteOffsetSquarefreeNeighbor (N r b code : Nat) : Prop :=
  code <= 6 /\
    InBox N b /\
    OppositeCandidateCarrier r b /\
    InBox N (OppositeFiniteOffsetValue b code) /\
    CandidateCarrier r (OppositeFiniteOffsetValue b code) /\
    ForbiddenSquarefreeEdge (OppositeFiniteOffsetValue b code) b

/--
Specialized seven-offset core for the live `7 mod 25` route.  The target
residue condition is omitted: if the finite-offset value is in the box and the
source is in the opposite class, Lean derives the `7 mod 25` target residue.
-/
def GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor (N b code : Nat) : Prop :=
  code <= 6 /\
    InBox N b /\
    OppositeCandidateCarrier 7 b /\
    InBox N (OppositeFiniteOffsetValue b code) /\
    ForbiddenSquarefreeEdge (OppositeFiniteOffsetValue b code) b

/--
Live finite-offset source-residue core.  This uses the concrete opposite class
`18 mod 25` directly; Lean reintroduces `OppositeCandidateCarrier 7` by the
closed residue equivalence.
-/
def GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor (N b code : Nat) : Prop :=
  code <= 6 /\
    InBox N b /\
    CandidateCarrier 18 b /\
    InBox N (OppositeFiniteOffsetValue b code) /\
    ForbiddenSquarefreeEdge (OppositeFiniteOffsetValue b code) b

/--
Pointwise finite-offset target data for the concrete `18 mod 25` source class.
The source box and residue facts are inputs to the certificate map, so they are
not repeated here.
-/
def GlobalOppositeFiniteOffsetEighteenTargetNeighbor (N b code : Nat) : Prop :=
  code <= 6 /\
    InBox N (OppositeFiniteOffsetValue b code) /\
    ForbiddenSquarefreeEdge (OppositeFiniteOffsetValue b code) b

/--
Typed pointwise finite-offset target data.  The code bound is not part of this
certificate surface because the code type has only the seven permitted offsets.
-/
def GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor
    (N b : Nat) (code : OppositeFiniteOffsetCode) : Prop :=
  InBox N (OppositeFiniteOffsetCodeValue b code) /\
    ForbiddenSquarefreeEdge (OppositeFiniteOffsetCodeValue b code) b

/--
Pointwise target data with the target-box proof carried by the boxed code.
Only the squarefree edge remains as explicit pointwise output.
-/
def GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor
    {N b : Nat} (code : BoxedOppositeFiniteOffsetCode N b) : Prop :=
  ForbiddenSquarefreeEdge (boxedOppositeFiniteOffsetCodeValue code) b

/--
A source-indexed finite-offset code carrying both target boxedness and the
squarefree edge proof to the source.
-/
def SquarefreeBoxedOppositeFiniteOffsetCode (N b : Nat) : Type :=
  { code : BoxedOppositeFiniteOffsetCode N b //
    GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor code }

/-- Forget the squarefree-edge proof and keep the boxed finite-offset code. -/
def SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
    {N b : Nat} (code : SquarefreeBoxedOppositeFiniteOffsetCode N b) :
    BoxedOppositeFiniteOffsetCode N b :=
  code.val

/-- Extract the squarefree edge proof carried by a squarefree-boxed code. -/
theorem globalOppositeFiniteOffsetEighteenBoxedTargetNeighbor_of_squarefreeBoxed
    {N b : Nat} (code : SquarefreeBoxedOppositeFiniteOffsetCode N b) :
    GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor code.toBoxed :=
  code.property

/--
Squarefree-boxed code carrying the proof that a fixed global decoder sends its
target back to the source.
-/
def DecodedSquarefreeBoxedOppositeFiniteOffsetCode
    (N b : Nat) (decoder : Nat -> Nat) : Type :=
  { code : SquarefreeBoxedOppositeFiniteOffsetCode N b //
    decoder (boxedOppositeFiniteOffsetCodeValue code.toBoxed) = b }

/-- Forget the decoder-hit proof and keep the squarefree-boxed code. -/
def DecodedSquarefreeBoxedOppositeFiniteOffsetCode.toSquarefreeBoxed
    {N b : Nat} {decoder : Nat -> Nat}
    (code : DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) :
    SquarefreeBoxedOppositeFiniteOffsetCode N b :=
  code.val

/-- Extract the decoder-hit proof carried by a decoded squarefree-boxed code. -/
theorem decodedSquarefreeBoxedOppositeFiniteOffsetCode_leftInverse
    {N b : Nat} {decoder : Nat -> Nat}
    (code : DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) :
    decoder (boxedOppositeFiniteOffsetCodeValue code.toSquarefreeBoxed.toBoxed) = b :=
  code.property

/-- The opposite mate induced by a decoded squarefree-boxed finite-offset family. -/
noncomputable def decodedSquarefreeBoxedOppositeFiniteOffsetMate
    (N : Nat) {decoder : Nat -> Nat}
    (offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) :
    Nat -> Nat :=
  boxedOppositeFiniteOffsetMate N
    (fun b hbBox hb18 =>
      SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
        (DecodedSquarefreeBoxedOppositeFiniteOffsetCode.toSquarefreeBoxed
          (offset b hbBox hb18)))

/-- The decoded mate sends each boxed `18 mod 25` source back through its decoder. -/
theorem decodedSquarefreeBoxedOppositeFiniteOffsetMate_leftInverse
    {N b : Nat} {decoder : Nat -> Nat}
    {offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder}
    (hbBox : InBox N b) (hb18 : CandidateCarrier 18 b) :
    decoder (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset b) = b := by
  have hsrc : InBox N b /\ CandidateCarrier 18 b := And.intro hbBox hb18
  simpa [decodedSquarefreeBoxedOppositeFiniteOffsetMate,
    boxedOppositeFiniteOffsetMate, boxedOppositeFiniteOffsetRawCode,
    boxedOppositeFiniteOffsetCodeValue, hsrc] using
    decodedSquarefreeBoxedOppositeFiniteOffsetCode_leftInverse
      (offset b hbBox hb18)

/-- Image-source predicate for a source-indexed squarefree-boxed offset family. -/
def SquarefreeBoxedOffsetImageSource
    {N : Nat}
    (offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b)
    (a b : Nat) : Prop :=
  Exists fun hbBox : InBox N b =>
  Exists fun hb18 : CandidateCarrier 18 b =>
    boxedOppositeFiniteOffsetCodeValue
      (SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
        (offset b hbBox hb18)) = a

/-- Pairwise injectivity of source-indexed squarefree-boxed offset values. -/
def SquarefreeBoxedOffsetInjective
    (N : Nat)
    (offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b) : Prop :=
  forall b1 b2 : Nat,
    forall hb1Box : InBox N b1,
    forall hb1Residue : CandidateCarrier 18 b1,
    forall hb2Box : InBox N b2,
    forall hb2Residue : CandidateCarrier 18 b2,
      boxedOppositeFiniteOffsetCodeValue
        (SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
          (offset b1 hb1Box hb1Residue)) =
        boxedOppositeFiniteOffsetCodeValue
          (SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
            (offset b2 hb2Box hb2Residue)) ->
        b1 = b2

/-- Decoder induced by any injective source-indexed squarefree-boxed offset. -/
noncomputable def squarefreeBoxedOffsetDecoder
    (N : Nat)
    (offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b)
    (a : Nat) : Nat :=
  by
    classical
    exact
      if h : Exists fun b : Nat =>
          SquarefreeBoxedOffsetImageSource offset a b then
        Classical.choose h
      else
        0

/-- The induced decoder is a left inverse on every injective offset target. -/
theorem squarefreeBoxedOffsetDecoder_leftInverse
    {N b : Nat}
    {offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b}
    (hInjective : SquarefreeBoxedOffsetInjective N offset)
    (hbBox : InBox N b) (hb18 : CandidateCarrier 18 b) :
    squarefreeBoxedOffsetDecoder N offset
      (boxedOppositeFiniteOffsetCodeValue
        (SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
          (offset b hbBox hb18))) = b := by
  classical
  let target :=
    boxedOppositeFiniteOffsetCodeValue
      (SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
        (offset b hbBox hb18))
  have hExists :
      Exists fun c : Nat =>
        SquarefreeBoxedOffsetImageSource offset target c :=
    ⟨b, hbBox, hb18, rfl⟩
  have hchosen :
      SquarefreeBoxedOffsetImageSource offset target
        (Classical.choose hExists) :=
    Classical.choose_spec hExists
  rcases hchosen with ⟨hcBox, hc18, htarget⟩
  have hsource :
      Classical.choose hExists = b := by
    exact hInjective (Classical.choose hExists) b
      hcBox hc18 hbBox hb18 htarget
  simpa [squarefreeBoxedOffsetDecoder, target, hExists] using hsource

/-- Package an injective squarefree-boxed offset as decoded code data. -/
def decodedSquarefreeBoxedOffset_of_injective
    {N b : Nat}
    {offset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b}
    (hInjective : SquarefreeBoxedOffsetInjective N offset)
    (hbBox : InBox N b) (hb18 : CandidateCarrier 18 b) :
    DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b
      (squarefreeBoxedOffsetDecoder N offset) :=
  ⟨offset b hbBox hb18,
    squarefreeBoxedOffsetDecoder_leftInverse hInjective hbBox hb18⟩

/-- Repackage boxed target-neighbor data into the typed-code target form. -/
theorem globalOppositeFiniteOffsetEighteenTypedTargetNeighbor_of_boxed
    {N b : Nat} {code : BoxedOppositeFiniteOffsetCode N b}
    (h : GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor code) :
    GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b code.val := by
  exact And.intro (boxedOppositeFiniteOffsetCodeValue_inBox code) h

/-- Package typed finite-offset target data as a boxed code. -/
def boxedOppositeFiniteOffsetCodeOfTyped
    {N : Nat}
    (offset : Nat -> OppositeFiniteOffsetCode)
    (hMap : forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b))
    (b : Nat) (hbBox : InBox N b) (hb18 : CandidateCarrier 18 b) :
    BoxedOppositeFiniteOffsetCode N b :=
  ⟨offset b, (hMap b hbBox hb18).left⟩

/-- Package typed finite-offset target data as squarefree-boxed code. -/
def squarefreeBoxedOppositeFiniteOffsetCodeOfTyped
    {N : Nat}
    (offset : Nat -> OppositeFiniteOffsetCode)
    (hMap : forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b))
    (b : Nat) (hbBox : InBox N b) (hb18 : CandidateCarrier 18 b) :
    SquarefreeBoxedOppositeFiniteOffsetCode N b :=
  ⟨boxedOppositeFiniteOffsetCodeOfTyped offset hMap b hbBox hb18,
    (hMap b hbBox hb18).right⟩

/-- Repackage typed target-neighbor data into the legacy Nat-code target form. -/
theorem globalOppositeFiniteOffsetEighteenTargetNeighbor_of_typed
    {N b : Nat} {code : OppositeFiniteOffsetCode}
    (h : GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b code) :
    GlobalOppositeFiniteOffsetEighteenTargetNeighbor
      N b (OppositeFiniteOffsetCode.toNat code) := by
  exact And.intro
    (oppositeFiniteOffsetCode_toNat_le_six code)
    (And.intro h.left h.right)

/-- Reattach source box/residue inputs to a finite-offset target-neighbor fact. -/
theorem globalOppositeFiniteOffsetEighteenSquarefreeNeighbor_of_target
    {N b code : Nat}
    (hbBox : InBox N b)
    (hb18 : CandidateCarrier 18 b)
    (h : GlobalOppositeFiniteOffsetEighteenTargetNeighbor N b code) :
    GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor N b code := by
  exact ⟨h.left, hbBox, hb18, h.right.left, h.right.right⟩

/-- Repackage the concrete `18 mod 25` source-residue core as the seven-core neighbor. -/
theorem globalOppositeFiniteOffsetSevenSquarefreeNeighbor_of_eighteen
    {N b code : Nat}
    (h : GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor N b code) :
    GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor N b code := by
  rcases h with ⟨hcode, hbBox, hb18, haBox, hedge⟩
  exact ⟨hcode, hbBox,
    oppositeCandidateCarrier_seven_of_candidate_eighteen hb18,
    haBox, hedge⟩

/-- In the live route, any boxed seven-offset mate of an opposite vertex is `7 mod 25`. -/
theorem candidateCarrier_seven_of_oppositeFiniteOffsetValue
    {b code : Nat}
    (hcode : code <= 6)
    (hbOpp : OppositeCandidateCarrier 7 b)
    (hpos : 1 <= OppositeFiniteOffsetValue b code) :
    CandidateCarrier 7 (OppositeFiniteOffsetValue b code) := by
  have hb18 : CandidateCarrier 18 b := by
    rcases hbOpp with hOpp | hOpp
    · exact hOpp.right
    · omega
  unfold CandidateCarrier at hb18 ⊢
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  rcases code with _ | code
  · simp [OppositeFiniteOffsetValue] at hpos ⊢
    omega
  · omega

/-- Add the automatic `7 mod 25` target residue to the specialized seven-core neighbor. -/
theorem globalOppositeFiniteOffsetSquarefreeNeighbor_of_seven
    {N b code : Nat}
    (h : GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor N b code) :
    GlobalOppositeFiniteOffsetSquarefreeNeighbor N 7 b code := by
  rcases h with ⟨hcode, hbBox, hbOpp, haBox, hedge⟩
  exact ⟨hcode, hbBox, hbOpp, haBox,
    candidateCarrier_seven_of_oppositeFiniteOffsetValue hcode hbOpp haBox.left,
    hedge⟩

/-- A finite-offset opposite mate is one of the seven index-bandwidth-three shadows. -/
def GlobalOppositeFiniteOffsetNeighbor (N r K b code : Nat) : Prop :=
  code <= 6 /\
    GlobalOppositeNearbyNeighbor N r K b (OppositeFiniteOffsetValue b code)

/-- Add the automatic value-band inequalities to the finite-offset core neighbor. -/
theorem globalOppositeFiniteOffsetNeighbor_of_squarefree
    {N r b code : Nat}
    (h : GlobalOppositeFiniteOffsetSquarefreeNeighbor N r b code) :
    GlobalOppositeFiniteOffsetNeighbor N r 86 b code := by
  rcases h with ⟨hcode, hbBox, hbOpp, haBox, haCand, hedge⟩
  have hband := oppositeFiniteOffsetValue_band_eightySix b code hcode
  exact ⟨hcode, hbBox, hbOpp, haBox, haCand, hedge, hband.left, hband.right⟩

/-- Global opposite-block matching whose mate is chosen from the seven fixed offsets. -/
def GlobalOppositeFiniteOffsetMatchingImageAllocation (N r K : Nat) : Prop :=
  Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeFiniteOffsetNeighbor N r K b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 -> OppositeCandidateCarrier r b1 ->
      InBox N b2 -> OppositeCandidateCarrier r b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2)

/-- Residue-level finite-offset global opposite matching certificate. -/
def GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue (r K : Nat) : Prop :=
  forall N : Nat, GlobalOppositeFiniteOffsetMatchingImageAllocation N r K

/-- Banded opposite-only allocation certificate. -/
def OppositeNearbyAPAllocationCertificateForResidue (r K : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    OppositeNearbyNeighborAllocation N r K B decOpp

/-- Banded opposite-only certificate with the allocation forced to be a matching image. -/
def OppositeNearbyMatchingAPCertificateForResidue (r K : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    OppositeNearbyMatchingImageAllocation N r K B decOpp

/-- Opposite-only allocation certificate; matching images are a concrete source. -/
def OppositeSquarefreeAPAllocationCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    OppositeNeighborAllocation N r B decOpp

/-- Opposite-only AP/Hall expansion certificate. -/
def OppositeSquarefreeAPCapacityCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    OppositeNeighborExpansion N r B decOpp decOppNbr

/-- Strict-middle-active incremental certificate; the opposite-only case is split off. -/
def ActiveStrictMiddleIncrementalCapacityCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)))
    (decNewMid : DecidablePred (IncrementalStrictMiddleNeighbor N r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    (Exists fun b : Nat => StrictMiddlePart r B b) ->
    PartitionedIncrementalCapacity N r B decOpp decMid decOppNbr decNewMid

/-- Active strict-middle certificate as an allocated set of genuinely new neighbors. -/
def ActiveStrictMiddleNewNeighborAllocation
    (N r : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))) : Prop :=
  Exists fun MidAlloc : Nat -> Prop =>
  Exists fun decMidAlloc : DecidablePred MidAlloc =>
    @familySize N (OppositeOutsidePart r B) decOpp +
        @familySize N (StrictMiddlePart r B) decMid <=
      @familySize N
          (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)) decOppNbr +
        @familySize N MidAlloc decMidAlloc /\
    (forall a : Nat, MidAlloc a -> IncrementalStrictMiddleNeighbor N r B a)

/-- Active strict-middle surplus certificate with an explicit new-neighbor allocation. -/
def ActiveStrictMiddleNewNeighborAllocationCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    (Exists fun b : Nat => StrictMiddlePart r B b) ->
    ActiveStrictMiddleNewNeighborAllocation N r B decOpp decMid decOppNbr

/-- Credit targets for active strict-middle vertices:
unused opposite-neighbor surplus or genuinely new strict-middle neighbors. -/
def ActiveStrictMiddleCreditTarget
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) (a : Nat) : Prop :=
  (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a /\
      Not (OppositeMatchingImage r B mate a)) \/
    IncrementalStrictMiddleNeighbor N r B a

/-- Image of an active strict-middle credit function. -/
def ActiveStrictMiddleCreditImage
    (r : Nat) (B : Nat -> Prop) (credit : Nat -> Nat) (a : Nat) : Prop :=
  Exists fun b : Nat => StrictMiddlePart r B b /\ credit b = a

/-- Active strict-middle vertices matched into opposite surplus or new middle neighbors. -/
def ActiveStrictMiddleCreditMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) : Prop :=
  Exists fun credit : Nat -> Nat =>
    (forall b : Nat, StrictMiddlePart r B b ->
      ActiveStrictMiddleCreditTarget N r B mate (credit b)) /\
    (forall b1 b2 : Nat,
      StrictMiddlePart r B b1 ->
      StrictMiddlePart r B b2 ->
      credit b1 = credit b2 ->
      b1 = b2)

/-- Credit target code carrying the target-side membership proof. -/
def ActiveStrictMiddleCreditCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) : Type :=
  { a : Nat // ActiveStrictMiddleCreditTarget N r B mate a }

/-- Forget proof data and keep the target value of a credit code. -/
def ActiveStrictMiddleCreditCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditCode N r B mate) : Nat :=
  code.val

/-- Extract target membership carried by a credit code. -/
theorem activeStrictMiddleCreditCode_target
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditCode N r B mate) :
    ActiveStrictMiddleCreditTarget N r B mate code.value :=
  code.property

/-- Candidate-neighbor code with the source witness carried explicitly. -/
structure SquarefreeNeighborInCandidateWitnessCode
    (N r : Nat) (B : Nat -> Prop) where
  value : Nat
  source : Nat
  valueBox : InBox N value
  valueCarrier : CandidateCarrier r value
  sourceMem : B source
  edge : ForbiddenSquarefreeEdge value source

/-- Forget the explicit source fields and keep the old neighbor predicate. -/
theorem squarefreeNeighborInCandidate_of_witnessCode
    {N r : Nat} {B : Nat -> Prop}
    (code : SquarefreeNeighborInCandidateWitnessCode N r B) :
    SquarefreeNeighborInCandidate N r B code.value :=
  ⟨code.valueBox, code.valueCarrier,
    ⟨code.source, code.sourceMem, code.edge⟩⟩

/--
Canonical source decoder for a target known to be a squarefree neighbor.  The
decoder chooses one source witness when the target lies in the neighbor set.
-/
noncomputable def squarefreeNeighborSourceDecoder
    (B : Nat -> Prop) (a : Nat) : Nat :=
  by
    classical
    exact
      if h : Exists fun b : Nat => B b /\ ForbiddenSquarefreeEdge a b then
        Classical.choose h
      else
        0

/-- The canonical source decoder returns a real source for any neighbor target. -/
theorem squarefreeNeighborSourceDecoder_spec
    {N r : Nat} {B : Nat -> Prop} {a : Nat}
    (h : SquarefreeNeighborInCandidate N r B a) :
    B (squarefreeNeighborSourceDecoder B a) /\
      ForbiddenSquarefreeEdge a (squarefreeNeighborSourceDecoder B a) := by
  classical
  rcases h with ⟨_haBox, _haCarrier, b, hb, hedge⟩
  let hExists : Exists fun b : Nat => B b /\ ForbiddenSquarefreeEdge a b :=
    ⟨b, hb, hedge⟩
  have hchoose :
      B (Classical.choose hExists) /\
        ForbiddenSquarefreeEdge a (Classical.choose hExists) :=
    Classical.choose_spec hExists
  simpa [squarefreeNeighborSourceDecoder, hExists] using hchoose

/--
If a target has no opposite-source edge, then the canonical opposite-source
decoder cannot land in the concrete `18 mod 25` class.
-/
theorem squarefreeNeighborSourceDecoder_not_eighteen_of_no_opposite_edge
    {B : Nat -> Prop} {a : Nat}
    (hNo :
      forall c : Nat, OppositeOutsidePart 7 B c ->
        Not (ForbiddenSquarefreeEdge a c)) :
    Not (CandidateCarrier 18
      (squarefreeNeighborSourceDecoder (OppositeOutsidePart 7 B) a)) := by
  classical
  unfold squarefreeNeighborSourceDecoder
  by_cases hExists :
      Exists fun c : Nat =>
        OppositeOutsidePart 7 B c /\ ForbiddenSquarefreeEdge a c
  · exact False.elim
      ((hNo (Classical.choose hExists) (Classical.choose_spec hExists).left)
        (Classical.choose_spec hExists).right)
  · simp [hExists, CandidateCarrier]

/-- Credit code for an unused opposite-neighbor reserve target. -/
def ActiveStrictMiddleReserveCreditCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) : Type :=
  { a : Nat //
    SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) a /\
      Not (OppositeMatchingImage r B mate a) }

/-- Credit code for a genuinely new strict-middle neighbor target. -/
def ActiveStrictMiddleNewCreditCode
    (N r : Nat) (B : Nat -> Prop) : Type :=
  { a : Nat // IncrementalStrictMiddleNeighbor N r B a }

/-- Reserve credit code with the opposite-neighbor source witness explicit. -/
structure ActiveStrictMiddleReserveWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (OppositeOutsidePart r B)
  notImage : Not (OppositeMatchingImage r B mate neighbor.value)

/--
Reserve credit code with non-image certified by an opposite decoder: if the
decoder of the target is not an opposite source, then the target cannot lie in
the opposite matching image.
-/
structure ActiveStrictMiddleReserveAntiImageWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (OppositeOutsidePart r B)
  decoderNotOpposite : Not (OppositeOutsidePart r B (oppositeDecoder neighbor.value))

/-- Decoder-side anti-image data supplies the old reserve witness code. -/
def ActiveStrictMiddleReserveAntiImageWitnessCreditCode.toReserveWitnessCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (hLeft : forall b : Nat, OppositeOutsidePart r B b ->
      oppositeDecoder (mate b) = b)
    (code :
      ActiveStrictMiddleReserveAntiImageWitnessCreditCode
        N r B mate oppositeDecoder) :
    ActiveStrictMiddleReserveWitnessCreditCode N r B mate where
  neighbor := code.neighbor
  notImage := by
    intro hImage
    rcases hImage with ⟨b, hbOpp, hmate⟩
    have hDecode : oppositeDecoder code.neighbor.value = b := by
      simpa [hmate] using hLeft b hbOpp
    exact code.decoderNotOpposite (by simpa [hDecode] using hbOpp)

/--
Reserve credit code whose non-image fact is certified by showing the opposite
decoder does not land in the opposite carrier.
-/
structure ActiveStrictMiddleReserveAntiCarrierWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (OppositeOutsidePart r B)
  decoderNotOppositeCarrier :
    Not (OppositeCandidateCarrier r (oppositeDecoder neighbor.value))

/-- Carrier-only reserve data supplies decoder-side anti-image data. -/
def ActiveStrictMiddleReserveAntiCarrierWitnessCreditCode.toAntiImageWitnessCreditCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code :
      ActiveStrictMiddleReserveAntiCarrierWitnessCreditCode
        N r B mate oppositeDecoder) :
    ActiveStrictMiddleReserveAntiImageWitnessCreditCode N r B mate oppositeDecoder where
  neighbor := code.neighbor
  decoderNotOpposite := by
    intro hOpp
    exact code.decoderNotOppositeCarrier hOpp.right

/--
Live-route reserve credit code whose non-image fact is certified by showing
the opposite decoder does not land in `18 mod 25`.
-/
structure ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N 7 (OppositeOutsidePart 7 B)
  decoderNotEighteen :
    Not (CandidateCarrier 18 (oppositeDecoder neighbor.value))

/-- Concrete anti-`18 mod 25` reserve data supplies carrier-level data. -/
def ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode.toCarrierWitnessCreditCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code :
      ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
        N B mate oppositeDecoder) :
    ActiveStrictMiddleReserveAntiCarrierWitnessCreditCode
      N 7 B mate oppositeDecoder where
  neighbor := code.neighbor
  decoderNotOppositeCarrier :=
    not_oppositeCandidateCarrier_seven_of_not_candidate_eighteen
      code.decoderNotEighteen

/-- Forget the explicit neighbor source and keep the old reserve credit code. -/
def ActiveStrictMiddleReserveWitnessCreditCode.toReserveCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleReserveWitnessCreditCode N r B mate) :
    ActiveStrictMiddleReserveCreditCode N r B mate :=
  ⟨code.neighbor.value,
    squarefreeNeighborInCandidate_of_witnessCode code.neighbor,
    code.notImage⟩

/-- New-middle credit code with the strict-middle neighbor source explicit. -/
structure ActiveStrictMiddleNewWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (StrictMiddlePart r B)
  notOppositeNeighbor :
    Not (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B) neighbor.value)

/-- Forget the explicit neighbor source and keep the old new-middle credit code. -/
def ActiveStrictMiddleNewWitnessCreditCode.toNewCode
    {N r : Nat} {B : Nat -> Prop}
    (code : ActiveStrictMiddleNewWitnessCreditCode N r B) :
    ActiveStrictMiddleNewCreditCode N r B :=
  ⟨code.neighbor.value,
    squarefreeNeighborInCandidate_of_witnessCode code.neighbor,
    code.notOppositeNeighbor⟩

/--
New-middle credit code whose non-opposite-neighbor fact is certified by the
canonical opposite-neighbor source decoder.
-/
structure ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (StrictMiddlePart r B)
  decoderNotOppositeNeighbor :
    Not (OppositeOutsidePart r B
        (squarefreeNeighborSourceDecoder (OppositeOutsidePart r B) neighbor.value) /\
      ForbiddenSquarefreeEdge neighbor.value
        (squarefreeNeighborSourceDecoder (OppositeOutsidePart r B) neighbor.value))

/--
Decoder-side anti-neighbor data supplies the previous new-middle witness code.
-/
def ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode.toNewWitnessCreditCode
    {N r : Nat} {B : Nat -> Prop}
    (code : ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode N r B) :
    ActiveStrictMiddleNewWitnessCreditCode N r B where
  neighbor := code.neighbor
  notOppositeNeighbor := by
    intro hOppNbr
    exact code.decoderNotOppositeNeighbor
      (squarefreeNeighborSourceDecoder_spec hOppNbr)

/--
New-middle credit code whose anti-neighbor fact is certified only by showing
the canonical opposite-neighbor source is not an opposite source.
-/
structure ActiveStrictMiddleNewSourceAntiOppositeWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (StrictMiddlePart r B)
  decoderNotOpposite :
    Not (OppositeOutsidePart r B
      (squarefreeNeighborSourceDecoder (OppositeOutsidePart r B)
        neighbor.value))

/--
Source anti-opposite data supplies the previous source anti-neighbor code.
-/
def ActiveStrictMiddleNewSourceAntiOppositeWitnessCreditCode.toSourceAntiNeighborWitnessCreditCode
    {N r : Nat} {B : Nat -> Prop}
    (code : ActiveStrictMiddleNewSourceAntiOppositeWitnessCreditCode N r B) :
    ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode N r B where
  neighbor := code.neighbor
  decoderNotOppositeNeighbor := by
    intro hOppEdge
    exact code.decoderNotOpposite hOppEdge.left

/--
New-middle credit code whose anti-neighbor fact is certified at the carrier
level for the canonical opposite-neighbor source.
-/
structure ActiveStrictMiddleNewSourceAntiCarrierWitnessCreditCode
    (N r : Nat) (B : Nat -> Prop) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N r (StrictMiddlePart r B)
  decoderNotOppositeCarrier :
    Not (OppositeCandidateCarrier r
      (squarefreeNeighborSourceDecoder (OppositeOutsidePart r B)
        neighbor.value))

/-- Carrier-level new-middle data supplies source anti-opposite data. -/
def ActiveStrictMiddleNewSourceAntiCarrierWitnessCreditCode.toSourceAntiOppositeWitnessCreditCode
    {N r : Nat} {B : Nat -> Prop}
    (code : ActiveStrictMiddleNewSourceAntiCarrierWitnessCreditCode N r B) :
    ActiveStrictMiddleNewSourceAntiOppositeWitnessCreditCode N r B where
  neighbor := code.neighbor
  decoderNotOpposite := by
    intro hOpp
    exact code.decoderNotOppositeCarrier hOpp.right

/--
Live-route new-middle credit code whose anti-neighbor fact is certified by
showing the canonical opposite-neighbor source is not in `18 mod 25`.
-/
structure ActiveStrictMiddleNewSourceAntiEighteenWitnessCreditCode
    (N : Nat) (B : Nat -> Prop) where
  neighbor : SquarefreeNeighborInCandidateWitnessCode N 7 (StrictMiddlePart 7 B)
  decoderNotEighteen :
    Not (CandidateCarrier 18
      (squarefreeNeighborSourceDecoder (OppositeOutsidePart 7 B)
        neighbor.value))

/-- Concrete anti-`18 mod 25` new-middle data supplies carrier-level data. -/
def ActiveStrictMiddleNewSourceAntiEighteenWitnessCreditCode.toCarrierWitnessCreditCode
    {N : Nat} {B : Nat -> Prop}
    (code : ActiveStrictMiddleNewSourceAntiEighteenWitnessCreditCode N B) :
    ActiveStrictMiddleNewSourceAntiCarrierWitnessCreditCode N 7 B where
  neighbor := code.neighbor
  decoderNotOppositeCarrier :=
    not_oppositeCandidateCarrier_seven_of_not_candidate_eighteen
      code.decoderNotEighteen

/--
Live-route new-middle credit code whose source witness is the current
strict-middle vertex.
-/
structure ActiveStrictMiddleNewSelfAntiEighteenWitnessCreditCode
    (N : Nat) (B : Nat -> Prop) (b : Nat) where
  value : Nat
  valueBox : InBox N value
  valueCarrier : CandidateCarrier 7 value
  edge : ForbiddenSquarefreeEdge value b
  decoderNotEighteen :
    Not (CandidateCarrier 18
      (squarefreeNeighborSourceDecoder (OppositeOutsidePart 7 B) value))

/-- Self-source new-middle data supplies the previous source-witness code. -/
def ActiveStrictMiddleNewSelfAntiEighteenWitnessCreditCode.toSourceAntiEighteenWitnessCreditCode
    {N : Nat} {B : Nat -> Prop} {b : Nat}
    (hb : StrictMiddlePart 7 B b)
    (code : ActiveStrictMiddleNewSelfAntiEighteenWitnessCreditCode N B b) :
    ActiveStrictMiddleNewSourceAntiEighteenWitnessCreditCode N B where
  neighbor := {
    value := code.value
    source := b
    valueBox := code.valueBox
    valueCarrier := code.valueCarrier
    sourceMem := hb
    edge := code.edge
  }
  decoderNotEighteen := code.decoderNotEighteen

/--
Live-route new-middle credit code whose target is fresh from every opposite
source and whose source witness is the current strict-middle vertex.
-/
structure ActiveStrictMiddleNewSelfFreshWitnessCreditCode
    (N : Nat) (B : Nat -> Prop) (b : Nat) where
  value : Nat
  valueBox : InBox N value
  valueCarrier : CandidateCarrier 7 value
  edge : ForbiddenSquarefreeEdge value b
  noOppositeEdge :
    forall c : Nat, OppositeOutsidePart 7 B c ->
      Not (ForbiddenSquarefreeEdge value c)

/-- Fresh self-source data supplies self-source anti-`18 mod 25` data. -/
def ActiveStrictMiddleNewSelfFreshWitnessCreditCode.toSelfAntiEighteenWitnessCreditCode
    {N : Nat} {B : Nat -> Prop} {b : Nat}
    (code : ActiveStrictMiddleNewSelfFreshWitnessCreditCode N B b) :
    ActiveStrictMiddleNewSelfAntiEighteenWitnessCreditCode N B b where
  value := code.value
  valueBox := code.valueBox
  valueCarrier := code.valueCarrier
  edge := code.edge
  decoderNotEighteen :=
    squarefreeNeighborSourceDecoder_not_eighteen_of_no_opposite_edge
      code.noOppositeEdge

/--
Live-route new-middle credit code whose freshness is the exact
`IncrementalStrictMiddleNeighbor` non-opposite-neighbor side.
-/
structure ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode
    (N : Nat) (B : Nat -> Prop) (b : Nat) where
  value : Nat
  valueBox : InBox N value
  valueCarrier : CandidateCarrier 7 value
  edge : ForbiddenSquarefreeEdge value b
  notOppositeNeighbor :
    Not (SquarefreeNeighborInCandidate N 7 (OppositeOutsidePart 7 B) value)

/-- With the source restored, self-incremental data is a strict-middle new neighbor. -/
def ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode.toIncrementalStrictMiddleNeighbor
    {N : Nat} {B : Nat -> Prop} {b : Nat}
    (hb : StrictMiddlePart 7 B b)
    (code : ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode N B b) :
    IncrementalStrictMiddleNeighbor N 7 B code.value :=
  ⟨⟨code.valueBox, code.valueCarrier, ⟨b, hb, code.edge⟩⟩,
    code.notOppositeNeighbor⟩

/-- Self-incremental data supplies the previous self-fresh code. -/
def ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode.toSelfFreshWitnessCreditCode
    {N : Nat} {B : Nat -> Prop} {b : Nat}
    (code : ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode N B b) :
    ActiveStrictMiddleNewSelfFreshWitnessCreditCode N B b where
  value := code.value
  valueBox := code.valueBox
  valueCarrier := code.valueCarrier
  edge := code.edge
  noOppositeEdge := by
    intro c hc hedge
    exact code.notOppositeNeighbor
      ⟨code.valueBox, code.valueCarrier, ⟨c, hc, hedge⟩⟩

/--
Live-route new-middle credit code reusing the existing incremental
strict-middle target code and adding only the current-source edge.
-/
structure ActiveStrictMiddleNewSelfTargetCreditCode
    (N : Nat) (B : Nat -> Prop) (b : Nat) where
  target : ActiveStrictMiddleNewCreditCode N 7 B
  edge : ForbiddenSquarefreeEdge target.val b

/--
Live-route new-middle credit code whose current-source edge is recovered from
the canonical strict-middle source decoder.
-/
structure ActiveStrictMiddleNewSelfCanonicalTargetCreditCode
    (N : Nat) (B : Nat -> Prop) (b : Nat) where
  target : ActiveStrictMiddleNewCreditCode N 7 B
  sourceHit :
    squarefreeNeighborSourceDecoder (StrictMiddlePart 7 B) target.val = b

/-- A canonical-source target code supplies the previous self-target code. -/
def ActiveStrictMiddleNewSelfCanonicalTargetCreditCode.toSelfTargetCreditCode
    {N : Nat} {B : Nat -> Prop} {b : Nat}
    (code : ActiveStrictMiddleNewSelfCanonicalTargetCreditCode N B b) :
    ActiveStrictMiddleNewSelfTargetCreditCode N B b where
  target := code.target
  edge := by
    have hNbr :
        SquarefreeNeighborInCandidate N 7 (StrictMiddlePart 7 B)
          code.target.val :=
      code.target.property.left
    have hSpec := squarefreeNeighborSourceDecoder_spec hNbr
    simpa [code.sourceHit] using hSpec.right

/-- A self-target code supplies the previous self-incremental witness code. -/
def ActiveStrictMiddleNewSelfTargetCreditCode.toSelfIncrementalWitnessCreditCode
    {N : Nat} {B : Nat -> Prop} {b : Nat}
    (code : ActiveStrictMiddleNewSelfTargetCreditCode N B b) :
    ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode N B b where
  value := code.target.val
  valueBox := code.target.property.left.left
  valueCarrier := code.target.property.left.right.left
  edge := code.edge
  notOppositeNeighbor := code.target.property.right

/--
Credit target as an explicit reserve/new-middle sum code, rather than an
opaque disjunction.
-/
def ActiveStrictMiddleCreditSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveCreditCode N r B mate)
    (ActiveStrictMiddleNewCreditCode N r B)

/-- Forget proof data and keep the target value of a reserve/new-middle code. -/
def ActiveStrictMiddleCreditSumCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSumCode N r B mate) : Nat :=
  match code with
  | Sum.inl reserve => reserve.val
  | Sum.inr newMiddle => newMiddle.val

/-- The reserve/new-middle code supplies the old credit-target predicate. -/
theorem activeStrictMiddleCreditSumCode_target
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSumCode N r B mate) :
    ActiveStrictMiddleCreditTarget N r B mate code.value := by
  cases code with
  | inl reserve =>
      exact Or.inl reserve.property
  | inr newMiddle =>
      exact Or.inr newMiddle.property

/-- Forget the reserve/new-middle branch and keep the previous credit code. -/
def ActiveStrictMiddleCreditSumCode.toCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSumCode N r B mate) :
    ActiveStrictMiddleCreditCode N r B mate :=
  ⟨code.value, activeStrictMiddleCreditSumCode_target code⟩

/--
Credit target as an explicit reserve/new-middle sum whose neighbor source
witness is also carried by the code.
-/
def ActiveStrictMiddleCreditWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveWitnessCreditCode N r B mate)
    (ActiveStrictMiddleNewWitnessCreditCode N r B)

/-- Forget proof data and keep the target value of a witness sum code. -/
def ActiveStrictMiddleCreditWitnessSumCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditWitnessSumCode N r B mate) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.neighbor.value

/-- Forget the explicit neighbor witness and keep the previous sum code. -/
def ActiveStrictMiddleCreditWitnessSumCode.toSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    (code : ActiveStrictMiddleCreditWitnessSumCode N r B mate) :
    ActiveStrictMiddleCreditSumCode N r B mate :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve.toReserveCode
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toNewCode

/--
Credit target as an explicit witness sum, with reserve non-image certified
through an opposite decoder.
-/
def ActiveStrictMiddleCreditAntiImageWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiImageWitnessCreditCode
      N r B mate oppositeDecoder)
    (ActiveStrictMiddleNewWitnessCreditCode N r B)

/-- Forget proof data and keep the target value of an anti-image witness sum. -/
def ActiveStrictMiddleCreditAntiImageWitnessSumCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditAntiImageWitnessSumCode
      N r B mate oppositeDecoder) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.neighbor.value

/-- Forget decoder-side anti-image data and keep the previous witness sum code. -/
def ActiveStrictMiddleCreditAntiImageWitnessSumCode.toWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (hLeft : forall b : Nat, OppositeOutsidePart r B b ->
      oppositeDecoder (mate b) = b)
    (code : ActiveStrictMiddleCreditAntiImageWitnessSumCode
      N r B mate oppositeDecoder) :
    ActiveStrictMiddleCreditWitnessSumCode N r B mate :=
  match code with
  | Sum.inl reserve =>
      Sum.inl (reserve.toReserveWitnessCode hLeft)
  | Sum.inr newMiddle =>
      Sum.inr newMiddle

/--
Credit target as a witness sum where reserve non-image and new-middle
anti-neighbor facts are both decoder-side certificates.
-/
def ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiImageWitnessCreditCode
      N r B mate oppositeDecoder)
    (ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode N r B)

/-- Forget proof data and keep the target value of a source-anti-neighbor sum. -/
def ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
      N r B mate oppositeDecoder) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.neighbor.value

/-- Forget source anti-neighbor data and keep the previous anti-image sum code. -/
def ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toAntiImageWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
      N r B mate oppositeDecoder) :
    ActiveStrictMiddleCreditAntiImageWitnessSumCode
      N r B mate oppositeDecoder :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toNewWitnessCreditCode

/--
Credit target as a witness sum where the new-middle negative fact is reduced to
source anti-opposite data.
-/
def ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiImageWitnessCreditCode
      N r B mate oppositeDecoder)
    (ActiveStrictMiddleNewSourceAntiOppositeWitnessCreditCode N r B)

/-- Forget proof data and keep the target value of a source anti-opposite sum. -/
def ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
      N r B mate oppositeDecoder) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.neighbor.value

/-- Source anti-opposite sums supply source anti-neighbor sums. -/
def ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.toSourceAntiNeighborWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
      N r B mate oppositeDecoder) :
    ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
      N r B mate oppositeDecoder :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toSourceAntiNeighborWitnessCreditCode

/--
Credit target as a witness sum where both negative facts are carrier-level
certificates.
-/
def ActiveStrictMiddleCreditCarrierWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiCarrierWitnessCreditCode
      N r B mate oppositeDecoder)
    (ActiveStrictMiddleNewSourceAntiCarrierWitnessCreditCode N r B)

/-- Forget proof data and keep the target value of a carrier witness sum. -/
def ActiveStrictMiddleCreditCarrierWitnessSumCode.value
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditCarrierWitnessSumCode
      N r B mate oppositeDecoder) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.neighbor.value

/-- Carrier witness sums supply source anti-opposite sums. -/
def ActiveStrictMiddleCreditCarrierWitnessSumCode.toSourceAntiOppositeWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditCarrierWitnessSumCode
      N r B mate oppositeDecoder) :
    ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
      N r B mate oppositeDecoder :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve.toAntiImageWitnessCreditCode
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toSourceAntiOppositeWitnessCreditCode

/--
Live-route credit target as a witness sum where both negative facts are the
concrete statement "not `18 mod 25`".
-/
def ActiveStrictMiddleCreditAntiEighteenWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
      N B mate oppositeDecoder)
    (ActiveStrictMiddleNewSourceAntiEighteenWitnessCreditCode N B)

/-- Forget proof data and keep the target value of an anti-`18 mod 25` sum. -/
def ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditAntiEighteenWitnessSumCode
      N B mate oppositeDecoder) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.neighbor.value

/-- Anti-`18 mod 25` witness sums supply carrier witness sums. -/
def ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.toCarrierWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat}
    (code : ActiveStrictMiddleCreditAntiEighteenWitnessSumCode
      N B mate oppositeDecoder) :
    ActiveStrictMiddleCreditCarrierWitnessSumCode
      N 7 B mate oppositeDecoder :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve.toCarrierWitnessCreditCode
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toCarrierWitnessCreditCode

/--
Live-route credit target where the new-middle branch must use the current
strict-middle vertex as its squarefree-edge source.
-/
def ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (b : Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
      N B mate oppositeDecoder)
    (ActiveStrictMiddleNewSelfAntiEighteenWitnessCreditCode N B b)

/-- Forget proof data and keep the target value of a self-source anti-`18` sum. -/
def ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
      N B mate oppositeDecoder b) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.value

/-- Self-source anti-`18` sums supply anti-`18` witness sums. -/
def ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.toAntiEighteenWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (hb : StrictMiddlePart 7 B b)
    (code : ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
      N B mate oppositeDecoder b) :
    ActiveStrictMiddleCreditAntiEighteenWitnessSumCode
      N B mate oppositeDecoder :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr (newMiddle.toSourceAntiEighteenWitnessCreditCode hb)

/--
Live-route credit target where the new-middle branch is a fresh neighbor of
the current strict-middle source.
-/
def ActiveStrictMiddleCreditSelfFreshWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (b : Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
      N B mate oppositeDecoder)
    (ActiveStrictMiddleNewSelfFreshWitnessCreditCode N B b)

/-- Forget proof data and keep the target value of a self-fresh sum. -/
def ActiveStrictMiddleCreditSelfFreshWitnessSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfFreshWitnessSumCode
      N B mate oppositeDecoder b) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.value

/-- Self-fresh sums supply self-source anti-`18 mod 25` sums. -/
def ActiveStrictMiddleCreditSelfFreshWitnessSumCode.toSelfAntiEighteenWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfFreshWitnessSumCode
      N B mate oppositeDecoder b) :
    ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
      N B mate oppositeDecoder b :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toSelfAntiEighteenWitnessCreditCode

/--
Live-route credit target where the new-middle branch carries the exact
non-opposite-neighbor half of `IncrementalStrictMiddleNeighbor`.
-/
def ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (b : Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
      N B mate oppositeDecoder)
    (ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode N B b)

/-- Forget proof data and keep the target value of a self-incremental sum. -/
def ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
      N B mate oppositeDecoder b) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.value

/-- Self-incremental sums supply self-fresh sums. -/
def ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.toSelfFreshWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
      N B mate oppositeDecoder b) :
    ActiveStrictMiddleCreditSelfFreshWitnessSumCode
      N B mate oppositeDecoder b :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toSelfFreshWitnessCreditCode

/--
Live-route credit target where the new-middle branch is an existing
incremental target plus an edge from the current strict-middle source.
-/
def ActiveStrictMiddleCreditSelfTargetSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (b : Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
      N B mate oppositeDecoder)
    (ActiveStrictMiddleNewSelfTargetCreditCode N B b)

/--
Live-route credit target where the new-middle branch is an existing
incremental target whose canonical strict-middle source is the current source.
-/
def ActiveStrictMiddleCreditSelfCanonicalTargetSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (b : Nat) : Type :=
  Sum (ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode
      N B mate oppositeDecoder)
    (ActiveStrictMiddleNewSelfCanonicalTargetCreditCode N B b)

/-- Forget proof data and keep the target value of a self-canonical-target sum. -/
def ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfCanonicalTargetSumCode
      N B mate oppositeDecoder b) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.target.val

/-- Self-canonical-target sums supply self-target sums. -/
def ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.toSelfTargetSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfCanonicalTargetSumCode
      N B mate oppositeDecoder b) :
    ActiveStrictMiddleCreditSelfTargetSumCode
      N B mate oppositeDecoder b :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toSelfTargetCreditCode

/--
Live-route credit target using the original reserve non-image fact and a
canonical-source new-middle target.
-/
def ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) (b : Nat) : Type :=
  Sum (ActiveStrictMiddleReserveWitnessCreditCode N 7 B mate)
    (ActiveStrictMiddleNewSelfCanonicalTargetCreditCode N B b)

/-- Forget proof data and keep the target value of a direct self-canonical sum. -/
def ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
      N B mate b) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.target.val

/-- Direct self-canonical sums are ordinary active credit codes. -/
def ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.toCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
      N B mate b) :
    ActiveStrictMiddleCreditCode N 7 B mate :=
  match code with
  | Sum.inl reserve =>
      ⟨reserve.neighbor.value,
        Or.inl (And.intro
          (squarefreeNeighborInCandidate_of_witnessCode reserve.neighbor)
          reserve.notImage)⟩
  | Sum.inr newMiddle =>
      ⟨newMiddle.target.val, Or.inr newMiddle.target.property⟩

/-- Transfer reserve witness credits across equal opposite-source mates. -/
def ActiveStrictMiddleReserveWitnessCreditCode.transferMate
    {N : Nat} {B : Nat -> Prop} {mateOld mateNew : Nat -> Nat}
    (hMate :
      forall b : Nat, OppositeOutsidePart 7 B b ->
        mateOld b = mateNew b)
    (code : ActiveStrictMiddleReserveWitnessCreditCode N 7 B mateOld) :
    ActiveStrictMiddleReserveWitnessCreditCode N 7 B mateNew where
  neighbor := code.neighbor
  notImage := by
    intro hImage
    rcases hImage with ⟨b, hbOpp, hmateNew⟩
    exact code.notImage
      ⟨b, hbOpp, by
        rw [hMate b hbOpp, hmateNew]⟩

/-- Transfer direct sum codes across equal opposite-source mates. -/
def ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.transferMate
    {N : Nat} {B : Nat -> Prop} {mateOld mateNew : Nat -> Nat} {b : Nat}
    (hMate :
      forall c : Nat, OppositeOutsidePart 7 B c ->
        mateOld c = mateNew c)
    (code :
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
        N B mateOld b) :
    ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
      N B mateNew b :=
  match code with
  | Sum.inl reserve =>
      Sum.inl (reserve.transferMate hMate)
  | Sum.inr newMiddle =>
      Sum.inr newMiddle

/-- Forget proof data and keep the target value of a self-target sum. -/
def ActiveStrictMiddleCreditSelfTargetSumCode.value
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfTargetSumCode
      N B mate oppositeDecoder b) : Nat :=
  match code with
  | Sum.inl reserve => reserve.neighbor.value
  | Sum.inr newMiddle => newMiddle.target.val

/-- Self-target sums supply self-incremental sums. -/
def ActiveStrictMiddleCreditSelfTargetSumCode.toSelfIncrementalWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder : Nat -> Nat} {b : Nat}
    (code : ActiveStrictMiddleCreditSelfTargetSumCode
      N B mate oppositeDecoder b) :
    ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
      N B mate oppositeDecoder b :=
  match code with
  | Sum.inl reserve =>
      Sum.inl reserve
  | Sum.inr newMiddle =>
      Sum.inr newMiddle.toSelfIncrementalWitnessCreditCode

/-- Credit code carrying a decoder proof back to its strict-middle source. -/
def DecodedActiveStrictMiddleCreditCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (decoder : Nat -> Nat) (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditCode N r B mate //
    decoder code.value = b }

/-- Forget the decoder-hit proof and keep the target credit code. -/
def DecodedActiveStrictMiddleCreditCode.toCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {decoder : Nat -> Nat} {b : Nat}
    (code : DecodedActiveStrictMiddleCreditCode N r B mate decoder b) :
    ActiveStrictMiddleCreditCode N r B mate :=
  code.val

/-- Extract the decoder-hit proof carried by a decoded credit code. -/
theorem decodedActiveStrictMiddleCreditCode_leftInverse
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {decoder : Nat -> Nat} {b : Nat}
    (code : DecodedActiveStrictMiddleCreditCode N r B mate decoder b) :
    decoder code.toCode.value = b :=
  code.property

/--
Reserve/new-middle credit code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (decoder : Nat -> Nat) (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSumCode N r B mate //
    decoder code.value = b }

/-- Forget the reserve/new-middle branch and keep the previous decoded code. -/
def DecodedActiveStrictMiddleCreditSumCode.toDecodedCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {decoder : Nat -> Nat} {b : Nat}
    (code : DecodedActiveStrictMiddleCreditSumCode N r B mate decoder b) :
    DecodedActiveStrictMiddleCreditCode N r B mate decoder b :=
  ⟨ActiveStrictMiddleCreditSumCode.toCode code.val, by
    simpa [ActiveStrictMiddleCreditCode.value, ActiveStrictMiddleCreditSumCode.toCode] using
      code.property⟩

/--
Decoded reserve/new-middle witness code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (decoder : Nat -> Nat) (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditWitnessSumCode N r B mate //
    decoder code.value = b }

/-- Forget the explicit neighbor witness and keep the previous decoded sum code. -/
def DecodedActiveStrictMiddleCreditWitnessSumCode.toDecodedSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {decoder : Nat -> Nat} {b : Nat}
    (code : DecodedActiveStrictMiddleCreditWitnessSumCode N r B mate decoder b) :
    DecodedActiveStrictMiddleCreditSumCode N r B mate decoder b := by
  refine ⟨ActiveStrictMiddleCreditWitnessSumCode.toSumCode code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
    | inl reserve =>
        simpa [ActiveStrictMiddleCreditWitnessSumCode.value,
          ActiveStrictMiddleCreditWitnessSumCode.toSumCode,
          ActiveStrictMiddleCreditSumCode.value,
          ActiveStrictMiddleReserveWitnessCreditCode.toReserveCode] using hdecode
    | inr newMiddle =>
        simpa [ActiveStrictMiddleCreditWitnessSumCode.value,
          ActiveStrictMiddleCreditWitnessSumCode.toSumCode,
          ActiveStrictMiddleCreditSumCode.value,
          ActiveStrictMiddleNewWitnessCreditCode.toNewCode] using hdecode

/--
Decoded anti-image witness sum code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditAntiImageWitnessSumCode
      N r B mate oppositeDecoder //
    creditDecoder code.value = b }

/-- Forget decoder-side anti-image data and keep the previous decoded witness sum. -/
def DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode.toDecodedWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (hLeft : forall b : Nat, OppositeOutsidePart r B b ->
      oppositeDecoder (mate b) = b)
    (code :
      DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode
        N r B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditWitnessSumCode N r B mate creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditAntiImageWitnessSumCode.toWitnessSumCode hLeft
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditAntiImageWitnessSumCode.value,
        ActiveStrictMiddleCreditAntiImageWitnessSumCode.toWitnessSumCode,
        ActiveStrictMiddleCreditWitnessSumCode.value,
        ActiveStrictMiddleReserveAntiImageWitnessCreditCode.toReserveWitnessCode] using
        hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditAntiImageWitnessSumCode.value,
        ActiveStrictMiddleCreditAntiImageWitnessSumCode.toWitnessSumCode,
        ActiveStrictMiddleCreditWitnessSumCode.value] using hdecode

/--
Decoded source-anti-neighbor witness sum code carrying a decoder proof back to
its strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
      N r B mate oppositeDecoder //
    creditDecoder code.value = b }

/--
Forget source anti-neighbor data and keep the previous decoded anti-image sum.
-/
def DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toDecodedAntiImageWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
        N r B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode
      N r B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toAntiImageWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.value,
        ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toAntiImageWitnessSumCode,
        ActiveStrictMiddleCreditAntiImageWitnessSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.value,
        ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toAntiImageWitnessSumCode,
        ActiveStrictMiddleCreditAntiImageWitnessSumCode.value,
        ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode.toNewWitnessCreditCode] using
        hdecode

/--
Decoded source anti-opposite witness sum code carrying a decoder proof back to
its strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
      N r B mate oppositeDecoder //
    creditDecoder code.value = b }

/-- Source anti-opposite decoded sums supply source anti-neighbor decoded sums. -/
def DecodedActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.toDecodedSourceAntiNeighborWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
        N r B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
      N r B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.toSourceAntiNeighborWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.value,
        ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.toSourceAntiNeighborWitnessSumCode,
        ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.value,
        ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.toSourceAntiNeighborWitnessSumCode,
        ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.value,
        ActiveStrictMiddleNewSourceAntiOppositeWitnessCreditCode.toSourceAntiNeighborWitnessCreditCode] using
        hdecode

/--
Decoded carrier witness sum code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditCarrierWitnessSumCode
    (N r : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditCarrierWitnessSumCode
      N r B mate oppositeDecoder //
    creditDecoder code.value = b }

/-- Carrier decoded sums supply source anti-opposite decoded sums. -/
def DecodedActiveStrictMiddleCreditCarrierWitnessSumCode.toDecodedSourceAntiOppositeWitnessSumCode
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditCarrierWitnessSumCode
        N r B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
      N r B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditCarrierWitnessSumCode.toSourceAntiOppositeWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditCarrierWitnessSumCode.value,
        ActiveStrictMiddleCreditCarrierWitnessSumCode.toSourceAntiOppositeWitnessSumCode,
        ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.value,
        ActiveStrictMiddleReserveAntiCarrierWitnessCreditCode.toAntiImageWitnessCreditCode] using
        hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditCarrierWitnessSumCode.value,
        ActiveStrictMiddleCreditCarrierWitnessSumCode.toSourceAntiOppositeWitnessSumCode,
        ActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.value,
        ActiveStrictMiddleNewSourceAntiCarrierWitnessCreditCode.toSourceAntiOppositeWitnessCreditCode] using
        hdecode

/--
Decoded anti-`18 mod 25` witness sum code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditAntiEighteenWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditAntiEighteenWitnessSumCode
      N B mate oppositeDecoder //
    creditDecoder code.value = b }

/-- Anti-`18 mod 25` decoded sums supply carrier decoded sums. -/
def DecodedActiveStrictMiddleCreditAntiEighteenWitnessSumCode.toDecodedCarrierWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditAntiEighteenWitnessSumCode
        N B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditCarrierWitnessSumCode
      N 7 B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.toCarrierWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.value,
        ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.toCarrierWitnessSumCode,
        ActiveStrictMiddleCreditCarrierWitnessSumCode.value,
        ActiveStrictMiddleReserveAntiEighteenWitnessCreditCode.toCarrierWitnessCreditCode] using
        hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.value,
        ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.toCarrierWitnessSumCode,
        ActiveStrictMiddleCreditCarrierWitnessSumCode.value,
        ActiveStrictMiddleNewSourceAntiEighteenWitnessCreditCode.toCarrierWitnessCreditCode] using
        hdecode

/--
Decoded self-source anti-`18 mod 25` witness sum code carrying a decoder proof
back to its strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
      N B mate oppositeDecoder b //
    creditDecoder code.value = b }

/-- Self-source decoded sums supply anti-`18 mod 25` decoded sums. -/
def DecodedActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.toDecodedAntiEighteenWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (hb : StrictMiddlePart 7 B b)
    (code :
      DecodedActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
        N B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditAntiEighteenWitnessSumCode
      N B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.toAntiEighteenWitnessSumCode
    hb code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.value,
        ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.toAntiEighteenWitnessSumCode,
        ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.value,
        ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.toAntiEighteenWitnessSumCode,
        ActiveStrictMiddleCreditAntiEighteenWitnessSumCode.value,
        ActiveStrictMiddleNewSelfAntiEighteenWitnessCreditCode.toSourceAntiEighteenWitnessCreditCode] using
        hdecode

/--
Decoded self-fresh witness sum code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSelfFreshWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSelfFreshWitnessSumCode
      N B mate oppositeDecoder b //
    creditDecoder code.value = b }

/-- Self-fresh decoded sums supply self-source anti-`18 mod 25` decoded sums. -/
def DecodedActiveStrictMiddleCreditSelfFreshWitnessSumCode.toDecodedSelfAntiEighteenWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditSelfFreshWitnessSumCode
        N B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
      N B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSelfFreshWitnessSumCode.toSelfAntiEighteenWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSelfFreshWitnessSumCode.value,
        ActiveStrictMiddleCreditSelfFreshWitnessSumCode.toSelfAntiEighteenWitnessSumCode,
        ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSelfFreshWitnessSumCode.value,
        ActiveStrictMiddleCreditSelfFreshWitnessSumCode.toSelfAntiEighteenWitnessSumCode,
        ActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.value,
        ActiveStrictMiddleNewSelfFreshWitnessCreditCode.toSelfAntiEighteenWitnessCreditCode] using
        hdecode

/--
Decoded self-incremental witness sum code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
      N B mate oppositeDecoder b //
    creditDecoder code.value = b }

/-- Self-incremental decoded sums supply self-fresh decoded sums. -/
def DecodedActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.toDecodedSelfFreshWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
        N B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditSelfFreshWitnessSumCode
      N B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.toSelfFreshWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.value,
        ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.toSelfFreshWitnessSumCode,
        ActiveStrictMiddleCreditSelfFreshWitnessSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.value,
        ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.toSelfFreshWitnessSumCode,
        ActiveStrictMiddleCreditSelfFreshWitnessSumCode.value,
        ActiveStrictMiddleNewSelfIncrementalWitnessCreditCode.toSelfFreshWitnessCreditCode] using
        hdecode

/--
Decoded self-target sum code carrying a decoder proof back to its strict-middle
source.
-/
def DecodedActiveStrictMiddleCreditSelfTargetSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSelfTargetSumCode
      N B mate oppositeDecoder b //
    creditDecoder code.value = b }

/--
Decoded self-canonical-target sum code carrying a decoder proof back to its
strict-middle source.
-/
def DecodedActiveStrictMiddleCreditSelfCanonicalTargetSumCode
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat)
    (oppositeDecoder : Nat -> Nat) (creditDecoder : Nat -> Nat)
    (b : Nat) : Type :=
  { code : ActiveStrictMiddleCreditSelfCanonicalTargetSumCode
      N B mate oppositeDecoder b //
    creditDecoder code.value = b }

/-- Self-canonical-target decoded sums supply self-target decoded sums. -/
def DecodedActiveStrictMiddleCreditSelfCanonicalTargetSumCode.toDecodedSelfTargetSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditSelfCanonicalTargetSumCode
        N B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditSelfTargetSumCode
      N B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.toSelfTargetSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.value,
        ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.toSelfTargetSumCode,
        ActiveStrictMiddleCreditSelfTargetSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.value,
        ActiveStrictMiddleCreditSelfCanonicalTargetSumCode.toSelfTargetSumCode,
        ActiveStrictMiddleCreditSelfTargetSumCode.value,
        ActiveStrictMiddleNewSelfCanonicalTargetCreditCode.toSelfTargetCreditCode] using
        hdecode

/-- Self-target decoded sums supply self-incremental decoded sums. -/
def DecodedActiveStrictMiddleCreditSelfTargetSumCode.toDecodedSelfIncrementalWitnessSumCode
    {N : Nat} {B : Nat -> Prop} {mate : Nat -> Nat}
    {oppositeDecoder creditDecoder : Nat -> Nat} {b : Nat}
    (code :
      DecodedActiveStrictMiddleCreditSelfTargetSumCode
        N B mate oppositeDecoder creditDecoder b) :
    DecodedActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
      N B mate oppositeDecoder creditDecoder b := by
  refine ⟨ActiveStrictMiddleCreditSelfTargetSumCode.toSelfIncrementalWitnessSumCode
    code.val, ?_⟩
  rcases code with ⟨codeVal, hdecode⟩
  cases codeVal with
  | inl reserve =>
      simpa [ActiveStrictMiddleCreditSelfTargetSumCode.value,
        ActiveStrictMiddleCreditSelfTargetSumCode.toSelfIncrementalWitnessSumCode,
        ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.value] using hdecode
  | inr newMiddle =>
      simpa [ActiveStrictMiddleCreditSelfTargetSumCode.value,
        ActiveStrictMiddleCreditSelfTargetSumCode.toSelfIncrementalWitnessSumCode,
        ActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.value,
        ActiveStrictMiddleNewSelfTargetCreditCode.toSelfIncrementalWitnessCreditCode] using
        hdecode

/--
Active strict-middle matching with target membership and injectivity carried by
source-indexed decoded credit codes.
-/
def ActiveStrictMiddleDecodedCreditMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) : Prop :=
  Exists fun decoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditCode N r B mate decoder b) =>
    True

/-- Decoded strict-middle credit codes supply the explicit credit matching. -/
theorem activeStrictMiddleCreditMatching_of_decoded
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate : Nat -> Nat}
    (h : ActiveStrictMiddleDecodedCreditMatching N r B decMid mate) :
    ActiveStrictMiddleCreditMatching N r B decMid mate := by
  rcases h with ⟨decoder, credit, _⟩
  let creditValue : Nat -> Nat := fun b =>
    haveI : Decidable (StrictMiddlePart r B b) := decMid b
    if hb : StrictMiddlePart r B b then
      (DecodedActiveStrictMiddleCreditCode.toCode (credit b hb)).value
    else
      0
  refine ⟨creditValue, ?_, ?_⟩
  · intro b hb
    simpa [creditValue, hb] using
      activeStrictMiddleCreditCode_target
        (DecodedActiveStrictMiddleCreditCode.toCode (credit b hb))
  · intro b1 b2 hb1 hb2 hcredit
    have hleft :
        decoder (creditValue b1) = b1 := by
      simpa [creditValue, hb1] using
        decodedActiveStrictMiddleCreditCode_leftInverse (credit b1 hb1)
    have hright :
        decoder (creditValue b2) = b2 := by
      simpa [creditValue, hb2] using
        decodedActiveStrictMiddleCreditCode_leftInverse (credit b2 hb2)
    calc
      b1 = decoder (creditValue b1) := hleft.symm
      _ = decoder (creditValue b2) := by rw [hcredit]
      _ = b2 := hright

/--
Active strict-middle decoded matching with the reserve/new-middle branch carried
by every source-indexed credit code.
-/
def ActiveStrictMiddleDecodedCreditSumMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) : Prop :=
  Exists fun decoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditSumCode N r B mate decoder b) =>
    True

/-- Decoded reserve/new-middle credit codes supply decoded credit matching. -/
theorem activeStrictMiddleDecodedCreditMatching_of_sum
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate : Nat -> Nat}
    (h : ActiveStrictMiddleDecodedCreditSumMatching N r B decMid mate) :
    ActiveStrictMiddleDecodedCreditMatching N r B decMid mate := by
  rcases h with ⟨decoder, credit, _⟩
  refine ⟨decoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSumCode.toDecodedCode (credit b hb)

/--
Active strict-middle decoded matching where every credit code carries both the
reserve/new-middle branch and the neighbor source witness.
-/
def ActiveStrictMiddleDecodedCreditWitnessSumMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) : Prop :=
  Exists fun decoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditWitnessSumCode N r B mate decoder b) =>
    True

/-- Decoded witness sum codes supply decoded reserve/new-middle sum matching. -/
theorem activeStrictMiddleDecodedCreditSumMatching_of_witness
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate : Nat -> Nat}
    (h : ActiveStrictMiddleDecodedCreditWitnessSumMatching N r B decMid mate) :
    ActiveStrictMiddleDecodedCreditSumMatching N r B decMid mate := by
  rcases h with ⟨decoder, credit, _⟩
  refine ⟨decoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditWitnessSumCode.toDecodedSumCode (credit b hb)

/--
Active strict-middle decoded matching where reserve non-image data is certified
through an opposite decoder.
-/
def ActiveStrictMiddleDecodedCreditAntiImageWitnessSumMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode
          N r B mate oppositeDecoder creditDecoder b) =>
    True

/-- Decoder-side anti-image matching supplies the previous witness-sum matching. -/
theorem activeStrictMiddleDecodedCreditWitnessSumMatching_of_antiImage
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate oppositeDecoder : Nat -> Nat}
    (hLeft : forall b : Nat, OppositeOutsidePart r B b ->
      oppositeDecoder (mate b) = b)
    (h :
      ActiveStrictMiddleDecodedCreditAntiImageWitnessSumMatching
        N r B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditWitnessSumMatching N r B decMid mate := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode.toDecodedWitnessSumCode
    hLeft (credit b hb)

/--
Active strict-middle decoded matching where both negative credit-side facts are
certified by decoders.
-/
def ActiveStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode
          N r B mate oppositeDecoder creditDecoder b) =>
    True

/-- Source-anti-neighbor matching supplies the previous anti-image matching. -/
theorem activeStrictMiddleDecodedCreditAntiImageWitnessSumMatching_of_sourceAntiNeighbor
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching
        N r B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditAntiImageWitnessSumMatching
      N r B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toDecodedAntiImageWitnessSumCode
    (credit b hb)

/--
Active strict-middle decoded matching where the new-middle negative fact is
certified by source anti-opposite data.
-/
def ActiveStrictMiddleDecodedCreditSourceAntiOppositeWitnessSumMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode
          N r B mate oppositeDecoder creditDecoder b) =>
    True

/-- Source anti-opposite matching supplies source anti-neighbor matching. -/
theorem activeStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching_of_sourceAntiOpposite
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSourceAntiOppositeWitnessSumMatching
        N r B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching
      N r B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSourceAntiOppositeWitnessSumCode.toDecodedSourceAntiNeighborWitnessSumCode
    (credit b hb)

/--
Active strict-middle decoded matching whose credit-side negative facts are
carrier-only certificates.
-/
def ActiveStrictMiddleDecodedCreditCarrierWitnessSumMatching
    (N r : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart r B b ->
        DecodedActiveStrictMiddleCreditCarrierWitnessSumCode
          N r B mate oppositeDecoder creditDecoder b) =>
    True

/-- Carrier-level matching supplies source anti-opposite matching. -/
theorem activeStrictMiddleDecodedCreditSourceAntiOppositeWitnessSumMatching_of_carrier
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditCarrierWitnessSumMatching
        N r B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSourceAntiOppositeWitnessSumMatching
      N r B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditCarrierWitnessSumCode.toDecodedSourceAntiOppositeWitnessSumCode
    (credit b hb)

/--
Live-route active strict-middle decoded matching whose credit-side negative
facts are the concrete statement "not `18 mod 25`".
-/
def ActiveStrictMiddleDecodedCreditAntiEighteenWitnessSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        DecodedActiveStrictMiddleCreditAntiEighteenWitnessSumCode
          N B mate oppositeDecoder creditDecoder b) =>
    True

/-- Concrete anti-`18 mod 25` matching supplies carrier-level matching. -/
theorem activeStrictMiddleDecodedCreditCarrierWitnessSumMatching_of_antiEighteen
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditAntiEighteenWitnessSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditCarrierWitnessSumMatching
      N 7 B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditAntiEighteenWitnessSumCode.toDecodedCarrierWitnessSumCode
    (credit b hb)

/--
Live-route active strict-middle decoded matching where any new-middle branch is
forced to use the current strict-middle source.
-/
def ActiveStrictMiddleDecodedCreditSelfAntiEighteenWitnessSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        DecodedActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode
          N B mate oppositeDecoder creditDecoder b) =>
    True

/-- Self-source matching supplies the previous anti-`18 mod 25` matching. -/
theorem activeStrictMiddleDecodedCreditAntiEighteenWitnessSumMatching_of_self
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSelfAntiEighteenWitnessSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditAntiEighteenWitnessSumMatching
      N B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSelfAntiEighteenWitnessSumCode.toDecodedAntiEighteenWitnessSumCode
    hb (credit b hb)

/--
Live-route active strict-middle decoded matching where any new-middle branch is
a fresh neighbor of the current strict-middle source.
-/
def ActiveStrictMiddleDecodedCreditSelfFreshWitnessSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        DecodedActiveStrictMiddleCreditSelfFreshWitnessSumCode
          N B mate oppositeDecoder creditDecoder b) =>
    True

/-- Self-fresh matching supplies the previous self-source anti-`18 mod 25` matching. -/
theorem activeStrictMiddleDecodedCreditSelfAntiEighteenWitnessSumMatching_of_selfFresh
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSelfFreshWitnessSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSelfAntiEighteenWitnessSumMatching
      N B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSelfFreshWitnessSumCode.toDecodedSelfAntiEighteenWitnessSumCode
    (credit b hb)

/--
Live-route active strict-middle decoded matching where any new-middle branch
is certified by the existing incremental-neighbor predicate.
-/
def ActiveStrictMiddleDecodedCreditSelfIncrementalWitnessSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        DecodedActiveStrictMiddleCreditSelfIncrementalWitnessSumCode
          N B mate oppositeDecoder creditDecoder b) =>
    True

/-- Self-incremental matching supplies the previous self-fresh matching. -/
theorem activeStrictMiddleDecodedCreditSelfFreshWitnessSumMatching_of_selfIncremental
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSelfIncrementalWitnessSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSelfFreshWitnessSumMatching
      N B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSelfIncrementalWitnessSumCode.toDecodedSelfFreshWitnessSumCode
    (credit b hb)

/--
Live-route active strict-middle decoded matching where any new-middle branch is
an existing incremental target plus a current-source edge.
-/
def ActiveStrictMiddleDecodedCreditSelfTargetSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        DecodedActiveStrictMiddleCreditSelfTargetSumCode
          N B mate oppositeDecoder creditDecoder b) =>
    True

/--
Live-route active strict-middle decoded matching where any new-middle branch is
an existing incremental target whose canonical strict-middle source is the
current source.
-/
def ActiveStrictMiddleDecodedCreditSelfCanonicalTargetSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun creditDecoder : Nat -> Nat =>
  Exists fun _credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        DecodedActiveStrictMiddleCreditSelfCanonicalTargetSumCode
          N B mate oppositeDecoder creditDecoder b) =>
    True

/--
Live-route self-canonical-target matching with direct target-value injectivity;
Lean constructs the decoder used by the previous decoded matching surface.
-/
def ActiveStrictMiddleCreditSelfCanonicalTargetInjectiveSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) (oppositeDecoder : Nat -> Nat) : Prop :=
  Exists fun credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        ActiveStrictMiddleCreditSelfCanonicalTargetSumCode
          N B mate oppositeDecoder b) =>
    forall b1 b2 : Nat,
      forall hb1 : StrictMiddlePart 7 B b1,
      forall hb2 : StrictMiddlePart 7 B b2,
        (credit b1 hb1).value = (credit b2 hb2).value ->
          b1 = b2

/-- A directly injective self-canonical matching supplies a decoded matching. -/
theorem activeStrictMiddleDecodedCreditSelfCanonicalTargetSumMatching_of_injective
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleCreditSelfCanonicalTargetInjectiveSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSelfCanonicalTargetSumMatching
      N B decMid mate oppositeDecoder := by
  classical
  rcases h with ⟨credit, hinj⟩
  let creditDecoder : Nat -> Nat := fun a =>
    if hsource :
        Exists fun b : Nat =>
          Exists fun hb : StrictMiddlePart 7 B b =>
            (credit b hb).value = a then
      Classical.choose hsource
    else
      0
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  refine ⟨credit b hb, ?_⟩
  have hsource :
      Exists fun b' : Nat =>
        Exists fun hb' : StrictMiddlePart 7 B b' =>
          (credit b' hb').value = (credit b hb).value := by
    exact ⟨b, hb, rfl⟩
  have hchoose :
      Exists fun hb' : StrictMiddlePart 7 B (Classical.choose hsource) =>
        (credit (Classical.choose hsource) hb').value =
          (credit b hb).value :=
    Classical.choose_spec hsource
  have hbchoose : StrictMiddlePart 7 B (Classical.choose hsource) :=
    Classical.choose hchoose
  have hvalue :
      (credit (Classical.choose hsource) hbchoose).value =
        (credit b hb).value :=
    Classical.choose_spec hchoose
  rw [show creditDecoder (credit b hb).value = Classical.choose hsource by
    simp [creditDecoder, hsource]]
  exact hinj (Classical.choose hsource) b hbchoose hb hvalue

/--
Live-route direct matching with original reserve non-image data and direct
target-value injectivity.
-/
def ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveSumMatching
    (N : Nat) (B : Nat -> Prop)
    (_decMid : DecidablePred (StrictMiddlePart 7 B))
    (mate : Nat -> Nat) : Prop :=
  Exists fun credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
          N B mate b) =>
    forall b1 b2 : Nat,
      forall hb1 : StrictMiddlePart 7 B b1,
      forall hb2 : StrictMiddlePart 7 B b2,
        (credit b1 hb1).value = (credit b2 hb2).value ->
          b1 = b2

/--
`decMid`-free live-route direct matching.  The credit object is indexed only by
the strict-middle proof itself; decidability is needed later only to turn it
into the total `Nat -> Nat` matching consumed by the capacity layer.
-/
def ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching
    (N : Nat) (B : Nat -> Prop) (mate : Nat -> Nat) : Prop :=
  Exists fun credit :
      (forall b : Nat, StrictMiddlePart 7 B b ->
        ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
          N B mate b) =>
    forall b1 b2 : Nat,
      forall hb1 : StrictMiddlePart 7 B b1,
      forall hb2 : StrictMiddlePart 7 B b2,
        (credit b1 hb1).value = (credit b2 hb2).value ->
          b1 = b2

/-- Direct self-canonical injective matching supplies active credit matching. -/
theorem activeStrictMiddleCreditMatching_of_selfCanonicalTargetDirectInjective
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate : Nat -> Nat}
    (h :
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveSumMatching
        N B decMid mate) :
    ActiveStrictMiddleCreditMatching N 7 B decMid mate := by
  rcases h with ⟨credit, hinj⟩
  let creditValue : Nat -> Nat := fun b =>
    haveI : Decidable (StrictMiddlePart 7 B b) := decMid b
    if hb : StrictMiddlePart 7 B b then
      (credit b hb).value
    else
      0
  refine ⟨creditValue, ?_, ?_⟩
  · intro b hb
    cases hcredit : credit b hb with
    | inl reserve =>
        have htarget :
            ActiveStrictMiddleCreditTarget N 7 B mate reserve.neighbor.value :=
          Or.inl (And.intro
            (squarefreeNeighborInCandidate_of_witnessCode reserve.neighbor)
            reserve.notImage)
        simpa [creditValue, hb, hcredit,
          ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.value] using
          htarget
    | inr newMiddle =>
        have htarget :
            ActiveStrictMiddleCreditTarget N 7 B mate newMiddle.target.val :=
          Or.inr newMiddle.target.property
        simpa [creditValue, hb, hcredit,
          ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.value] using
          htarget
  · intro b1 b2 hb1 hb2 hcredit
    exact hinj b1 b2 hb1 hb2 (by
      simpa [creditValue, hb1, hb2] using hcredit)

/-- A `decMid`-free direct matching supplies active credit matching. -/
theorem activeStrictMiddleCreditMatching_of_selfCanonicalTargetDirectInjectiveMatching
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate : Nat -> Nat}
    (h :
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching
        N B mate) :
    ActiveStrictMiddleCreditMatching N 7 B decMid mate := by
  rcases h with ⟨credit, hinj⟩
  exact activeStrictMiddleCreditMatching_of_selfCanonicalTargetDirectInjective
    (N := N) (B := B) (decMid := decMid) (mate := mate)
    ⟨credit, hinj⟩

/-- Transfer uniform direct matching across mates equal on opposite sources. -/
theorem activeStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching_congr_mate
    {N : Nat} {B : Nat -> Prop} {mateOld mateNew : Nat -> Nat}
    (hMate :
      forall b : Nat, OppositeOutsidePart 7 B b ->
        mateOld b = mateNew b)
    (h :
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching
        N B mateOld) :
    ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching
      N B mateNew := by
  rcases h with ⟨credit, hinj⟩
  let creditNew :
      forall b : Nat, StrictMiddlePart 7 B b ->
        ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode
          N B mateNew b :=
    fun b hb =>
      (credit b hb).transferMate hMate
  refine ⟨creditNew, ?_⟩
  intro b1 b2 hb1 hb2 hvalue
  have hvalueOld :
      (credit b1 hb1).value = (credit b2 hb2).value := by
    cases h1 : credit b1 hb1 <;> cases h2 : credit b2 hb2 <;>
      simpa [creditNew, h1, h2,
        ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.transferMate,
        ActiveStrictMiddleReserveWitnessCreditCode.transferMate,
        ActiveStrictMiddleCreditSelfCanonicalTargetDirectSumCode.value] using
        hvalue
  exact hinj b1 b2 hb1 hb2 hvalueOld

/-- Self-canonical-target matching supplies the previous self-target matching. -/
theorem activeStrictMiddleDecodedCreditSelfTargetSumMatching_of_selfCanonicalTarget
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSelfCanonicalTargetSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSelfTargetSumMatching
      N B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSelfCanonicalTargetSumCode.toDecodedSelfTargetSumCode
    (credit b hb)

/-- Self-target matching supplies the previous self-incremental matching. -/
theorem activeStrictMiddleDecodedCreditSelfIncrementalWitnessSumMatching_of_selfTarget
    {N : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart 7 B)}
    {mate oppositeDecoder : Nat -> Nat}
    (h :
      ActiveStrictMiddleDecodedCreditSelfTargetSumMatching
        N B decMid mate oppositeDecoder) :
    ActiveStrictMiddleDecodedCreditSelfIncrementalWitnessSumMatching
      N B decMid mate oppositeDecoder := by
  rcases h with ⟨creditDecoder, credit, _⟩
  refine ⟨creditDecoder, ?_, trivial⟩
  intro b hb
  exact DecodedActiveStrictMiddleCreditSelfTargetSumCode.toDecodedSelfIncrementalWitnessSumCode
    (credit b hb)

/-- Count-level active strict-middle credit capacity for one fixed opposite mate. -/
def ActiveStrictMiddleCreditCapacity
    (N r : Nat) (B : Nat -> Prop)
    (decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat)
    (decTarget : DecidablePred (ActiveStrictMiddleCreditTarget N r B mate)) : Prop :=
  @familySize N (StrictMiddlePart r B) decMid <=
    @familySize N (ActiveStrictMiddleCreditTarget N r B mate) decTarget

/-- Active strict-middle credit-matching certificate relative to an opposite matching. -/
def ActiveStrictMiddleCreditMatchingCertificateForResidue (r K : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (_decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    (Exists fun b : Nat => StrictMiddlePart r B b) ->
    (forall b : Nat, OppositeOutsidePart r B b ->
      OppositeNearbyNeighbor N r K B (mate b)) ->
    (forall b1 b2 : Nat,
      OppositeOutsidePart r B b1 ->
      OppositeOutsidePart r B b2 ->
      mate b1 = mate b2 ->
      b1 = b2) ->
    ActiveStrictMiddleCreditMatching N r B decMid mate

/-- Active strict-middle credit matching relative to the global opposite-block mate. -/
def GlobalActiveStrictMiddleCreditMatchingCertificateForResidue (r K : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decMid : DecidablePred (StrictMiddlePart r B))
    (mate : Nat -> Nat),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    (Exists fun b : Nat => StrictMiddlePart r B b) ->
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeNearbyNeighbor N r K b (mate b)) ->
    (forall b1 b2 : Nat,
      InBox N b1 ->
      OppositeCandidateCarrier r b1 ->
      InBox N b2 ->
      OppositeCandidateCarrier r b2 ->
      mate b1 = mate b2 ->
      b1 = b2) ->
    ActiveStrictMiddleCreditMatching N r B decMid mate

/--
Single global cut combining the finite-offset opposite matching and the active
strict-middle credit matching relative to that finite-offset mate.
-/
def GlobalFiniteOffsetSplitCreditCertificateForResidue (r K : Nat) : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeFiniteOffsetNeighbor N r K b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 -> OppositeCandidateCarrier r b1 ->
      InBox N b2 -> OppositeCandidateCarrier r b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart r B)),
      BoundedOutsideSet N r B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart r B b) ->
      ActiveStrictMiddleCreditMatching N r B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)))

/--
Single global cut with a finite-offset opposite matching and only count-level
active strict-middle credit capacity relative to that finite-offset mate.
-/
def GlobalFiniteOffsetSplitCapacityCertificateForResidue (r K : Nat) : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeFiniteOffsetNeighbor N r K b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 -> OppositeCandidateCarrier r b1 ->
      InBox N b2 -> OppositeCandidateCarrier r b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart r B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N r B
            (fun b => OppositeFiniteOffsetValue b (offset b)))),
      BoundedOutsideSet N r B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart r B b) ->
      ActiveStrictMiddleCreditCapacity N r B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)) decTarget)

/--
Finite-offset middle-compression certificate with the value-band inequalities
removed from the axiom surface.  For the seven fixed offsets, Lean derives the
`86` band directly from `code <= 6`.
-/
def GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue (r : Nat) : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeFiniteOffsetSquarefreeNeighbor N r b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 ->
      OppositeCandidateCarrier r b1 ->
      InBox N b2 ->
      OppositeCandidateCarrier r b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart r B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N r B
            (fun b => OppositeFiniteOffsetValue b (offset b)))),
      BoundedOutsideSet N r B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart r B b) ->
      ActiveStrictMiddleCreditCapacity N r B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)) decTarget)

/--
Live-route finite-offset middle-compression core specialized to the
`7 mod 25` endpoint.  The target candidate-residue condition is omitted because
it is derived from the opposite residue and boxed finite-offset value.
-/
def GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier 7 b ->
      GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor N b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 ->
      OppositeCandidateCarrier 7 b1 ->
      InBox N b2 ->
      OppositeCandidateCarrier 7 b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)) decTarget)

/--
Live finite-offset middle-compression core with the concrete opposite residue
`18 mod 25` on the source side.  This removes the project-level
`OppositeCandidateCarrier` disjunction from the open cut.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor N b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 ->
      CandidateCarrier 18 b1 ->
      InBox N b2 ->
      CandidateCarrier 18 b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)) decTarget)

/--
Concrete `18 mod 25` finite-offset middle-compression certificate with source
box/residue inputs removed from the returned pointwise neighbor data.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      GlobalOppositeFiniteOffsetEighteenTargetNeighbor N b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 ->
      CandidateCarrier 18 b1 ->
      InBox N b2 ->
      CandidateCarrier 18 b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)) decTarget)

/-- One-sided inverse certificate for the finite-offset opposite mate image. -/
def GlobalFiniteOffsetEighteenTargetLeftInverse
    (N : Nat) (offset decoder : Nat -> Nat) : Prop :=
  forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
    decoder (OppositeFiniteOffsetValue b (offset b)) = b

/-- One-sided inverse certificate for the typed finite-offset opposite mate image. -/
def GlobalFiniteOffsetEighteenTypedTargetLeftInverse
    (N : Nat) (offset : Nat -> OppositeFiniteOffsetCode)
    (decoder : Nat -> Nat) : Prop :=
  forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
    decoder (OppositeFiniteOffsetCodeValue b (offset b)) = b

/-- One-sided inverse certificate for source-indexed boxed finite-offset codes. -/
def GlobalFiniteOffsetEighteenBoxedTargetLeftInverse
    (N : Nat)
    (offset : forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      BoxedOppositeFiniteOffsetCode N b)
    (decoder : Nat -> Nat) : Prop :=
  forall b : Nat, forall hbBox : InBox N b, forall hb18 : CandidateCarrier 18 b,
    decoder (boxedOppositeFiniteOffsetCodeValue (offset b hbBox hb18)) = b

/-- One-sided inverse certificate for squarefree-boxed finite-offset codes. -/
def GlobalFiniteOffsetEighteenSquarefreeBoxedTargetLeftInverse
    (N : Nat)
    (offset : forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      SquarefreeBoxedOppositeFiniteOffsetCode N b)
    (decoder : Nat -> Nat) : Prop :=
  forall b : Nat, forall hbBox : InBox N b, forall hb18 : CandidateCarrier 18 b,
    decoder (boxedOppositeFiniteOffsetCodeValue
      (SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
        (offset b hbBox hb18))) = b

/-- A target left-inverse certificate implies pairwise finite-offset injectivity. -/
theorem finiteOffsetEighteenTarget_injective_of_leftInverse
    {N : Nat} {offset decoder : Nat -> Nat}
    (hLeft : GlobalFiniteOffsetEighteenTargetLeftInverse N offset decoder) :
    forall b1 b2 : Nat,
      InBox N b1 ->
      CandidateCarrier 18 b1 ->
      InBox N b2 ->
      CandidateCarrier 18 b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2 := by
  intro b1 b2 hb1Box hb1Residue hb2Box hb2Residue hmate
  have hleft1 := hLeft b1 hb1Box hb1Residue
  have hleft2 := hLeft b2 hb2Box hb2Residue
  calc
    b1 = decoder (OppositeFiniteOffsetValue b1 (offset b1)) := by
      exact hleft1.symm
    _ = decoder (OppositeFiniteOffsetValue b2 (offset b2)) := by
      rw [hmate]
    _ = b2 := hleft2

/--
Target-only middle-compression certificate with injectivity supplied by a
one-sided decoder for the finite-offset image.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
  Exists fun decoder : Nat -> Nat =>
    (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      GlobalOppositeFiniteOffsetEighteenTargetNeighbor N b (offset b)) /\
    GlobalFiniteOffsetEighteenTargetLeftInverse N offset decoder /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetValue b (offset b)) decTarget)

/--
Typed-code decoder certificate.  The finite-offset code is no longer a Nat
with a returned `<= 6` proof; it is one of the seven constructors by type.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate : Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
  Exists fun decoder : Nat -> Nat =>
    (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
      GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) /\
    GlobalFiniteOffsetEighteenTypedTargetLeftInverse N offset decoder /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetCodeValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetCodeValue b (offset b)) decTarget)

/--
Boxed-code decoder certificate.  The source-side offset is indexed by the
source box/residue proofs and carries the target-box proof in the code object,
so the pointwise target output only supplies the squarefree edge.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate : Prop :=
  forall N : Nat, Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        BoxedOppositeFiniteOffsetCode N b) =>
  Exists fun decoder : Nat -> Nat =>
    (forall b : Nat, forall hbBox : InBox N b,
      forall hb18 : CandidateCarrier 18 b,
      GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor
        (offset b hbBox hb18)) /\
    GlobalFiniteOffsetEighteenBoxedTargetLeftInverse N offset decoder /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (boxedOppositeFiniteOffsetMate N offset))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (boxedOppositeFiniteOffsetMate N offset) decTarget)

/--
Squarefree-boxed decoder certificate.  The finite-offset code now carries both
target boxedness and the squarefree edge proof; the live surface keeps only the
decoder left-inverse and strict-middle credit capacity as separate clauses.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate : Prop :=
  forall N : Nat, Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b) =>
  Exists fun decoder : Nat -> Nat =>
    GlobalFiniteOffsetEighteenSquarefreeBoxedTargetLeftInverse N offset decoder /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (boxedOppositeFiniteOffsetMate N
              (fun b hbBox hb18 =>
                SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
                  (offset b hbBox hb18))))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (boxedOppositeFiniteOffsetMate N
          (fun b hbBox hb18 =>
            SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
              (offset b hbBox hb18))) decTarget)

/--
Decoded squarefree-boxed certificate.  The decoder left-inverse proof is carried
by each source-indexed finite-offset code, leaving only the decoder, decoded
code family, and strict-middle credit capacity as separate live data.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate : Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decTarget)

/--
Decoded squarefree-boxed certificate with an explicit strict-middle credit
matching.  The live capacity inequality is derived from the matching in Lean.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate : Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))

/--
Decoded squarefree-boxed certificate whose strict-middle credit matching is
itself source-indexed and decoded.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCertificate : Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))

/--
Decoded squarefree-boxed certificate whose strict-middle credit codes explicitly
choose the reserve or new-middle branch.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSumMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))

/--
Decoded squarefree-boxed certificate whose strict-middle credit codes carry both
the reserve/new-middle branch and the candidate-neighbor source witness.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditWitnessSumMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))

/--
Decoded squarefree-boxed certificate whose reserve credits certify non-image by
the opposite finite-offset decoder.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditAntiImageWitnessSumMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose reserve non-image and new-middle
anti-neighbor facts are both certified by decoders.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose new-middle negative fact is reduced
to showing the canonical opposite-neighbor source is not an opposite source.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiOppositeWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSourceAntiOppositeWitnessSumMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose credit-side negative facts are
carrier-only certificates.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCarrierWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditCarrierWitnessSumMatching N 7 B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose credit-side negative facts are
concrete anti-`18 mod 25` certificates.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiEighteenWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditAntiEighteenWitnessSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose new-middle credit branch is forced
to use the current strict-middle source.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfAntiEighteenWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSelfAntiEighteenWitnessSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose new-middle branch uses a fresh
neighbor of the current strict-middle source.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfFreshWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSelfFreshWitnessSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose new-middle branch is expressed as
an incremental strict-middle neighbor with the current source witness.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfIncrementalWitnessSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSelfIncrementalWitnessSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose new-middle branch reuses the
existing incremental target code and only adds the current-source edge.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfTargetSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSelfTargetSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose new-middle branch uses an existing
incremental target and identifies the current source by the canonical
strict-middle source decoder.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleDecodedCreditSelfCanonicalTargetSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose strict-middle credit side supplies
direct target-value injectivity; Lean constructs the credit decoder.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetInjectiveSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditSelfCanonicalTargetInjectiveSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset) decoder)

/--
Decoded squarefree-boxed certificate whose strict-middle credit side is already
an active credit matching code: reserve credits carry original non-image data,
and new-middle credits carry canonical source hits.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetDirectInjectiveSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B)),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveSumMatching N B decMid
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))

/--
Decoded squarefree-boxed certificate whose strict-middle credit side is
independent of the `StrictMiddlePart` decidability instance.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun decoder : Nat -> Nat =>
  Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder) =>
    (forall B : Nat -> Prop,
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching N B
        (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset))

/--
Squarefree-boxed uniform direct certificate.  The open surface supplies
source-indexed squarefree-boxed offsets and pairwise target injectivity; Lean
constructs the decoder and decoded offset wrapper.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun offset :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b) =>
    SquarefreeBoxedOffsetInjective N offset /\
    (forall B : Nat -> Prop,
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching N B
        (boxedOppositeFiniteOffsetMate N
          (fun b hbBox hb18 =>
            SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed
              (offset b hbBox hb18))))

/--
Typed-offset uniform direct certificate.  The open surface chooses one of the
seven offset constructors as a total function; Lean packages target boxedness
and squarefree edge proofs into the source-indexed code objects.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
  Exists fun hMap :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) =>
    (forall b1 b2 : Nat,
      forall _hb1Box : InBox N b1,
      forall _hb1Residue : CandidateCarrier 18 b1,
      forall _hb2Box : InBox N b2,
      forall _hb2Residue : CandidateCarrier 18 b2,
        OppositeFiniteOffsetCodeValue b1 (offset b1) =
          OppositeFiniteOffsetCodeValue b2 (offset b2) ->
        b1 = b2) /\
    (forall B : Nat -> Prop,
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching N B
        (boxedOppositeFiniteOffsetMate N
          (fun b hbBox hb18 =>
            boxedOppositeFiniteOffsetCodeOfTyped offset hMap b hbBox hb18)))

/--
Typed-offset uniform direct certificate whose credit side uses the simple typed
mate value.  Lean transfers reserve non-image facts to the boxed mate because
the two mates agree on every opposite source.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate :
    Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
  Exists fun _hMap :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) =>
    (forall b1 b2 : Nat,
      forall _hb1Box : InBox N b1,
      forall _hb1Residue : CandidateCarrier 18 b1,
      forall _hb2Box : InBox N b2,
      forall _hb2Residue : CandidateCarrier 18 b2,
        OppositeFiniteOffsetCodeValue b1 (offset b1) =
          OppositeFiniteOffsetCodeValue b2 (offset b2) ->
        b1 = b2) /\
    (forall B : Nat -> Prop,
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching N B
        (fun b => OppositeFiniteOffsetCodeValue b (offset b)))

/--
Typed-offset capacity certificate whose strict-middle side is only the
count-level active credit inequality against the simple typed mate.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateCreditCapacityCertificate :
    Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
  Exists fun _hMap :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) =>
    (forall b1 b2 : Nat,
      forall _hb1Box : InBox N b1,
      forall _hb1Residue : CandidateCarrier 18 b1,
      forall _hb2Box : InBox N b2,
      forall _hb2Residue : CandidateCarrier 18 b2,
        OppositeFiniteOffsetCodeValue b1 (offset b1) =
          OppositeFiniteOffsetCodeValue b2 (offset b2) ->
        b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetCodeValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetCodeValue b (offset b)) decTarget)

/--
Typed-mate capacity certificate whose opposite injectivity is stated at the
residue-class target-index level.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateIndexCreditCapacityCertificate :
    Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
  Exists fun _hMap :
      (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) =>
    (forall b1 b2 : Nat,
      forall _hb1Box : InBox N b1,
      forall _hb1Residue : CandidateCarrier 18 b1,
      forall _hb2Box : InBox N b2,
      forall _hb2Residue : CandidateCarrier 18 b2,
        OppositeFiniteOffsetCodeTargetIndex b1 (offset b1) =
          OppositeFiniteOffsetCodeTargetIndex b2 (offset b2) ->
        b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decMid : DecidablePred (StrictMiddlePart 7 B))
        (decTarget : DecidablePred
          (ActiveStrictMiddleCreditTarget N 7 B
            (fun b => OppositeFiniteOffsetCodeValue b (offset b)))),
      BoundedOutsideSet N 7 B ->
      NonSquarefreeClique B ->
      (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
      ActiveStrictMiddleCreditCapacity N 7 B decMid
        (fun b => OppositeFiniteOffsetCodeValue b (offset b)) decTarget)

/-- Opposite-side typed finite-offset index matching for the concrete `18 mod 25` block. -/
def GlobalOppositeFiniteOffsetEighteenTypedIndexMatching
    (N : Nat) (offset : Nat -> OppositeFiniteOffsetCode) : Prop :=
  (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
    GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) /\
  (forall b1 b2 : Nat,
    forall _hb1Box : InBox N b1,
    forall _hb1Residue : CandidateCarrier 18 b1,
    forall _hb2Box : InBox N b2,
    forall _hb2Residue : CandidateCarrier 18 b2,
      OppositeFiniteOffsetCodeTargetIndex b1 (offset b1) =
        OppositeFiniteOffsetCodeTargetIndex b2 (offset b2) ->
      b1 = b2)

/-- Opposite-side typed matching stated with the explicit source-index shifts. -/
def GlobalOppositeFiniteOffsetEighteenTypedShiftIndexMatching
    (N : Nat) (offset : Nat -> OppositeFiniteOffsetCode) : Prop :=
  (forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
    GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b (offset b)) /\
  (forall b1 b2 : Nat,
    forall _hb1Box : InBox N b1,
    forall _hb1Residue : CandidateCarrier 18 b1,
    forall _hb2Box : InBox N b2,
    forall _hb2Residue : CandidateCarrier 18 b2,
      OppositeFiniteOffsetCodeShiftTargetIndex b1 (offset b1) =
        OppositeFiniteOffsetCodeShiftTargetIndex b2 (offset b2) ->
      b1 = b2)

/--
Opposite-side typed matching indexed only by the `18 mod 25` source index.
The induced total mate uses `offsetIndex (CandidateClassIndex b)`.
-/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetBox
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    InBox N (OppositeFiniteOffsetCodeValue
      (EighteenSourceFromIndex k) (offsetIndex k))

/--
The source-index target value agrees with the original finite-offset value.
This excludes underflow in the negative shift cases.
-/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    OppositeFiniteOffsetCodeValue (EighteenSourceFromIndex k) (offsetIndex k) =
      OppositeFiniteOffsetSourceIndexTargetValue k (offsetIndex k)

/-- Source-index non-underflow data for every boxed `18 mod 25` source. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexCodeNonUnderflow
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    OppositeFiniteOffsetSourceIndexCodeNonUnderflow k (offsetIndex k)

/-- Target-box data stated directly for the source-index target value. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetIndexBox
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    InBox N (OppositeFiniteOffsetSourceIndexTargetValue k (offsetIndex k))

/-- Target upper-bound data stated for the source-index target value. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetUpperBound
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    OppositeFiniteOffsetSourceIndexTargetValue k (offsetIndex k) <= N

/-- Target upper-bound data stated for the source-index shift target. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftTargetUpperBound
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    OppositeFiniteOffsetSourceIndexShiftTarget k (offsetIndex k) <= (N - 7) / 25

/-- Source-index squarefree edges for the `18 mod 25` opposite block. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexSquarefreeEdge
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    ForbiddenSquarefreeEdge
      (OppositeFiniteOffsetCodeValue (EighteenSourceFromIndex k) (offsetIndex k))
      (EighteenSourceFromIndex k)

/-- Source-index squarefree edges stated for the source-index target value. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueSquarefreeEdge
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k : Nat, InBox N (EighteenSourceFromIndex k) ->
    ForbiddenSquarefreeEdge
      (OppositeFiniteOffsetSourceIndexTargetValue k (offsetIndex k))
      (EighteenSourceFromIndex k)

/-- Source-index target map, split internally into target box and edge data. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetMap
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetBox N offsetIndex /\
  GlobalOppositeFiniteOffsetEighteenTypedSourceIndexSquarefreeEdge N offsetIndex

/-- Source-index shift injectivity for the `18 mod 25` opposite block. -/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftInjective
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall k1 k2 : Nat,
    InBox N (EighteenSourceFromIndex k1) ->
    InBox N (EighteenSourceFromIndex k2) ->
      OppositeFiniteOffsetSourceIndexShiftTarget k1 (offsetIndex k1) =
        OppositeFiniteOffsetSourceIndexShiftTarget k2 (offsetIndex k2) ->
      k1 = k2

/--
Opposite-side typed matching indexed only by the `18 mod 25` source index.
The induced total mate uses `offsetIndex (CandidateClassIndex b)`.
-/
def GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftMatching
    (N : Nat) (offsetIndex : Nat -> OppositeFiniteOffsetCode) : Prop :=
  GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetMap N offsetIndex /\
  GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftInjective N offsetIndex

/-- Strict-middle active credit capacity against the simple typed finite-offset mate. -/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateActiveCreditCapacity
    (N : Nat) (offset : Nat -> OppositeFiniteOffsetCode) : Prop :=
  forall (B : Nat -> Prop)
      (decMid : DecidablePred (StrictMiddlePart 7 B))
      (decTarget : DecidablePred
        (ActiveStrictMiddleCreditTarget N 7 B
          (fun b => OppositeFiniteOffsetCodeValue b (offset b)))),
    BoundedOutsideSet N 7 B ->
    NonSquarefreeClique B ->
    (Exists fun b : Nat => StrictMiddlePart 7 B b) ->
    ActiveStrictMiddleCreditCapacity N 7 B decMid
      (fun b => OppositeFiniteOffsetCodeValue b (offset b)) decTarget

/--
Split certificate for the current route: one typed opposite index matching and
one strict-middle active credit capacity obligation.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitIndexCreditCapacityCertificate :
    Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
    GlobalOppositeFiniteOffsetEighteenTypedIndexMatching N offset /\
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateActiveCreditCapacity N offset

/--
Split certificate with the opposite block reduced to explicit source-index
shifts rather than target-value division.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitShiftIndexCreditCapacityCertificate :
    Prop :=
  forall N : Nat, Exists fun offset : Nat -> OppositeFiniteOffsetCode =>
    GlobalOppositeFiniteOffsetEighteenTypedShiftIndexMatching N offset /\
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateActiveCreditCapacity N offset

/--
Split certificate whose opposite block is indexed by `k` with source
`25*k+18`; the existing typed mate is induced by `CandidateClassIndex`.
-/
def GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexShiftCreditCapacityCertificate :
    Prop :=
  forall N : Nat, Exists fun offsetIndex : Nat -> OppositeFiniteOffsetCode =>
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexCodeNonUnderflow N offsetIndex /\
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftTargetUpperBound N offsetIndex /\
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueSquarefreeEdge N offsetIndex /\
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftInjective N offsetIndex /\
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateActiveCreditCapacity N
      (fun b => offsetIndex (CandidateClassIndex b))

/--
The decoded squarefree-boxed certificate supplies the previous squarefree-boxed
decoder certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoder_of_decoded
    (h : GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCapacity⟩
  let offsetSquarefree :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b :=
    fun b hbBox hb18 =>
      DecodedSquarefreeBoxedOppositeFiniteOffsetCode.toSquarefreeBoxed
        (offset b hbBox hb18)
  refine ⟨offsetSquarefree, decoder, ?_, ?_⟩
  · intro b hbBox hb18
    simpa [offsetSquarefree] using
      decodedSquarefreeBoxedOppositeFiniteOffsetCode_leftInverse
        (offset b hbBox hb18)
  · intro B decMid decTarget hB hClique hMid
    simpa [offsetSquarefree, decodedSquarefreeBoxedOppositeFiniteOffsetMate] using
      hCapacity B decMid decTarget hB hClique hMid

/-- The squarefree-boxed certificate supplies the previous boxed-code certificate. -/
theorem globalFiniteOffsetMiddleCompressionEighteenBoxedDecoder_of_squarefreeBoxed
    (h : GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate := by
  intro N
  rcases h N with ⟨offset, decoder, hLeft, hCapacity⟩
  let offsetBoxed :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        BoxedOppositeFiniteOffsetCode N b :=
    fun b hbBox hb18 =>
      SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed (offset b hbBox hb18)
  refine ⟨offsetBoxed, decoder, ?_, ?_, ?_⟩
  · intro b hbBox hb18
    simpa [offsetBoxed] using
      globalOppositeFiniteOffsetEighteenBoxedTargetNeighbor_of_squarefreeBoxed
        (offset b hbBox hb18)
  · intro b hbBox hb18
    simpa [offsetBoxed] using hLeft b hbBox hb18
  · intro B decMid decTarget hB hClique hMid
    simpa [offsetBoxed] using hCapacity B decMid decTarget hB hClique hMid

/-- The boxed-code certificate supplies the previous typed-code decoder certificate. -/
theorem globalFiniteOffsetMiddleCompressionEighteenTypedDecoder_of_boxed
    (h : GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate := by
  intro N
  rcases h N with ⟨offset, decoder, hMap, hLeft, hCapacity⟩
  let offsetTotal : Nat -> OppositeFiniteOffsetCode :=
    boxedOppositeFiniteOffsetRawCode N offset
  refine ⟨offsetTotal, decoder, ?_, ?_, ?_⟩
  · intro b hbBox hb18
    have hsrc : InBox N b /\ CandidateCarrier 18 b := And.intro hbBox hb18
    have htyped :
        GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor N b
          (offset b hbBox hb18).val :=
      globalOppositeFiniteOffsetEighteenTypedTargetNeighbor_of_boxed
        (hMap b hbBox hb18)
    simpa [offsetTotal, boxedOppositeFiniteOffsetRawCode, hsrc] using htyped
  · intro b hbBox hb18
    have hsrc : InBox N b /\ CandidateCarrier 18 b := And.intro hbBox hb18
    simpa [offsetTotal, boxedOppositeFiniteOffsetRawCode,
      boxedOppositeFiniteOffsetCodeValue, hsrc] using
      hLeft b hbBox hb18
  · intro B decMid decTarget hB hClique hMid
    simpa [offsetTotal, boxedOppositeFiniteOffsetMate] using
      hCapacity B decMid decTarget hB hClique hMid

/-- The typed-code certificate supplies the previous Nat-code decoder certificate. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecoder_of_typed
    (h : GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate := by
  intro N
  rcases h N with ⟨offset, decoder, hMap, hLeft, hCapacity⟩
  let offsetNat : Nat -> Nat := fun b => OppositeFiniteOffsetCode.toNat (offset b)
  refine ⟨offsetNat, decoder, ?_, ?_, ?_⟩
  · intro b hbBox hb18
    exact globalOppositeFiniteOffsetEighteenTargetNeighbor_of_typed
      (hMap b hbBox hb18)
  · intro b hbBox hb18
    simpa [offsetNat, OppositeFiniteOffsetCodeValue] using
      hLeft b hbBox hb18
  · intro B decMid decTarget hB hClique hMid
    simpa [offsetNat, OppositeFiniteOffsetCodeValue] using
      hCapacity B decMid decTarget hB hClique hMid

/-- The decoder-form certificate supplies the pairwise-injective target certificate. -/
theorem globalFiniteOffsetMiddleCompressionEighteenTarget_of_decoder
    (h : GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate := by
  intro N
  rcases h N with ⟨offset, decoder, hMap, hLeft, hCapacity⟩
  exact ⟨offset, hMap,
    finiteOffsetEighteenTarget_injective_of_leftInverse hLeft,
    hCapacity⟩

/-- The source-input-minimal target certificate supplies the previous eighteen-core cut. -/
theorem globalFiniteOffsetMiddleCompressionEighteenCore_of_target
    (h : GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCapacity⟩
  refine ⟨offset, ?_, hInjective, hCapacity⟩
  intro b hbBox hb18
  exact globalOppositeFiniteOffsetEighteenSquarefreeNeighbor_of_target
    hbBox hb18 (hMap b hbBox hb18)

/-- The concrete `18 mod 25` source-residue core supplies the previous seven-core cut. -/
theorem globalFiniteOffsetMiddleCompressionSevenCore_of_eighteenCore
    (h : GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate) :
    GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCapacity⟩
  refine ⟨offset, ?_, ?_, hCapacity⟩
  · intro b hbBox hbOpp
    exact globalOppositeFiniteOffsetSevenSquarefreeNeighbor_of_eighteen
      (hMap b hbBox
        (candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hbOpp))
  · intro b1 b2 hb1Box hb1Opp hb2Box hb2Opp hmate
    exact hInjective
      b1 b2
      hb1Box
      (candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hb1Opp)
      hb2Box
      (candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hb2Opp)
      hmate

/-- The specialized seven-core certificate supplies the generic core certificate for residue `7`. -/
theorem globalFiniteOffsetMiddleCompressionCore_of_sevenCore
    (h : GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate) :
    GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue 7 := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCapacity⟩
  refine ⟨offset, ?_, hInjective, hCapacity⟩
  intro b hbBox hbOpp
  exact globalOppositeFiniteOffsetSquarefreeNeighbor_of_seven (hMap b hbBox hbOpp)

/-- The core middle-compression certificate supplies the old `K = 86` split capacity. -/
theorem globalFiniteOffsetSplitCapacity_of_middleCompressionCore
    {r : Nat}
    (h : GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue r) :
    GlobalFiniteOffsetSplitCapacityCertificateForResidue r 86 := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCapacity⟩
  refine ⟨offset, ?_, hInjective, hCapacity⟩
  intro b hbBox hbOpp
  exact globalOppositeFiniteOffsetNeighbor_of_squarefree (hMap b hbBox hbOpp)

/--
Single global cut with a finite-offset opposite matching and direct
partitioned-neighbor capacity for every compatible outside clique.
-/
def GlobalFiniteOffsetPartitionedCapacityCertificateForResidue (r K : Nat) : Prop :=
  forall N : Nat, Exists fun offset : Nat -> Nat =>
    (forall b : Nat, InBox N b -> OppositeCandidateCarrier r b ->
      GlobalOppositeFiniteOffsetNeighbor N r K b (offset b)) /\
    (forall b1 b2 : Nat,
      InBox N b1 -> OppositeCandidateCarrier r b1 ->
      InBox N b2 -> OppositeCandidateCarrier r b2 ->
      OppositeFiniteOffsetValue b1 (offset b1) =
        OppositeFiniteOffsetValue b2 (offset b2) ->
      b1 = b2) /\
    (forall (B : Nat -> Prop)
        (decOpp : DecidablePred (OppositeOutsidePart r B))
        (decMid : DecidablePred (StrictMiddlePart r B))
        (decUnion : DecidablePred (PartitionedNeighborUnion N r B)),
      BoundedOutsideSet N r B ->
      NonSquarefreeClique B ->
      PartitionedNeighborCapacity N r B decOpp decMid decUnion)

/-- Split certificate: equality-block expansion plus active strict-middle surplus. -/
def SplitIncrementalSquarefreeAPCapacityCertificateForResidue (r : Nat) : Prop :=
  OppositeSquarefreeAPCapacityCertificateForResidue r /\
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r

/-- Endpoint split incremental/surplus obligation for the `7 mod 25` class. -/
def SplitIncrementalSquarefreeAPCapacityCertificate : Prop :=
  SplitIncrementalSquarefreeAPCapacityCertificateForResidue 7

/-- Allocation-form split certificate. -/
def AllocatedSplitIncrementalSquarefreeAPCapacityCertificateForResidue (r : Nat) : Prop :=
  OppositeSquarefreeAPAllocationCertificateForResidue r /\
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r

/-- Endpoint allocation-form split obligation for the `7 mod 25` class. -/
def AllocatedSplitIncrementalSquarefreeAPCapacityCertificate : Prop :=
  AllocatedSplitIncrementalSquarefreeAPCapacityCertificateForResidue 7

/-- Banded allocation-form split certificate. -/
def NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificateForResidue
    (r K : Nat) : Prop :=
  OppositeNearbyAPAllocationCertificateForResidue r K /\
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r

/-- Endpoint banded allocation-form split obligation. -/
def NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificate : Prop :=
  NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificateForResidue 7 86

/-- Banded matching-image split certificate. -/
def NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificateForResidue
    (r K : Nat) : Prop :=
  OppositeNearbyMatchingAPCertificateForResidue r K /\
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r

/-- Endpoint banded matching-image split obligation. -/
def NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificate : Prop :=
  NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificateForResidue 7 86

/-- Incremental/surplus-form partitioned AP/Hall capacity certificate. -/
def IncrementalPartitionedSquarefreeAPCapacityCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)))
    (decNewMid : DecidablePred (IncrementalStrictMiddleNeighbor N r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    PartitionedIncrementalCapacity N r B decOpp decMid decOppNbr decNewMid

/-- Endpoint incremental/surplus AP/Hall obligation for the `7 mod 25` class. -/
def IncrementalPartitionedSquarefreeAPCapacityCertificate : Prop :=
  IncrementalPartitionedSquarefreeAPCapacityCertificateForResidue 7

/-- Capacity-form partitioned AP/Hall certificate. -/
def PartitionedSquarefreeAPCapacityCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B))
    (decUnion : DecidablePred (PartitionedNeighborUnion N r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    PartitionedNeighborCapacity N r B decOpp decMid decUnion

/-- Endpoint capacity-form AP/Hall obligation for the `7 mod 25` candidate class. -/
def PartitionedSquarefreeAPCapacityCertificate : Prop :=
  PartitionedSquarefreeAPCapacityCertificateForResidue 7

/-- Partitioned AP/Hall certificate: allocate disjoint candidate neighbors to both blocks. -/
def PartitionedSquarefreeAPHallCertificateForResidue (r : Nat) : Prop :=
  forall (N : Nat) (B : Nat -> Prop)
    (decOpp : DecidablePred (OppositeOutsidePart r B))
    (decMid : DecidablePred (StrictMiddlePart r B)),
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    PartitionedNeighborAllocation N r B decOpp decMid

/-- Endpoint partitioned AP/Hall obligation for the `7 mod 25` candidate class. -/
def PartitionedSquarefreeAPHallCertificate : Prop :=
  PartitionedSquarefreeAPHallCertificateForResidue 7

/-- The bounded outside part is genuinely bounded and outside. -/
theorem boundedOutsidePart_boundedOutsideSet
    (N r : Nat) (A : Nat -> Prop) :
    BoundedOutsideSet N r (BoundedOutsidePart N r A) := by
  intro b hb
  exact And.intro hb.left hb.right.right

/-- The strict middle part is still a bounded outside set. -/
theorem boundedStrictMiddlePart_boundedOutsideSet
    (N r : Nat) (A : Nat -> Prop) :
    BoundedOutsideSet N r (BoundedStrictMiddlePart N r A) := by
  intro b hb
  exact And.intro hb.left hb.right.right.left

/-- The outside part of an admissible set inherits pairwise non-squarefree compatibility. -/
theorem boundedOutsidePart_nonSquarefreeClique_of_admissible
    {N r : Nat} {A : Nat -> Prop}
    (hA : Admissible848 A N) :
    NonSquarefreeClique (BoundedOutsidePart N r A) := by
  intro a b ha hb
  exact hA a b ha.left hb.left ha.right.left hb.right.left

/-- The strict middle part of an admissible set inherits pairwise non-squarefree compatibility. -/
theorem boundedStrictMiddlePart_nonSquarefreeClique_of_admissible
    {N r : Nat} {A : Nat -> Prop}
    (hA : Admissible848 A N) :
    NonSquarefreeClique (BoundedStrictMiddlePart N r A) := by
  intro a b ha hb
  exact hA a b ha.left hb.left ha.right.left hb.right.left

/-- A squarefree edge from the `7 mod 25` class can only hit an outside vertex. -/
theorem outside_candidate_seven_of_squarefree_edge
    {a b : Nat} (ha : CandidateCarrier 7 a) (hedge : ForbiddenSquarefreeEdge a b) :
    CandidateOutside 7 b := by
  intro hb
  unfold ForbiddenSquarefreeEdge at hedge
  exact hedge 5 (by omega) (squareDivides_five_mul_add_one_of_candidate_seven ha hb)

/-- A squarefree edge from the `18 mod 25` class can only hit an outside vertex. -/
theorem outside_candidate_eighteen_of_squarefree_edge
    {a b : Nat} (ha : CandidateCarrier 18 a) (hedge : ForbiddenSquarefreeEdge a b) :
    CandidateOutside 18 b := by
  intro hb
  unfold ForbiddenSquarefreeEdge at hedge
  exact hedge 5 (by omega) (squareDivides_five_mul_add_one_of_candidate_eighteen ha hb)

/-- Two-residue version used as a diagnostic target, but not needed by the endpoint. -/
def CandidateResidueSquarefreeAPHallCertificate : Prop :=
  forall (N r : Nat) (B : Nat -> Prop)
    (decB : DecidablePred B)
    (decNbr : DecidablePred (SquarefreeNeighborInCandidate N r B)),
    (r = 7 \/ r = 18) ->
    BoundedOutsideSet N r B ->
    NonSquarefreeClique B ->
    APHallExpansionForOutsideSet N r B decB decNbr

/-- Endpoint AP/Hall obligation: only the `7 mod 25` candidate class is consumed upstream. -/
def SquarefreeAPHallCertificate : Prop :=
  SquarefreeAPHallCertificateForResidue 7

/-- A two-residue AP/Hall certificate implies the endpoint one-residue certificate. -/
theorem squarefreeAPHallCertificate_of_candidateResidues
    (h : CandidateResidueSquarefreeAPHallCertificate) :
    SquarefreeAPHallCertificate := by
  intro N B decB decNbr hB hClique
  exact h N 7 B decB decNbr (Or.inl rfl) hB hClique

private theorem familySize_le_add_of_subset_or
    (N : Nat) (P Q R : Nat -> Prop)
    (decP : DecidablePred P) (decQ : DecidablePred Q) (decR : DecidablePred R)
    (hP : forall a : Nat, P a -> Q a \/ R a) :
    @familySize N P decP <= @familySize N Q decQ + @familySize N R decR := by
  unfold familySize
  induction N with
  | zero =>
      simp [countUpTo]
  | succ n ih =>
      by_cases hp : P (n + 1)
      · have hqr := hP (n + 1) hp
        by_cases hq : Q (n + 1)
        · by_cases hr : R (n + 1)
          · simp [countUpTo, hp, hq, hr]
            omega
          · simp [countUpTo, hp, hq, hr]
            omega
        · by_cases hr : R (n + 1)
          · simp [countUpTo, hp, hq, hr]
            omega
          · rcases hqr with hq' | hr'
            · exact False.elim (hq hq')
            · exact False.elim (hr hr')
      · by_cases hq : Q (n + 1)
        · by_cases hr : R (n + 1)
          · simp [countUpTo, hp, hq, hr]
            omega
          · simp [countUpTo, hp, hq, hr]
            omega
        · by_cases hr : R (n + 1)
          · simp [countUpTo, hp, hq, hr]
            omega
          · simp [countUpTo, hp, hq, hr]
            omega

private theorem familySize_mono
    (N : Nat) (P Q : Nat -> Prop)
    (decP : DecidablePred P) (decQ : DecidablePred Q)
    (hPQ : forall a : Nat, P a -> Q a) :
    @familySize N P decP <= @familySize N Q decQ := by
  unfold familySize
  induction N with
  | zero =>
      simp [countUpTo]
  | succ n ih =>
      by_cases hp : P (n + 1)
      · have hq : Q (n + 1) := hPQ (n + 1) hp
        simp [countUpTo, hp, hq]
        omega
      · by_cases hq : Q (n + 1)
        · simp [countUpTo, hp, hq]
          omega
        · simp [countUpTo, hp, hq]
          omega

private theorem familySize_eq_countP_range_succ
    (N : Nat) (P : Nat -> Prop) (decP : DecidablePred P)
    (hzero : Not (P 0)) :
    @familySize N P decP =
      (List.range (N + 1)).countP (fun a => decide (P a)) := by
  unfold familySize
  induction N with
  | zero =>
      rw [List.range_succ]
      simp [countUpTo, hzero]
  | succ n ih =>
      rw [List.range_succ]
      by_cases hp : P (n + 1)
      · simp [List.countP_append, countUpTo, ih, hp]
      · simp [List.countP_append, countUpTo, ih, hp]

private theorem list_length_le_of_nodup_subset
    {l₁ l₂ : List Nat}
    (hnd : l₁.Nodup)
    (hsub : l₁ ⊆ l₂) :
    l₁.length <= l₂.length := by
  induction l₁ generalizing l₂ with
  | nil =>
      simp
  | cons a t ih =>
      have ha_mem : a ∈ l₂ := hsub (List.mem_cons_self a t)
      have hnd_parts : a ∉ t ∧ t.Nodup := by
        simpa using hnd
      have ht_sub : t ⊆ l₂.erase a := by
        intro b hb
        have hb_mem_l₂ : b ∈ l₂ := hsub (List.mem_cons_of_mem a hb)
        have hb_ne_a : b ≠ a := by
          intro hba
          exact hnd_parts.left (by simpa [hba] using hb)
        exact (List.mem_erase_of_ne hb_ne_a).2 hb_mem_l₂
      have ht_len : t.length <= (l₂.erase a).length :=
        ih hnd_parts.right ht_sub
      have herase : (l₂.erase a).length = l₂.length - 1 :=
        List.length_erase_of_mem ha_mem
      have hpos : 0 < l₂.length := List.length_pos_of_mem ha_mem
      rw [herase] at ht_len
      simp
      omega

private theorem list_nodup_map_of_inj_on
    {l : List Nat} {f : Nat -> Nat}
    (hnd : l.Nodup)
    (hinj : forall x y : Nat, x ∈ l -> y ∈ l -> f x = f y -> x = y) :
    (l.map f).Nodup := by
  change (l.map f).Pairwise (fun x y => x ≠ y)
  rw [List.pairwise_map]
  exact hnd.imp_of_mem (fun hx hy hne hxy => hne (hinj _ _ hx hy hxy))

private theorem familySize_le_of_bounded_injective_image
    (N : Nat) (P Q : Nat -> Prop)
    (decP : DecidablePred P) (decQ : DecidablePred Q)
    (f : Nat -> Nat)
    (hPBox : forall x : Nat, P x -> InBox N x)
    (hImageBox : forall x : Nat, P x -> InBox N (f x))
    (hImageQ : forall x : Nat, P x -> Q (f x))
    (hinj : forall x y : Nat, P x -> P y -> f x = f y -> x = y) :
    @familySize N P decP <= @familySize N Q decQ := by
  classical
  let U : List Nat := List.range (N + 1)
  let QB : Nat -> Prop := fun a => InBox N a /\ Q a
  let decQB : DecidablePred QB := fun a => Classical.propDecidable (QB a)
  let LP : List Nat := U.filter (fun a => decide (P a))
  let LQ : List Nat := U.filter (fun a => decide (QB a))
  have hPzero : Not (P 0) := by
    intro hP0
    have hbox := hPBox 0 hP0
    exact Nat.not_succ_le_zero 0 hbox.left
  have hQBzero : Not (QB 0) := by
    intro h
    exact Nat.not_succ_le_zero 0 h.left.left
  have hPcount :
      @familySize N P decP = LP.length := by
    have h :=
      familySize_eq_countP_range_succ N P decP hPzero
    simp [LP, U, List.countP_eq_length_filter] at h
    exact h
  have hQBcount :
      @familySize N QB decQB = LQ.length := by
    have h :=
      familySize_eq_countP_range_succ N QB decQB hQBzero
    simp [LQ, U, List.countP_eq_length_filter] at h
    exact h
  have hLPnodup : LP.Nodup := by
    apply List.Nodup.sublist (List.filter_sublist U)
    exact List.nodup_range (N + 1)
  have hMapNodup : (LP.map f).Nodup := by
    apply list_nodup_map_of_inj_on hLPnodup
    intro x y hx hy hxy
    have hxInfo := (List.mem_filter.mp hx)
    have hyInfo := (List.mem_filter.mp hy)
    have hxP : P x := of_decide_eq_true hxInfo.right
    have hyP : P y := of_decide_eq_true hyInfo.right
    exact hinj x y hxP hyP hxy
  have hMapSub : (LP.map f) ⊆ LQ := by
    intro y hy
    rcases (List.mem_map.mp hy) with ⟨x, hxLP, hxy⟩
    have hxInfo := (List.mem_filter.mp hxLP)
    have hxP : P x := of_decide_eq_true hxInfo.right
    have hfBox := hImageBox x hxP
    have hfQ := hImageQ x hxP
    have hfU : f x ∈ U := by
      simp [U, List.mem_range]
      have hle := hfBox.right
      omega
    have hfQB : QB (f x) := And.intro hfBox hfQ
    have hyU : y ∈ U := by
      simpa [hxy] using hfU
    have hyQB : QB y := by
      simpa [hxy] using hfQB
    exact List.mem_filter.mpr ⟨hyU, decide_eq_true hyQB⟩
  have hlen : (LP.map f).length <= LQ.length :=
    list_length_le_of_nodup_subset hMapNodup hMapSub
  have hlen' : LP.length <= LQ.length := by
    simpa [List.length_map] using hlen
  have hQBmono :
      @familySize N QB decQB <= @familySize N Q decQ := by
    exact familySize_mono N QB Q decQB decQ (fun a ha => ha.right)
  omega

/-- Active strict-middle credit targets are boxed candidate-side vertices. -/
theorem activeStrictMiddleCreditTarget_inBox
    {N r : Nat} {B : Nat -> Prop} {mate : Nat -> Nat} {a : Nat}
    (h : ActiveStrictMiddleCreditTarget N r B mate a) :
    InBox N a := by
  rcases h with hReserve | hNew
  · exact hReserve.left.left
  · exact hNew.left.left

/-- An explicit active strict-middle credit matching implies count-level capacity. -/
theorem activeStrictMiddleCreditCapacity_of_creditMatching
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mate : Nat -> Nat}
    {decTarget : DecidablePred (ActiveStrictMiddleCreditTarget N r B mate)}
    (hB : BoundedOutsideSet N r B)
    (hCredit : ActiveStrictMiddleCreditMatching N r B decMid mate) :
    ActiveStrictMiddleCreditCapacity N r B decMid mate decTarget := by
  rcases hCredit with ⟨credit, hCreditMap, hCreditInjective⟩
  apply familySize_le_of_bounded_injective_image
    N (StrictMiddlePart r B) (ActiveStrictMiddleCreditTarget N r B mate)
    decMid decTarget credit
  · intro b hb
    exact (hB b hb.left).left
  · intro b hb
    exact activeStrictMiddleCreditTarget_inBox (hCreditMap b hb)
  · intro b hb
    exact hCreditMap b hb
  · intro b1 b2 hb1 hb2 hcredit
    exact hCreditInjective b1 b2 hb1 hb2 hcredit

/--
Active credit targets are monotone across mates that agree on every opposite
source of the outside set. Only the reserve non-image branch mentions `mate`.
-/
theorem activeStrictMiddleCreditTarget_mono_mate
    {N r : Nat} {B : Nat -> Prop} {mateOld mateNew : Nat -> Nat}
    (hMate :
      forall b : Nat, OppositeOutsidePart r B b ->
        mateOld b = mateNew b) :
    forall a : Nat,
      ActiveStrictMiddleCreditTarget N r B mateOld a ->
      ActiveStrictMiddleCreditTarget N r B mateNew a := by
  intro a hTarget
  rcases hTarget with hReserve | hNew
  · refine Or.inl ⟨hReserve.left, ?_⟩
    intro hImageNew
    rcases hImageNew with ⟨b, hbOpp, hmateNew⟩
    have hmateOld : mateOld b = a := by
      calc
        mateOld b = mateNew b := hMate b hbOpp
        _ = a := hmateNew
    exact hReserve.right ⟨b, hbOpp, hmateOld⟩
  · exact Or.inr hNew

/--
Count-level active credit capacity transfers across mates that agree on every
opposite source of the outside set.
-/
theorem activeStrictMiddleCreditCapacity_mono_mate
    {N r : Nat} {B : Nat -> Prop}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {mateOld mateNew : Nat -> Nat}
    {decTargetOld :
      DecidablePred (ActiveStrictMiddleCreditTarget N r B mateOld)}
    {decTargetNew :
      DecidablePred (ActiveStrictMiddleCreditTarget N r B mateNew)}
    (hMate :
      forall b : Nat, OppositeOutsidePart r B b ->
        mateOld b = mateNew b)
    (hCapacity :
      ActiveStrictMiddleCreditCapacity N r B decMid mateOld decTargetOld) :
    ActiveStrictMiddleCreditCapacity N r B decMid mateNew decTargetNew := by
  unfold ActiveStrictMiddleCreditCapacity at hCapacity ⊢
  have hTargetLe :
      @familySize N (ActiveStrictMiddleCreditTarget N r B mateOld) decTargetOld <=
        @familySize N (ActiveStrictMiddleCreditTarget N r B mateNew) decTargetNew := by
    exact familySize_mono N
      (ActiveStrictMiddleCreditTarget N r B mateOld)
      (ActiveStrictMiddleCreditTarget N r B mateNew)
      decTargetOld decTargetNew
      (activeStrictMiddleCreditTarget_mono_mate hMate)
  omega

/--
The source-anti-neighbor certificate supplies the previous anti-image
witness-sum-code certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCode_of_sourceAntiNeighbor
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSourceAnti⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditAntiImageWitnessSumMatching_of_sourceAntiNeighbor
    (hCreditSourceAnti B decMid hB hClique hMid)

/--
The source anti-opposite certificate supplies the previous source anti-neighbor
witness-sum-code certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCode_of_sourceAntiOpposite
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiOppositeWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSourceAntiOpposite⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching_of_sourceAntiOpposite
    (hCreditSourceAntiOpposite B decMid hB hClique hMid)

/-- The self-fresh credit certificate supplies the previous self-source data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfAntiEighteenWitnessSumCode_of_selfFresh
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfFreshWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfAntiEighteenWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfFresh⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSelfAntiEighteenWitnessSumMatching_of_selfFresh
    (hCreditSelfFresh B decMid hB hClique hMid)

/-- The self-incremental credit certificate supplies the previous self-fresh data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfFreshWitnessSumCode_of_selfIncremental
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfIncrementalWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfFreshWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfIncremental⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSelfFreshWitnessSumMatching_of_selfIncremental
    (hCreditSelfIncremental B decMid hB hClique hMid)

/-- The self-target credit certificate supplies the previous self-incremental data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfIncrementalWitnessSumCode_of_selfTarget
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfTargetSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfIncrementalWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfTarget⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSelfIncrementalWitnessSumMatching_of_selfTarget
    (hCreditSelfTarget B decMid hB hClique hMid)

/-- The self-canonical-target certificate supplies the previous self-target data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfTargetSumCode_of_selfCanonicalTarget
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfTargetSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfCanonicalTarget⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSelfTargetSumMatching_of_selfCanonicalTarget
    (hCreditSelfCanonicalTarget B decMid hB hClique hMid)

/-- The injective self-canonical certificate supplies decoded self-canonical data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetSumCode_of_injective
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetInjectiveSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfCanonicalInjective⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSelfCanonicalTargetSumMatching_of_injective
    (hCreditSelfCanonicalInjective B decMid hB hClique hMid)

/-- The direct self-canonical certificate supplies the active credit matching data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_selfCanonicalTargetDirect
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetDirectInjectiveSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfCanonicalDirect⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleCreditMatching_of_selfCanonicalTargetDirectInjective
    (hCreditSelfCanonicalDirect B decMid hB hClique hMid)

/--
The uniform direct self-canonical certificate supplies active credit matching;
`decMid` is used only to totalize the matching function.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_uniformSelfCanonicalTargetDirect
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelfCanonicalDirect⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleCreditMatching_of_selfCanonicalTargetDirectInjectiveMatching
    (hCreditSelfCanonicalDirect B hB hClique hMid)

/--
The squarefree-boxed uniform direct certificate supplies decoded offset data by
constructing the finite-offset decoder from target injectivity.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_squarefreeBoxedUniformSelfCanonicalTargetDirect
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate := by
  intro N
  rcases h N with ⟨offset, hInjective, hCreditSelfCanonicalDirect⟩
  let decoder : Nat -> Nat := squarefreeBoxedOffsetDecoder N offset
  let decodedOffset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder :=
    fun b hbBox hb18 =>
      decodedSquarefreeBoxedOffset_of_injective
        (N := N) (offset := offset) hInjective hbBox hb18
  refine ⟨decoder, decodedOffset, ?_⟩
  intro B decMid hB hClique hMid
  have hCredit :=
    hCreditSelfCanonicalDirect B hB hClique hMid
  exact activeStrictMiddleCreditMatching_of_selfCanonicalTargetDirectInjectiveMatching
    (decMid := decMid) (by
      simpa [decodedOffset, decodedSquarefreeBoxedOppositeFiniteOffsetMate]
        using hCredit)

/--
The typed-offset uniform direct certificate supplies squarefree-boxed offset
data by packaging the typed target proof objects.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_typedUniformSelfCanonicalTargetDirect
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate := by
  refine
    globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_squarefreeBoxedUniformSelfCanonicalTargetDirect
      ?_
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCredit⟩
  let squarefreeOffset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b :=
    fun b hbBox hb18 =>
      squarefreeBoxedOppositeFiniteOffsetCodeOfTyped offset hMap b hbBox hb18
  refine ⟨squarefreeOffset, ?_, ?_⟩
  · intro b1 b2 hb1Box hb1Residue hb2Box hb2Residue hvalue
    exact hInjective b1 b2 hb1Box hb1Residue hb2Box hb2Residue (by
      simpa [squarefreeOffset,
        squarefreeBoxedOppositeFiniteOffsetCodeOfTyped,
        boxedOppositeFiniteOffsetCodeOfTyped,
        boxedOppositeFiniteOffsetCodeValue,
        OppositeFiniteOffsetCodeValue] using hvalue)
  · intro B hB hClique hMid
    have hCreditB := hCredit B hB hClique hMid
    simpa [squarefreeOffset,
      squarefreeBoxedOppositeFiniteOffsetCodeOfTyped,
      SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed]
      using hCreditB

/--
The typed-mate credit certificate supplies the boxed-mate certificate because
both mates agree on opposite sources of the outside set.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_typedMateUniformSelfCanonicalTargetDirect
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedMateCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate := by
  refine
    globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_typedUniformSelfCanonicalTargetDirect
      ?_
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCreditTyped⟩
  refine ⟨offset, hMap, hInjective, ?_⟩
  intro B hB hClique hMid
  apply activeStrictMiddleCreditSelfCanonicalTargetDirectInjectiveMatching_congr_mate
    (mateOld := fun b => OppositeFiniteOffsetCodeValue b (offset b))
    (mateNew := boxedOppositeFiniteOffsetMate N
      (fun b hbBox hb18 =>
        boxedOppositeFiniteOffsetCodeOfTyped offset hMap b hbBox hb18))
  · intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hb18 : CandidateCarrier 18 b :=
      candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hbOpp.right
    have hsrc : InBox N b /\ CandidateCarrier 18 b := And.intro hbBox hb18
    simp [boxedOppositeFiniteOffsetMate, boxedOppositeFiniteOffsetRawCode,
      boxedOppositeFiniteOffsetCodeOfTyped, boxedOppositeFiniteOffsetCodeValue,
      OppositeFiniteOffsetCodeValue, hsrc]
  · exact hCreditTyped B hB hClique hMid

/-- The split opposite-index plus middle-capacity certificate supplies the previous index form. -/
theorem globalFiniteOffsetMiddleCompressionEighteenTypedMateIndexCreditCapacity_of_split
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitIndexCreditCapacityCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateIndexCreditCapacityCertificate := by
  intro N
  rcases h N with ⟨offset, hOpposite, hCapacity⟩
  rcases hOpposite with ⟨hMap, hIndexInjective⟩
  exact ⟨offset, hMap, hIndexInjective, hCapacity⟩

/--
The explicit shift-index matching supplies the previous target-index matching:
for boxed `18 mod 25` sources the two indices are definitionally connected by
`oppositeFiniteOffsetCodeTargetIndex_eq_shiftTargetIndex`.
-/
theorem globalOppositeFiniteOffsetEighteenTypedIndexMatching_of_shift
    {N : Nat} {offset : Nat -> OppositeFiniteOffsetCode}
    (h : GlobalOppositeFiniteOffsetEighteenTypedShiftIndexMatching N offset) :
    GlobalOppositeFiniteOffsetEighteenTypedIndexMatching N offset := by
  rcases h with ⟨hMap, hShiftInjective⟩
  refine ⟨hMap, ?_⟩
  intro b1 b2 hb1Box hb1Residue hb2Box hb2Residue hIndex
  exact hShiftInjective b1 b2 hb1Box hb1Residue hb2Box hb2Residue (by
    rw [oppositeFiniteOffsetCodeTargetIndex_eq_shiftTargetIndex
          hb1Residue (hMap b1 hb1Box hb1Residue).left,
        oppositeFiniteOffsetCodeTargetIndex_eq_shiftTargetIndex
          hb2Residue (hMap b2 hb2Box hb2Residue).left] at hIndex
    exact hIndex)

/-- Source-index target coherence plus index-box data supplies the value-level target box. -/
theorem globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetBox_of_indexBox
    {N : Nat} {offsetIndex : Nat -> OppositeFiniteOffsetCode}
    (hCoherent :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent
        N offsetIndex)
    (hIndexBox :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetIndexBox
        N offsetIndex) :
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetBox N offsetIndex := by
  intro k hkBox
  have hEq := hCoherent k hkBox
  simpa [hEq] using hIndexBox k hkBox

/-- A source-index target upper bound supplies the full source-index target box. -/
theorem globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetIndexBox_of_upperBound
    {N : Nat} {offsetIndex : Nat -> OppositeFiniteOffsetCode}
    (hUpper :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetUpperBound
        N offsetIndex) :
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetIndexBox N offsetIndex := by
  intro k hkBox
  exact ⟨by
    unfold OppositeFiniteOffsetSourceIndexTargetValue
    omega, hUpper k hkBox⟩

/-- A source-index shift-target upper bound supplies the target-value upper bound. -/
theorem globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetUpperBound_of_shiftTargetUpperBound
    {N : Nat} {offsetIndex : Nat -> OppositeFiniteOffsetCode}
    (hShiftUpper :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftTargetUpperBound
        N offsetIndex) :
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetUpperBound
      N offsetIndex := by
  intro k hkBox
  have hShift := hShiftUpper k hkBox
  have hmul1 :
      25 * OppositeFiniteOffsetSourceIndexShiftTarget k (offsetIndex k) <=
        25 * ((N - 7) / 25) :=
    Nat.mul_le_mul_left 25 hShift
  have hmul2 : ((N - 7) / 25) * 25 <= N - 7 :=
    Nat.div_mul_le_self (N - 7) 25
  have hmul2' : 25 * ((N - 7) / 25) <= N - 7 := by
    simpa [Nat.mul_comm] using hmul2
  have hle :
      25 * OppositeFiniteOffsetSourceIndexShiftTarget k (offsetIndex k) <=
        N - 7 := by
    omega
  have hN7 : 7 <= N := by
    unfold InBox EighteenSourceFromIndex at hkBox
    omega
  unfold OppositeFiniteOffsetSourceIndexTargetValue
  omega

/-- Source-index target-value squarefree edges supply the original edge form. -/
theorem globalOppositeFiniteOffsetEighteenTypedSourceIndexSquarefreeEdge_of_targetValue
    {N : Nat} {offsetIndex : Nat -> OppositeFiniteOffsetCode}
    (hCoherent :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent
        N offsetIndex)
    (hTargetValueEdge :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueSquarefreeEdge
        N offsetIndex) :
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexSquarefreeEdge
      N offsetIndex := by
  intro k hkBox
  have hEq := hCoherent k hkBox
  simpa [hEq] using hTargetValueEdge k hkBox

/-- Source-index non-underflow supplies source-index target-value coherence. -/
theorem globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent_of_nonUnderflow
    {N : Nat} {offsetIndex : Nat -> OppositeFiniteOffsetCode}
    (hNonUnderflow :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexCodeNonUnderflow
        N offsetIndex) :
    GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent
      N offsetIndex := by
  intro k hkBox
  exact
    oppositeFiniteOffsetCodeValue_eighteenSource_eq_sourceIndexTargetValue_of_nonUnderflow
      (hNonUnderflow k hkBox)

/--
The source-indexed shift matching induces the previous total `b`-indexed
shift matching by reading the offset at `CandidateClassIndex b`.
-/
theorem globalOppositeFiniteOffsetEighteenTypedShiftIndexMatching_of_sourceIndex
    {N : Nat} {offsetIndex : Nat -> OppositeFiniteOffsetCode}
    (h :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexShiftMatching
        N offsetIndex) :
    GlobalOppositeFiniteOffsetEighteenTypedShiftIndexMatching N
      (fun b => offsetIndex (CandidateClassIndex b)) := by
  rcases h with ⟨hTargetMap, hIndexInjective⟩
  rcases hTargetMap with ⟨hTargetBox, hSquarefreeEdge⟩
  refine ⟨?_, ?_⟩
  · intro b hbBox hb18
    have hsource := eighteenSourceFromIndex_candidateClassIndex hb18
    have hbIndexBox : InBox N (EighteenSourceFromIndex (CandidateClassIndex b)) := by
      simpa [hsource] using hbBox
    exact ⟨by
      simpa [hsource] using hTargetBox (CandidateClassIndex b) hbIndexBox, by
      simpa [hsource] using hSquarefreeEdge (CandidateClassIndex b) hbIndexBox⟩
  · intro b1 b2 hb1Box hb1Residue hb2Box hb2Residue hShift
    have hsource1 := eighteenSourceFromIndex_candidateClassIndex hb1Residue
    have hsource2 := eighteenSourceFromIndex_candidateClassIndex hb2Residue
    have hb1IndexBox : InBox N (EighteenSourceFromIndex (CandidateClassIndex b1)) := by
      simpa [hsource1] using hb1Box
    have hb2IndexBox : InBox N (EighteenSourceFromIndex (CandidateClassIndex b2)) := by
      simpa [hsource2] using hb2Box
    have hShiftIndex :
        OppositeFiniteOffsetSourceIndexShiftTarget (CandidateClassIndex b1)
          (offsetIndex (CandidateClassIndex b1)) =
        OppositeFiniteOffsetSourceIndexShiftTarget (CandidateClassIndex b2)
          (offsetIndex (CandidateClassIndex b2)) := by
      simpa [
        oppositeFiniteOffsetCodeShiftTargetIndex_eq_sourceIndexShift
          b1 (offsetIndex (CandidateClassIndex b1)),
        oppositeFiniteOffsetCodeShiftTargetIndex_eq_sourceIndexShift
          b2 (offsetIndex (CandidateClassIndex b2))] using hShift
    have hindex :
        CandidateClassIndex b1 = CandidateClassIndex b2 :=
      hIndexInjective (CandidateClassIndex b1) (CandidateClassIndex b2)
        hb1IndexBox hb2IndexBox hShiftIndex
    rw [← hsource1, hindex, hsource2]

/-- The source-index split certificate supplies the previous shift-index split certificate. -/
theorem globalFiniteOffsetMiddleCompressionEighteenTypedMateSplitShiftIndexCreditCapacity_of_sourceIndex
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexShiftCreditCapacityCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitShiftIndexCreditCapacityCertificate := by
  intro N
  rcases h N with ⟨offsetIndex, hNonUnderflow, hShiftTargetUpperBound, hTargetValueSquarefreeEdge,
    hShiftInjective, hCapacity⟩
  have hTargetCoherent :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent
        N offsetIndex :=
    globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetValueCoherent_of_nonUnderflow
      hNonUnderflow
  have hTargetUpperBound :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetUpperBound
        N offsetIndex :=
    globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetUpperBound_of_shiftTargetUpperBound
      hShiftTargetUpperBound
  have hTargetIndexBox :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetIndexBox
        N offsetIndex :=
    globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetIndexBox_of_upperBound
      hTargetUpperBound
  have hTargetBox :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexTargetBox N offsetIndex :=
    globalOppositeFiniteOffsetEighteenTypedSourceIndexTargetBox_of_indexBox
      hTargetCoherent hTargetIndexBox
  have hSquarefreeEdge :
      GlobalOppositeFiniteOffsetEighteenTypedSourceIndexSquarefreeEdge
        N offsetIndex :=
    globalOppositeFiniteOffsetEighteenTypedSourceIndexSquarefreeEdge_of_targetValue
      hTargetCoherent hTargetValueSquarefreeEdge
  exact ⟨fun b => offsetIndex (CandidateClassIndex b),
    globalOppositeFiniteOffsetEighteenTypedShiftIndexMatching_of_sourceIndex
      ⟨⟨hTargetBox, hSquarefreeEdge⟩, hShiftInjective⟩,
    hCapacity⟩

/-- The split shift-index certificate supplies the previous split target-index certificate. -/
theorem globalFiniteOffsetMiddleCompressionEighteenTypedMateSplitIndexCreditCapacity_of_shift
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitShiftIndexCreditCapacityCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitIndexCreditCapacityCertificate := by
  intro N
  rcases h N with ⟨offset, hOpposite, hCapacity⟩
  exact ⟨offset,
    globalOppositeFiniteOffsetEighteenTypedIndexMatching_of_shift hOpposite,
    hCapacity⟩

/--
Target-index injectivity supplies the previous target-value injectivity because
equal target values have equal residue-class indices.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenTypedMateCreditCapacity_of_index
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedMateIndexCreditCapacityCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenTypedMateCreditCapacityCertificate := by
  intro N
  rcases h N with ⟨offset, hMap, hIndexInjective, hCapacity⟩
  refine ⟨offset, hMap, ?_, hCapacity⟩
  intro b1 b2 hb1Box hb1Residue hb2Box hb2Residue hvalue
  exact hIndexInjective b1 b2 hb1Box hb1Residue hb2Box hb2Residue (by
    simpa [OppositeFiniteOffsetCodeTargetIndex] using
      congrArg CandidateClassIndex hvalue)

/--
The typed-mate count-level capacity certificate supplies the decoded
squarefree-boxed capacity certificate; Lean packages typed targets as
squarefree-boxed codes and transfers the target count across the mate equality.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxed_of_typedMateCreditCapacity
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenTypedMateCreditCapacityCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, hCapacityTyped⟩
  let squarefreeOffset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        SquarefreeBoxedOppositeFiniteOffsetCode N b :=
    fun b hbBox hb18 =>
      squarefreeBoxedOppositeFiniteOffsetCodeOfTyped offset hMap b hbBox hb18
  have hInjectiveBoxed : SquarefreeBoxedOffsetInjective N squarefreeOffset := by
    intro b1 b2 hb1Box hb1Residue hb2Box hb2Residue hvalue
    exact hInjective b1 b2 hb1Box hb1Residue hb2Box hb2Residue (by
      simpa [squarefreeOffset,
        squarefreeBoxedOppositeFiniteOffsetCodeOfTyped,
        boxedOppositeFiniteOffsetCodeOfTyped,
        boxedOppositeFiniteOffsetCodeValue,
        OppositeFiniteOffsetCodeValue] using hvalue)
  let decoder : Nat -> Nat := squarefreeBoxedOffsetDecoder N squarefreeOffset
  let decodedOffset :
      forall b : Nat, InBox N b -> CandidateCarrier 18 b ->
        DecodedSquarefreeBoxedOppositeFiniteOffsetCode N b decoder :=
    fun b hbBox hb18 =>
      decodedSquarefreeBoxedOffset_of_injective
        (N := N) (offset := squarefreeOffset) hInjectiveBoxed hbBox hb18
  refine ⟨decoder, decodedOffset, ?_⟩
  intro B decMid decTarget hB hClique hMid
  let typedMate : Nat -> Nat :=
    fun b => OppositeFiniteOffsetCodeValue b (offset b)
  let decTargetTyped :
      DecidablePred (ActiveStrictMiddleCreditTarget N 7 B typedMate) :=
    fun a => Classical.propDecidable
      (ActiveStrictMiddleCreditTarget N 7 B typedMate a)
  apply activeStrictMiddleCreditCapacity_mono_mate
    (mateOld := typedMate)
    (mateNew := decodedSquarefreeBoxedOppositeFiniteOffsetMate N decodedOffset)
    (decTargetOld := decTargetTyped)
    (decTargetNew := decTarget)
  · intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hb18 : CandidateCarrier 18 b :=
      candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hbOpp.right
    have hsrc : InBox N b /\ CandidateCarrier 18 b := And.intro hbBox hb18
    simp [typedMate, decodedSquarefreeBoxedOppositeFiniteOffsetMate,
      boxedOppositeFiniteOffsetMate, boxedOppositeFiniteOffsetRawCode,
      decodedOffset, decodedSquarefreeBoxedOffset_of_injective,
      DecodedSquarefreeBoxedOppositeFiniteOffsetCode.toSquarefreeBoxed,
      SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed,
      squarefreeOffset, squarefreeBoxedOppositeFiniteOffsetCodeOfTyped,
      boxedOppositeFiniteOffsetCodeOfTyped, boxedOppositeFiniteOffsetCodeValue,
      OppositeFiniteOffsetCodeValue, hsrc]
  · exact hCapacityTyped B decMid decTargetTyped hB hClique hMid

/-- The self-source credit certificate supplies the previous anti-`18 mod 25` data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiEighteenWitnessSumCode_of_self
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfAntiEighteenWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiEighteenWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSelf⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditAntiEighteenWitnessSumMatching_of_self
    (hCreditSelf B decMid hB hClique hMid)

/-- The concrete anti-`18 mod 25` certificate supplies carrier-level data. -/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCarrierWitnessSumCode_of_antiEighteen
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiEighteenWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCarrierWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditAntiEighteen⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditCarrierWitnessSumMatching_of_antiEighteen
    (hCreditAntiEighteen B decMid hB hClique hMid)

/--
The carrier-level credit certificate supplies the previous source anti-opposite
witness-sum-code certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiOppositeWitnessSumCode_of_carrier
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCarrierWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiOppositeWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditCarrier⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSourceAntiOppositeWitnessSumMatching_of_carrier
    (hCreditCarrier B decMid hB hClique hMid)

/--
The decoded squarefree-boxed anti-image certificate supplies the previous
credit-witness-sum-code certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCode_of_antiImage
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditAntiImage⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  have hLeft :
      forall b : Nat, OppositeOutsidePart 7 B b ->
        decoder (decodedSquarefreeBoxedOppositeFiniteOffsetMate N offset b) = b := by
    intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hb18 : CandidateCarrier 18 b :=
      candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven hbOpp.right
    exact decodedSquarefreeBoxedOppositeFiniteOffsetMate_leftInverse
      (offset := offset) hbBox hb18
  exact activeStrictMiddleDecodedCreditWitnessSumMatching_of_antiImage
    hLeft (hCreditAntiImage B decMid hB hClique hMid)

/--
The decoded squarefree-boxed credit-witness-sum-code certificate supplies the
decoded credit-sum-code certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCode_of_witness
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditWitness⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditSumMatching_of_witness
    (hCreditWitness B decMid hB hClique hMid)

/--
The decoded squarefree-boxed credit-sum-code certificate supplies the decoded
credit-code certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCode_of_sumCode
    (h :
      GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditSum⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleDecodedCreditMatching_of_sum
    (hCreditSum B decMid hB hClique hMid)

/--
The decoded squarefree-boxed credit-code certificate supplies the explicit
credit-matching certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_creditCode
    (h : GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCreditCode⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid hB hClique hMid
  exact activeStrictMiddleCreditMatching_of_decoded
    (hCreditCode B decMid hB hClique hMid)

/--
The explicit decoded squarefree-boxed credit-matching certificate supplies the
count-level decoded squarefree-boxed certificate.
-/
theorem globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxed_of_credit
    (h : GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate) :
    GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate := by
  intro N
  rcases h N with ⟨decoder, offset, hCredit⟩
  refine ⟨decoder, offset, ?_⟩
  intro B decMid decTarget hB hClique hMid
  exact activeStrictMiddleCreditCapacity_of_creditMatching hB
    (hCredit B decMid hB hClique hMid)

private theorem familySize_eq_zero_of_empty
    (N : Nat) (P : Nat -> Prop) (decP : DecidablePred P)
    (hEmpty : forall a : Nat, Not (P a)) :
    @familySize N P decP = 0 := by
  unfold familySize
  induction N with
  | zero =>
      simp [countUpTo]
  | succ n ih =>
      have hp : Not (P (n + 1)) := hEmpty (n + 1)
      simp [countUpTo, hp, ih]

private theorem familySize_add_le_of_disjoint_subsets
    (N : Nat) (P Q R : Nat -> Prop)
    (decP : DecidablePred P) (decQ : DecidablePred Q) (decR : DecidablePred R)
    (hPR : forall a : Nat, P a -> R a)
    (hQR : forall a : Nat, Q a -> R a)
    (hdisj : forall a : Nat, P a -> Q a -> False) :
    @familySize N P decP + @familySize N Q decQ <= @familySize N R decR := by
  unfold familySize
  induction N with
  | zero =>
      simp [countUpTo]
  | succ n ih =>
      by_cases hp : P (n + 1)
      · have hr : R (n + 1) := hPR (n + 1) hp
        have hnq : Not (Q (n + 1)) := by
          intro hq
          exact hdisj (n + 1) hp hq
        simp [countUpTo, hp, hnq, hr]
        omega
      · by_cases hq : Q (n + 1)
        · have hr : R (n + 1) := hQR (n + 1) hq
          simp [countUpTo, hp, hq, hr]
          omega
        · by_cases hr : R (n + 1)
          · simp [countUpTo, hp, hq, hr]
            omega
          · simp [countUpTo, hp, hq, hr]
            omega

/-- A partitioned opposite-block/strict-middle certificate implies the endpoint AP/Hall certificate. -/
theorem squarefreeAPHallCertificate_of_partitioned
    (h : PartitionedSquarefreeAPHallCertificate) :
    SquarefreeAPHallCertificate := by
  intro N B decB decNbr hB hClique
  classical
  let Opp : Nat -> Prop := OppositeOutsidePart 7 B
  let Mid : Nat -> Prop := StrictMiddlePart 7 B
  let Nbr : Nat -> Prop := SquarefreeNeighborInCandidate N 7 B
  let decOpp : DecidablePred Opp := fun a => Classical.propDecidable (Opp a)
  let decMid : DecidablePred Mid := fun a => Classical.propDecidable (Mid a)
  have hcover : forall b : Nat, B b -> Opp b \/ Mid b := by
    intro b hb
    have hbOutside : CandidateOutside 7 b := (hB b hb).right
    by_cases hopp : OppositeCandidateCarrier 7 b
    · exact Or.inl (And.intro hb hopp)
    · exact Or.inr (And.intro hb (And.intro hbOutside hopp))
  have hsplit :
      @familySize N B decB <= @familySize N Opp decOpp + @familySize N Mid decMid := by
    exact familySize_le_add_of_subset_or N B Opp Mid decB decOpp decMid hcover
  have hparts := h N B decOpp decMid hB hClique
  rcases hparts with
    ⟨OppAlloc, MidAlloc, decOppAlloc, decMidAlloc,
      hOppCount, hMidCount, hOppSub, hMidSub, hDisj⟩
  have hopp :
      @familySize N Opp decOpp <= @familySize N OppAlloc decOppAlloc := by
    simpa [Opp] using hOppCount
  have hmid :
      @familySize N Mid decMid <= @familySize N MidAlloc decMidAlloc := by
    simpa [Mid] using hMidCount
  have hnbr :
      @familySize N OppAlloc decOppAlloc + @familySize N MidAlloc decMidAlloc <=
        @familySize N Nbr decNbr := by
    apply familySize_add_le_of_disjoint_subsets
      N OppAlloc MidAlloc Nbr decOppAlloc decMidAlloc decNbr
    · intro a ha
      rcases hOppSub a ha with ⟨haBox, haCand, hb⟩
      rcases hb with ⟨b, hbOpp, hedge⟩
      exact And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbOpp.left hedge)))
    · intro a ha
      rcases hMidSub a ha with ⟨haBox, haCand, hb⟩
      rcases hb with ⟨b, hbMid, hedge⟩
      exact And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbMid.left hedge)))
    · exact hDisj
  have hfinal : @familySize N B decB <= @familySize N Nbr decNbr := by
    omega
  simpa [APHallExpansionForOutsideSet, Nbr] using hfinal

/-- An allocated opposite-neighbor image implies opposite-only expansion. -/
theorem oppositeNeighborExpansion_of_allocation
    {N r : Nat} {B : Nat -> Prop}
    {decOpp : DecidablePred (OppositeOutsidePart r B)}
    {decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))}
    (hAlloc : OppositeNeighborAllocation N r B decOpp) :
    OppositeNeighborExpansion N r B decOpp decOppNbr := by
  rcases hAlloc with ⟨OppAlloc, decOppAlloc, hCount, hSub⟩
  have hAllocLeNbr :
      @familySize N OppAlloc decOppAlloc <=
        @familySize N
          (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)) decOppNbr := by
    exact familySize_mono N OppAlloc
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))
      decOppAlloc decOppNbr hSub
  have hfinal :
      @familySize N (OppositeOutsidePart r B) decOpp <=
        @familySize N
          (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)) decOppNbr := by
    omega
  simpa [OppositeNeighborExpansion] using hfinal

/-- A nearby/banded opposite-neighbor image implies an ordinary allocation image. -/
theorem oppositeNeighborAllocation_of_nearby
    {N r K : Nat} {B : Nat -> Prop}
    {decOpp : DecidablePred (OppositeOutsidePart r B)}
    (hNearby : OppositeNearbyNeighborAllocation N r K B decOpp) :
    OppositeNeighborAllocation N r B decOpp := by
  rcases hNearby with ⟨OppAlloc, decOppAlloc, hCount, hSub⟩
  exact ⟨OppAlloc, decOppAlloc, hCount, fun a ha => (hSub a ha).left⟩

/-- A matching-image certificate is a nearby/banded allocation certificate. -/
theorem oppositeNearbyNeighborAllocation_of_matchingImage
    {N r K : Nat} {B : Nat -> Prop}
    {decOpp : DecidablePred (OppositeOutsidePart r B)}
    (hB : BoundedOutsideSet N r B)
    (hMatch : OppositeNearbyMatchingImageAllocation N r K B decOpp) :
    OppositeNearbyNeighborAllocation N r K B decOpp := by
  classical
  rcases hMatch with ⟨mate, hMap, hInjective⟩
  let Image : Nat -> Prop := OppositeMatchingImage r B mate
  let decImage : DecidablePred Image := fun a => Classical.propDecidable (Image a)
  have hCount :
      @familySize N (OppositeOutsidePart r B) decOpp <=
        @familySize N Image decImage := by
    apply familySize_le_of_bounded_injective_image
      N (OppositeOutsidePart r B) Image decOpp decImage mate
    · intro b hb
      exact (hB b hb.left).left
    · intro b hb
      exact (hMap b hb).left.left
    · intro b hb
      exact Exists.intro b (And.intro hb rfl)
    · intro b1 b2 hb1 hb2 hmate
      exact hInjective b1 b2 hb1 hb2 hmate
  exact ⟨
    Image,
    decImage,
    hCount,
    by
      intro a ha
      rcases ha with ⟨b, hbOpp, hmate⟩
      simpa [hmate] using hMap b hbOpp
  ⟩

/-- A global opposite-block matching restricts to every opposite part of every outside clique. -/
theorem oppositeNearbyMatchingAPCertificate_of_global
    {r K : Nat}
    (h : GlobalOppositeNearbyMatchingAPCertificateForResidue r K) :
    OppositeNearbyMatchingAPCertificateForResidue r K := by
  intro N B decOpp hB _hClique
  rcases h N with ⟨mate, hMap, hInjective⟩
  refine Exists.intro mate ?_
  constructor
  · intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hGlobal := hMap b hbBox hbOpp.right
    rcases hGlobal with ⟨_hbBox, _hbOpp, haBox, haCand, hedge, haLe, hbLe⟩
    exact And.intro
      (And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbOpp hedge))))
      (Exists.intro b (And.intro hbOpp (And.intro haLe hbLe)))
  · intro b1 b2 hb1 hb2 hmate
    exact hInjective
      b1 b2
      (hB b1 hb1.left).left hb1.right
      (hB b2 hb2.left).left hb2.right
      hmate

/-- A finite-offset global matching is a global nearby matching. -/
theorem globalOppositeNearbyMatching_of_finiteOffset
    {r K : Nat}
    (h : GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue r K) :
    GlobalOppositeNearbyMatchingAPCertificateForResidue r K := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective⟩
  refine Exists.intro (fun b => OppositeFiniteOffsetValue b (offset b)) ?_
  constructor
  · intro b hbBox hbOpp
    exact (hMap b hbBox hbOpp).right
  · intro b1 b2 hb1Box hb1Opp hb2Box hb2Opp hmate
    exact hInjective b1 b2 hb1Box hb1Opp hb2Box hb2Opp hmate

/-- The combined finite-offset split-credit certificate projects to opposite matching. -/
theorem globalOppositeFiniteOffsetMatching_of_splitCredit
    {r K : Nat}
    (h : GlobalFiniteOffsetSplitCreditCertificateForResidue r K) :
    GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue r K := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, _hCredit⟩
  exact Exists.intro offset (And.intro hMap hInjective)

/-- The count-level finite-offset split-capacity certificate projects to matching. -/
theorem globalOppositeFiniteOffsetMatching_of_splitCapacity
    {r K : Nat}
    (h : GlobalFiniteOffsetSplitCapacityCertificateForResidue r K) :
    GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue r K := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, _hCapacity⟩
  exact Exists.intro offset (And.intro hMap hInjective)

/-- The direct partitioned-capacity certificate projects to finite-offset matching. -/
theorem globalOppositeFiniteOffsetMatching_of_partitionedCapacity
    {r K : Nat}
    (h : GlobalFiniteOffsetPartitionedCapacityCertificateForResidue r K) :
    GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue r K := by
  intro N
  rcases h N with ⟨offset, hMap, hInjective, _hCapacity⟩
  exact Exists.intro offset (And.intro hMap hInjective)

/-- The direct partitioned-capacity certificate projects to partitioned capacity. -/
theorem partitionedSquarefreeAPCapacity_of_finiteOffsetPartitionedCapacity
    {r K : Nat}
    (h : GlobalFiniteOffsetPartitionedCapacityCertificateForResidue r K) :
    PartitionedSquarefreeAPCapacityCertificateForResidue r := by
  intro N B decOpp decMid decUnion hB hClique
  rcases h N with ⟨_offset, _hMap, _hInjective, hCapacity⟩
  exact hCapacity B decOpp decMid decUnion hB hClique

/-- A residue-level matching-image certificate implies the nearby allocation certificate. -/
theorem oppositeNearbyAPAllocationCertificate_of_matching
    {r K : Nat}
    (h : OppositeNearbyMatchingAPCertificateForResidue r K) :
    OppositeNearbyAPAllocationCertificateForResidue r K := by
  intro N B decOpp hB hClique
  exact oppositeNearbyNeighborAllocation_of_matchingImage
    hB
    (h N B decOpp hB hClique)

/-- A nearby opposite allocation is already an ordinary opposite allocation. -/
theorem oppositeSquarefreeAPAllocation_of_nearby
    {r K : Nat}
    (h : OppositeNearbyAPAllocationCertificateForResidue r K) :
    OppositeSquarefreeAPAllocationCertificateForResidue r := by
  intro N B decOpp hB hClique
  exact oppositeNeighborAllocation_of_nearby (h N B decOpp hB hClique)

/-- A global finite-offset opposite matching supplies ordinary opposite allocation. -/
theorem oppositeSquarefreeAPAllocation_of_globalFiniteOffsetMatching
    {r K : Nat}
    (h : GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue r K) :
    OppositeSquarefreeAPAllocationCertificateForResidue r := by
  exact oppositeSquarefreeAPAllocation_of_nearby
    (oppositeNearbyAPAllocationCertificate_of_matching
      (oppositeNearbyMatchingAPCertificate_of_global
        (globalOppositeNearbyMatching_of_finiteOffset h)))

/-- A matching-image split certificate implies the nearby allocation-form split certificate. -/
theorem nearbyAllocatedSplitIncrementalSquarefreeAPCapacity_of_matched
    (h : NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificate) :
    NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificate := by
  rcases h with ⟨hMatched, hActive⟩
  constructor
  · exact oppositeNearbyAPAllocationCertificate_of_matching hMatched
  · exact hActive

/-- An explicit active-middle new-neighbor allocation implies incremental capacity. -/
theorem activeStrictMiddleIncrementalCapacity_of_newNeighborAllocation
    {r : Nat}
    (h : ActiveStrictMiddleNewNeighborAllocationCertificateForResidue r) :
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique hMid
  rcases h N B decOpp decMid decOppNbr hB hClique hMid with
    ⟨MidAlloc, decMidAlloc, hCount, hSub⟩
  have hAllocLeNew :
      @familySize N MidAlloc decMidAlloc <=
        @familySize N (IncrementalStrictMiddleNeighbor N r B) decNewMid := by
    exact familySize_mono N MidAlloc (IncrementalStrictMiddleNeighbor N r B)
      decMidAlloc decNewMid hSub
  have hfinal :
      @familySize N (OppositeOutsidePart r B) decOpp +
          @familySize N (StrictMiddlePart r B) decMid <=
        @familySize N
            (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)) decOppNbr +
          @familySize N (IncrementalStrictMiddleNeighbor N r B) decNewMid := by
    omega
  simpa [PartitionedIncrementalCapacity] using hfinal

/-- A concrete opposite mate plus a concrete credit matching implies incremental capacity. -/
theorem activeStrictMiddleIncrementalCapacity_of_creditMatchingFor
    {N r K : Nat} {B : Nat -> Prop}
    {decOpp : DecidablePred (OppositeOutsidePart r B)}
    {decMid : DecidablePred (StrictMiddlePart r B)}
    {decOppNbr : DecidablePred
      (SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B))}
    {decNewMid : DecidablePred (IncrementalStrictMiddleNeighbor N r B)}
    {mate : Nat -> Nat}
    (hB : BoundedOutsideSet N r B)
    (hMateMap : forall b : Nat, OppositeOutsidePart r B b ->
      OppositeNearbyNeighbor N r K B (mate b))
    (hMateInjective : forall b1 b2 : Nat,
      OppositeOutsidePart r B b1 ->
      OppositeOutsidePart r B b2 ->
      mate b1 = mate b2 ->
      b1 = b2)
    (hCreditMatch : ActiveStrictMiddleCreditMatching N r B decMid mate) :
    PartitionedIncrementalCapacity N r B decOpp decMid decOppNbr decNewMid := by
  classical
  rcases hCreditMatch with ⟨credit, hCreditMap, hCreditInjective⟩
  let OppImage : Nat -> Prop := OppositeMatchingImage r B mate
  let CreditImage : Nat -> Prop := ActiveStrictMiddleCreditImage r B credit
  let OppNbr : Nat -> Prop :=
    SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)
  let NewMid : Nat -> Prop := IncrementalStrictMiddleNeighbor N r B
  let OppReserve : Nat -> Prop := fun a => OppNbr a /\ Not (OppImage a)
  let decOppImage : DecidablePred OppImage :=
    fun a => Classical.propDecidable (OppImage a)
  let decCreditImage : DecidablePred CreditImage :=
    fun a => Classical.propDecidable (CreditImage a)
  let decOppReserve : DecidablePred OppReserve :=
    fun a => Classical.propDecidable (OppReserve a)
  have hOppCount :
      @familySize N (OppositeOutsidePart r B) decOpp <=
        @familySize N OppImage decOppImage := by
    apply familySize_le_of_bounded_injective_image
      N (OppositeOutsidePart r B) OppImage decOpp decOppImage mate
    · intro b hb
      exact (hB b hb.left).left
    · intro b hb
      exact (hMateMap b hb).left.left
    · intro b hb
      exact Exists.intro b (And.intro hb rfl)
    · intro b1 b2 hb1 hb2 hmate
      exact hMateInjective b1 b2 hb1 hb2 hmate
  have hMidCount :
      @familySize N (StrictMiddlePart r B) decMid <=
        @familySize N CreditImage decCreditImage := by
    apply familySize_le_of_bounded_injective_image
      N (StrictMiddlePart r B) CreditImage decMid decCreditImage credit
    · intro b hb
      exact (hB b hb.left).left
    · intro b hb
      rcases hCreditMap b hb with hReserve | hNew
      · exact hReserve.left.left
      · exact hNew.left.left
    · intro b hb
      exact Exists.intro b (And.intro hb rfl)
    · intro b1 b2 hb1 hb2 hcredit
      exact hCreditInjective b1 b2 hb1 hb2 hcredit
  have hCreditSplit :
      @familySize N CreditImage decCreditImage <=
        @familySize N OppReserve decOppReserve +
          @familySize N NewMid decNewMid := by
    apply familySize_le_add_of_subset_or
      N CreditImage OppReserve NewMid decCreditImage decOppReserve decNewMid
    intro a ha
    rcases ha with ⟨b, hbMid, hcredit⟩
    have htarget := hCreditMap b hbMid
    simpa [ActiveStrictMiddleCreditTarget, OppReserve, NewMid, hcredit] using htarget
  have hOppImageReserve :
      @familySize N OppImage decOppImage +
          @familySize N OppReserve decOppReserve <=
        @familySize N OppNbr decOppNbr := by
    apply familySize_add_le_of_disjoint_subsets
      N OppImage OppReserve OppNbr decOppImage decOppReserve decOppNbr
    · intro a ha
      rcases ha with ⟨b, hbOpp, hmate⟩
      simpa [OppNbr, hmate] using (hMateMap b hbOpp).left
    · intro a ha
      exact ha.left
    · intro a hImage hReserve
      exact hReserve.right hImage
  have hfinal :
      @familySize N (OppositeOutsidePart r B) decOpp +
          @familySize N (StrictMiddlePart r B) decMid <=
        @familySize N OppNbr decOppNbr + @familySize N NewMid decNewMid := by
    omega
  simpa [PartitionedIncrementalCapacity, OppNbr, NewMid] using hfinal

/-- A credit matching for active middle vertices implies incremental capacity. -/
theorem activeStrictMiddleIncrementalCapacity_of_creditMatching
    {r K : Nat}
    (hOpp : OppositeNearbyMatchingAPCertificateForResidue r K)
    (hCredit : ActiveStrictMiddleCreditMatchingCertificateForResidue r K) :
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique hMid
  rcases hOpp N B decOpp hB hClique with ⟨mate, hMateMap, hMateInjective⟩
  have hCreditMatch :
      ActiveStrictMiddleCreditMatching N r B decMid mate :=
    hCredit N B decOpp decMid mate hB hClique hMid hMateMap hMateInjective
  exact activeStrictMiddleIncrementalCapacity_of_creditMatchingFor
    (N := N) (r := r) (K := K) (B := B)
    (decOpp := decOpp) (decMid := decMid)
    (decOppNbr := decOppNbr) (decNewMid := decNewMid)
    hB hMateMap hMateInjective hCreditMatch

/-- A global opposite matching plus global-relative credit matching implies incremental capacity. -/
theorem activeStrictMiddleIncrementalCapacity_of_globalCreditMatching
    {r K : Nat}
    (hOpp : GlobalOppositeNearbyMatchingAPCertificateForResidue r K)
    (hCredit : GlobalActiveStrictMiddleCreditMatchingCertificateForResidue r K) :
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique hMid
  rcases hOpp N with ⟨mate, hGlobalMap, hGlobalInjective⟩
  have hMateMap :
      forall b : Nat, OppositeOutsidePart r B b ->
        OppositeNearbyNeighbor N r K B (mate b) := by
    intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hGlobal := hGlobalMap b hbBox hbOpp.right
    rcases hGlobal with ⟨_hbBox, _hbOpp, haBox, haCand, hedge, haLe, hbLe⟩
    exact And.intro
      (And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbOpp hedge))))
      (Exists.intro b (And.intro hbOpp (And.intro haLe hbLe)))
  have hMateInjective :
      forall b1 b2 : Nat,
        OppositeOutsidePart r B b1 ->
        OppositeOutsidePart r B b2 ->
        mate b1 = mate b2 ->
        b1 = b2 := by
    intro b1 b2 hb1 hb2 hmate
    exact hGlobalInjective
      b1 b2
      (hB b1 hb1.left).left hb1.right
      (hB b2 hb2.left).left hb2.right
      hmate
  have hCreditMatch :
      ActiveStrictMiddleCreditMatching N r B decMid mate :=
    hCredit N B decMid mate hB hClique hMid hGlobalMap hGlobalInjective
  exact activeStrictMiddleIncrementalCapacity_of_creditMatchingFor
    (N := N) (r := r) (K := K) (B := B)
    (decOpp := decOpp) (decMid := decMid)
    (decOppNbr := decOppNbr) (decNewMid := decNewMid)
    hB hMateMap hMateInjective hCreditMatch

/--
The finite-offset split-credit certificate gives the same active-middle
incremental capacity, with the opposite mate fixed by the finite offset code.
-/
theorem activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCredit
    {r K : Nat}
    (h : GlobalFiniteOffsetSplitCreditCertificateForResidue r K) :
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique hMid
  rcases h N with ⟨offset, hMap, hInjective, hCredit⟩
  let mate : Nat -> Nat := fun b => OppositeFiniteOffsetValue b (offset b)
  have hMateMap :
      forall b : Nat, OppositeOutsidePart r B b ->
        OppositeNearbyNeighbor N r K B (mate b) := by
    intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hOff := hMap b hbBox hbOpp.right
    rcases hOff with ⟨_hCode, hGlobal⟩
    rcases hGlobal with ⟨_hbBox, _hbOpp, haBox, haCand, hedge, haLe, hbLe⟩
    exact And.intro
      (And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbOpp hedge))))
      (Exists.intro b (And.intro hbOpp (And.intro haLe hbLe)))
  have hMateInjective :
      forall b1 b2 : Nat,
        OppositeOutsidePart r B b1 ->
        OppositeOutsidePart r B b2 ->
        mate b1 = mate b2 ->
        b1 = b2 := by
    intro b1 b2 hb1 hb2 hmate
    exact hInjective
      b1 b2
      (hB b1 hb1.left).left hb1.right
      (hB b2 hb2.left).left hb2.right
      hmate
  have hCreditMatch : ActiveStrictMiddleCreditMatching N r B decMid mate := by
    simpa [mate] using hCredit B decMid hB hClique hMid
  exact activeStrictMiddleIncrementalCapacity_of_creditMatchingFor
    (N := N) (r := r) (K := K) (B := B)
    (decOpp := decOpp) (decMid := decMid)
    (decOppNbr := decOppNbr) (decNewMid := decNewMid)
    (mate := mate)
    hB hMateMap hMateInjective hCreditMatch

/--
The finite-offset split-capacity certificate derives active-middle incremental
capacity without assuming an explicit credit matching function.
-/
theorem activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCapacity
    {r K : Nat}
    (h : GlobalFiniteOffsetSplitCapacityCertificateForResidue r K) :
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique hMid
  classical
  rcases h N with ⟨offset, hMap, hInjective, hCapacity⟩
  let mate : Nat -> Nat := fun b => OppositeFiniteOffsetValue b (offset b)
  have hMateMap :
      forall b : Nat, OppositeOutsidePart r B b ->
        OppositeNearbyNeighbor N r K B (mate b) := by
    intro b hbOpp
    have hbBox : InBox N b := (hB b hbOpp.left).left
    have hOff := hMap b hbBox hbOpp.right
    rcases hOff with ⟨_hCode, hGlobal⟩
    rcases hGlobal with ⟨_hbBox, _hbOpp, haBox, haCand, hedge, haLe, hbLe⟩
    exact And.intro
      (And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbOpp hedge))))
      (Exists.intro b (And.intro hbOpp (And.intro haLe hbLe)))
  have hMateInjective :
      forall b1 b2 : Nat,
        OppositeOutsidePart r B b1 ->
        OppositeOutsidePart r B b2 ->
        mate b1 = mate b2 ->
        b1 = b2 := by
    intro b1 b2 hb1 hb2 hmate
    exact hInjective
      b1 b2
      (hB b1 hb1.left).left hb1.right
      (hB b2 hb2.left).left hb2.right
      hmate
  let OppImage : Nat -> Prop := OppositeMatchingImage r B mate
  let OppNbr : Nat -> Prop :=
    SquarefreeNeighborInCandidate N r (OppositeOutsidePart r B)
  let NewMid : Nat -> Prop := IncrementalStrictMiddleNeighbor N r B
  let OppReserve : Nat -> Prop := fun a => OppNbr a /\ Not (OppImage a)
  let CreditTarget : Nat -> Prop := ActiveStrictMiddleCreditTarget N r B mate
  let decOppImage : DecidablePred OppImage :=
    fun a => Classical.propDecidable (OppImage a)
  let decOppReserve : DecidablePred OppReserve :=
    fun a => Classical.propDecidable (OppReserve a)
  let decCreditTarget : DecidablePred CreditTarget :=
    fun a => Classical.propDecidable (CreditTarget a)
  have hOppCount :
      @familySize N (OppositeOutsidePart r B) decOpp <=
        @familySize N OppImage decOppImage := by
    apply familySize_le_of_bounded_injective_image
      N (OppositeOutsidePart r B) OppImage decOpp decOppImage mate
    · intro b hb
      exact (hB b hb.left).left
    · intro b hb
      exact (hMateMap b hb).left.left
    · intro b hb
      exact Exists.intro b (And.intro hb rfl)
    · intro b1 b2 hb1 hb2 hmate
      exact hMateInjective b1 b2 hb1 hb2 hmate
  have hCreditCount :
      @familySize N (StrictMiddlePart r B) decMid <=
        @familySize N CreditTarget decCreditTarget := by
    simpa [ActiveStrictMiddleCreditCapacity, CreditTarget, mate] using
      hCapacity B decMid decCreditTarget hB hClique hMid
  have hCreditSplit :
      @familySize N CreditTarget decCreditTarget <=
        @familySize N OppReserve decOppReserve +
          @familySize N NewMid decNewMid := by
    apply familySize_le_add_of_subset_or
      N CreditTarget OppReserve NewMid decCreditTarget decOppReserve decNewMid
    intro a ha
    simpa [CreditTarget, ActiveStrictMiddleCreditTarget, OppReserve, OppNbr,
      OppImage, NewMid] using ha
  have hOppImageReserve :
      @familySize N OppImage decOppImage +
          @familySize N OppReserve decOppReserve <=
        @familySize N OppNbr decOppNbr := by
    apply familySize_add_le_of_disjoint_subsets
      N OppImage OppReserve OppNbr decOppImage decOppReserve decOppNbr
    · intro a ha
      rcases ha with ⟨b, hbOpp, hmate⟩
      simpa [OppNbr, hmate] using (hMateMap b hbOpp).left
    · intro a ha
      exact ha.left
    · intro a hImage hReserve
      exact hReserve.right hImage
  have hfinal :
      @familySize N (OppositeOutsidePart r B) decOpp +
          @familySize N (StrictMiddlePart r B) decMid <=
        @familySize N OppNbr decOppNbr + @familySize N NewMid decNewMid := by
    omega
  simpa [PartitionedIncrementalCapacity, OppNbr, NewMid] using hfinal

/-- A nearby/banded split certificate implies the allocation-form split certificate. -/
theorem allocatedSplitIncrementalSquarefreeAPCapacity_of_nearby
    (h : NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificate) :
    AllocatedSplitIncrementalSquarefreeAPCapacityCertificate := by
  rcases h with ⟨hNear, hActive⟩
  constructor
  · intro N B decOpp hB hClique
    exact oppositeNeighborAllocation_of_nearby
      (hNear N B decOpp hB hClique)
  · exact hActive

/--
The finite-offset split-capacity certificate is a middle-compressed allocation
certificate: the same finite-offset mate supplies the opposite allocation, and
the count-level credit capacity supplies the active strict-middle side.
-/
theorem allocatedSplitIncrementalSquarefreeAPCapacity_of_finiteOffsetSplitCapacity
    {K : Nat}
    (h : GlobalFiniteOffsetSplitCapacityCertificateForResidue 7 K) :
    AllocatedSplitIncrementalSquarefreeAPCapacityCertificate := by
  constructor
  · exact oppositeSquarefreeAPAllocation_of_globalFiniteOffsetMatching
      (globalOppositeFiniteOffsetMatching_of_splitCapacity h)
  · exact activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCapacity h

/-- Allocation-form opposite certificate implies the split capacity certificate. -/
theorem splitIncrementalSquarefreeAPCapacity_of_allocated
    (h : AllocatedSplitIncrementalSquarefreeAPCapacityCertificate) :
    SplitIncrementalSquarefreeAPCapacityCertificate := by
  rcases h with ⟨hOppAlloc, hActive⟩
  constructor
  · intro N B decOpp decOppNbr hB hClique
    exact oppositeNeighborExpansion_of_allocation
      (hOppAlloc N B decOpp hB hClique)
  · exact hActive

/-- The split equality-block/active-middle certificate implies incremental capacity. -/
theorem incrementalPartitionedSquarefreeAPCapacity_of_split
    (h : SplitIncrementalSquarefreeAPCapacityCertificate) :
    IncrementalPartitionedSquarefreeAPCapacityCertificate := by
  rcases h with ⟨hOpp, hActive⟩
  intro N B decOpp decMid decOppNbr decNewMid hB hClique
  classical
  by_cases hMidExists : Exists fun b : Nat => StrictMiddlePart 7 B b
  · exact hActive N B decOpp decMid decOppNbr decNewMid hB hClique hMidExists
  · have hMidEmpty : forall b : Nat, Not (StrictMiddlePart 7 B b) := by
      intro b hb
      exact hMidExists (Exists.intro b hb)
    have hNewMidEmpty : forall a : Nat, Not (IncrementalStrictMiddleNeighbor N 7 B a) := by
      intro a ha
      rcases ha.left with ⟨aBox, haCand, hb⟩
      rcases hb with ⟨b, hbMid, hedge⟩
      exact hMidEmpty b hbMid
    have hMidZero :
        @familySize N (StrictMiddlePart 7 B) decMid = 0 := by
      exact familySize_eq_zero_of_empty N (StrictMiddlePart 7 B) decMid hMidEmpty
    have hNewMidZero :
        @familySize N (IncrementalStrictMiddleNeighbor N 7 B) decNewMid = 0 := by
      exact familySize_eq_zero_of_empty N (IncrementalStrictMiddleNeighbor N 7 B)
        decNewMid hNewMidEmpty
    have hOppCap :
        @familySize N (OppositeOutsidePart 7 B) decOpp <=
          @familySize N
            (SquarefreeNeighborInCandidate N 7 (OppositeOutsidePart 7 B)) decOppNbr := by
      simpa [OppositeNeighborExpansion] using hOpp N B decOpp decOppNbr hB hClique
    have hfinal :
        @familySize N (OppositeOutsidePart 7 B) decOpp +
            @familySize N (StrictMiddlePart 7 B) decMid <=
          @familySize N
              (SquarefreeNeighborInCandidate N 7 (OppositeOutsidePart 7 B)) decOppNbr +
            @familySize N (IncrementalStrictMiddleNeighbor N 7 B) decNewMid := by
      omega
    simpa [PartitionedIncrementalCapacity] using hfinal

/-- Direct union-capacity also implies incremental/surplus capacity. -/
theorem incrementalPartitionedSquarefreeAPCapacity_of_partitionedCapacity
    (h : PartitionedSquarefreeAPCapacityCertificate) :
    IncrementalPartitionedSquarefreeAPCapacityCertificate := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique
  classical
  let OppNbr : Nat -> Prop :=
    SquarefreeNeighborInCandidate N 7 (OppositeOutsidePart 7 B)
  let NewMid : Nat -> Prop := IncrementalStrictMiddleNeighbor N 7 B
  let U : Nat -> Prop := PartitionedNeighborUnion N 7 B
  let decUnion : DecidablePred U := fun a => Classical.propDecidable (U a)
  have hcap :
      @familySize N (OppositeOutsidePart 7 B) decOpp +
          @familySize N (StrictMiddlePart 7 B) decMid <=
        @familySize N U decUnion := by
    simpa [PartitionedNeighborCapacity, U] using
      h N B decOpp decMid decUnion hB hClique
  have hUle :
      @familySize N U decUnion <=
        @familySize N OppNbr decOppNbr + @familySize N NewMid decNewMid := by
    apply familySize_le_add_of_subset_or
      N U OppNbr NewMid decUnion decOppNbr decNewMid
    intro a ha
    rcases ha with hOpp | hMid
    · exact Or.inl hOpp
    · by_cases hOpp : OppNbr a
      · exact Or.inl hOpp
      · exact Or.inr (And.intro hMid hOpp)
  have hfinal :
      @familySize N (OppositeOutsidePart 7 B) decOpp +
          @familySize N (StrictMiddlePart 7 B) decMid <=
        @familySize N OppNbr decOppNbr + @familySize N NewMid decNewMid := by
    omega
  simpa [PartitionedIncrementalCapacity, OppNbr, NewMid] using hfinal

/-- The incremental/surplus certificate implies the direct union-capacity certificate. -/
theorem partitionedSquarefreeAPCapacity_of_incremental
    (h : IncrementalPartitionedSquarefreeAPCapacityCertificate) :
    PartitionedSquarefreeAPCapacityCertificate := by
  intro N B decOpp decMid decUnion hB hClique
  classical
  let OppNbr : Nat -> Prop :=
    SquarefreeNeighborInCandidate N 7 (OppositeOutsidePart 7 B)
  let NewMid : Nat -> Prop := IncrementalStrictMiddleNeighbor N 7 B
  let decOppNbr : DecidablePred OppNbr := fun a => Classical.propDecidable (OppNbr a)
  let decNewMid : DecidablePred NewMid := fun a => Classical.propDecidable (NewMid a)
  have hinc :
      @familySize N (OppositeOutsidePart 7 B) decOpp +
          @familySize N (StrictMiddlePart 7 B) decMid <=
        @familySize N OppNbr decOppNbr + @familySize N NewMid decNewMid := by
    simpa [PartitionedIncrementalCapacity, OppNbr, NewMid] using
      h N B decOpp decMid decOppNbr decNewMid hB hClique
  have hsum_le_union :
      @familySize N OppNbr decOppNbr + @familySize N NewMid decNewMid <=
        @familySize N (PartitionedNeighborUnion N 7 B) decUnion := by
    apply familySize_add_le_of_disjoint_subsets
      N OppNbr NewMid (PartitionedNeighborUnion N 7 B)
      decOppNbr decNewMid decUnion
    · intro a ha
      exact Or.inl ha
    · intro a ha
      exact Or.inr ha.left
    · intro a ha hnew
      exact hnew.right ha
  have hfinal :
      @familySize N (OppositeOutsidePart 7 B) decOpp +
          @familySize N (StrictMiddlePart 7 B) decMid <=
        @familySize N (PartitionedNeighborUnion N 7 B) decUnion := by
    omega
  simpa [PartitionedNeighborCapacity] using hfinal

/-- Allocation-form split capacity implies direct partitioned union capacity. -/
theorem partitionedSquarefreeAPCapacity_of_allocated
    (h : AllocatedSplitIncrementalSquarefreeAPCapacityCertificate) :
    PartitionedSquarefreeAPCapacityCertificate :=
  partitionedSquarefreeAPCapacity_of_incremental
    (incrementalPartitionedSquarefreeAPCapacity_of_split
      (splitIncrementalSquarefreeAPCapacity_of_allocated h))

/--
A finite-offset split-capacity certificate implies the direct partitioned
union-capacity certificate consumed by the AP/Hall endpoint.
-/
theorem partitionedSquarefreeAPCapacity_of_finiteOffsetSplitCapacity
    {K : Nat}
    (h : GlobalFiniteOffsetSplitCapacityCertificateForResidue 7 K) :
    PartitionedSquarefreeAPCapacityCertificate :=
  partitionedSquarefreeAPCapacity_of_allocated
    (allocatedSplitIncrementalSquarefreeAPCapacity_of_finiteOffsetSplitCapacity h)

/-- A direct partitioned union-capacity certificate implies the endpoint AP/Hall certificate. -/
theorem squarefreeAPHallCertificate_of_partitionedCapacity
    (h : PartitionedSquarefreeAPCapacityCertificate) :
    SquarefreeAPHallCertificate := by
  intro N B decB decNbr hB hClique
  classical
  let Opp : Nat -> Prop := OppositeOutsidePart 7 B
  let Mid : Nat -> Prop := StrictMiddlePart 7 B
  let U : Nat -> Prop := PartitionedNeighborUnion N 7 B
  let Nbr : Nat -> Prop := SquarefreeNeighborInCandidate N 7 B
  let decOpp : DecidablePred Opp := fun a => Classical.propDecidable (Opp a)
  let decMid : DecidablePred Mid := fun a => Classical.propDecidable (Mid a)
  let decU : DecidablePred U := fun a => Classical.propDecidable (U a)
  have hcover : forall b : Nat, B b -> Opp b \/ Mid b := by
    intro b hb
    have hbOutside : CandidateOutside 7 b := (hB b hb).right
    by_cases hopp : OppositeCandidateCarrier 7 b
    · exact Or.inl (And.intro hb hopp)
    · exact Or.inr (And.intro hb (And.intro hbOutside hopp))
  have hsplit :
      @familySize N B decB <= @familySize N Opp decOpp + @familySize N Mid decMid := by
    exact familySize_le_add_of_subset_or N B Opp Mid decB decOpp decMid hcover
  have hcap :
      @familySize N Opp decOpp + @familySize N Mid decMid <= @familySize N U decU := by
    simpa [PartitionedNeighborCapacity, Opp, Mid, U] using
      h N B decOpp decMid decU hB hClique
  have hunion_le_nbr : @familySize N U decU <= @familySize N Nbr decNbr := by
    apply familySize_mono N U Nbr decU decNbr
    intro a ha
    rcases ha with haOpp | haMid
    · rcases haOpp with ⟨haBox, haCand, hb⟩
      rcases hb with ⟨b, hbOpp, hedge⟩
      exact And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbOpp.left hedge)))
    · rcases haMid with ⟨haBox, haCand, hb⟩
      rcases hb with ⟨b, hbMid, hedge⟩
      exact And.intro haBox (And.intro haCand (Exists.intro b (And.intro hbMid.left hedge)))
  have hfinal : @familySize N B decB <= @familySize N Nbr decNbr := by
    omega
  simpa [APHallExpansionForOutsideSet, Nbr] using hfinal

/--
Open analytic cut: decoded squarefree-boxed `18 mod 25` finite-offset middle
compression whose open offset side is a source-indexed typed seven-offset map
over `25*k+18`, with target boxedness, squarefree edge data, and explicit
source-index shift injectivity.  Lean induces the total typed mate from
`CandidateClassIndex`, derives target-index injectivity, target-value
injectivity, packages the squarefree-boxed codes, and constructs the decoder;
the strict-middle side is the count-level active credit capacity for the
simple typed mate.
-/
axiom finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexShiftCreditCapacityCut :
  GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexShiftCreditCapacityCertificate

/-- Current decoded squarefree-boxed certificate with typed-mate capacity transferred in Lean. -/
theorem finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCut :
  GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxed_of_typedMateCreditCapacity
    (globalFiniteOffsetMiddleCompressionEighteenTypedMateCreditCapacity_of_index
      (globalFiniteOffsetMiddleCompressionEighteenTypedMateIndexCreditCapacity_of_split
        (globalFiniteOffsetMiddleCompressionEighteenTypedMateSplitIndexCreditCapacity_of_shift
          (globalFiniteOffsetMiddleCompressionEighteenTypedMateSplitShiftIndexCreditCapacity_of_sourceIndex
            finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexShiftCreditCapacityCut))))

/-- Current squarefree-boxed decoder certificate with decoder hits carried by codes. -/
theorem finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut :
  GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoder_of_decoded
    finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCut

/-- Current boxed-code decoder certificate with squarefree edge data unpacked from codes. -/
theorem finiteOffsetMiddleCompressionEighteenBoxedDecoderCut :
  GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenBoxedDecoder_of_squarefreeBoxed
    finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut

/-- Current typed-code decoder certificate with target-box data unpacked from boxed codes. -/
theorem finiteOffsetMiddleCompressionEighteenTypedDecoderCut :
  GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenTypedDecoder_of_boxed
    finiteOffsetMiddleCompressionEighteenBoxedDecoderCut

/-- Current decoder certificate with the finite-offset code bound derived from the code type. -/
theorem finiteOffsetMiddleCompressionEighteenDecoderCut :
  GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenDecoder_of_typed
    finiteOffsetMiddleCompressionEighteenTypedDecoderCut

/-- Current target-only certificate with pairwise injectivity derived from a decoder. -/
theorem finiteOffsetMiddleCompressionEighteenTargetCut :
  GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenTarget_of_decoder
    finiteOffsetMiddleCompressionEighteenDecoderCut

/-- Current concrete `18 mod 25` core cut with source facts reattached in Lean. -/
theorem finiteOffsetMiddleCompressionEighteenCoreCut :
  GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate :=
  globalFiniteOffsetMiddleCompressionEighteenCore_of_target
    finiteOffsetMiddleCompressionEighteenTargetCut

/-- Current seven-core certificate derived from the concrete `18 mod 25` source-residue cut. -/
theorem finiteOffsetMiddleCompressionSevenCoreCut :
  GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate :=
  globalFiniteOffsetMiddleCompressionSevenCore_of_eighteenCore
    finiteOffsetMiddleCompressionEighteenCoreCut

/-- Current generic core certificate with target residues derived in Lean. -/
theorem finiteOffsetMiddleCompressionCoreCut :
  GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue 7 :=
  globalFiniteOffsetMiddleCompressionCore_of_sevenCore
    finiteOffsetMiddleCompressionSevenCoreCut

/-- Current middle-compressed capacity with the value band derived in Lean. -/
theorem finiteOffsetMiddleCompressedCapacityCut :
  GlobalFiniteOffsetSplitCapacityCertificateForResidue 7 86 :=
  globalFiniteOffsetSplitCapacity_of_middleCompressionCore
    finiteOffsetMiddleCompressionCoreCut

/-- Current direct partitioned capacity derived from middle-compressed capacity. -/
theorem partitionedSquarefreeAPCapacityCut : PartitionedSquarefreeAPCapacityCertificate :=
  partitionedSquarefreeAPCapacity_of_finiteOffsetSplitCapacity
    finiteOffsetMiddleCompressedCapacityCut

/-- Current incremental/surplus certificate derived from direct union capacity. -/
theorem incrementalPartitionedSquarefreeAPCapacityCut :
    IncrementalPartitionedSquarefreeAPCapacityCertificate :=
  incrementalPartitionedSquarefreeAPCapacity_of_partitionedCapacity
    partitionedSquarefreeAPCapacityCut

/-- Current active strict-middle surplus derived from direct union capacity. -/
theorem activeStrictMiddleIncrementalCapacityCut :
  ActiveStrictMiddleIncrementalCapacityCertificateForResidue 7 := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique _hMid
  exact incrementalPartitionedSquarefreeAPCapacityCut
    N B decOpp decMid decOppNbr decNewMid hB hClique

/-- Current endpoint AP/Hall certificate derived from the structured partitioned capacity cut. -/
theorem squarefreeAPHallCut : SquarefreeAPHallCertificate :=
  squarefreeAPHallCertificate_of_partitionedCapacity partitionedSquarefreeAPCapacityCut

end Erdos848
