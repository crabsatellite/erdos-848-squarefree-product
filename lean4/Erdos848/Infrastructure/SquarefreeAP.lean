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

/-- A residue-level matching-image certificate implies the nearby allocation certificate. -/
theorem oppositeNearbyAPAllocationCertificate_of_matching
    {r K : Nat}
    (h : OppositeNearbyMatchingAPCertificateForResidue r K) :
    OppositeNearbyAPAllocationCertificateForResidue r K := by
  intro N B decOpp hB hClique
  exact oppositeNearbyNeighborAllocation_of_matchingImage
    hB
    (h N B decOpp hB hClique)

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

/-- A credit matching for active middle vertices implies incremental capacity. -/
theorem activeStrictMiddleIncrementalCapacity_of_creditMatching
    {r K : Nat}
    (hOpp : OppositeNearbyMatchingAPCertificateForResidue r K)
    (hCredit : ActiveStrictMiddleCreditMatchingCertificateForResidue r K) :
    ActiveStrictMiddleIncrementalCapacityCertificateForResidue r := by
  intro N B decOpp decMid decOppNbr decNewMid hB hClique hMid
  classical
  rcases hOpp N B decOpp hB hClique with ⟨mate, hMateMap, hMateInjective⟩
  rcases hCredit N B decOpp decMid mate hB hClique hMid hMateMap hMateInjective with
    ⟨credit, hCreditMap, hCreditInjective⟩
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

/-- Open analytic cut: nearby/banded matching image for the equality block. -/
axiom oppositeNearbyMatchingImageCut :
  OppositeNearbyMatchingAPCertificateForResidue 7 86

/-- Open analytic cut: credit matching for active strict-middle vertices. -/
axiom activeStrictMiddleCreditMatchingCut :
  ActiveStrictMiddleCreditMatchingCertificateForResidue 7 86

/-- Current active strict-middle surplus derived from opposite matching plus credit matching. -/
theorem activeStrictMiddleIncrementalCapacityCut :
  ActiveStrictMiddleIncrementalCapacityCertificateForResidue 7 :=
  activeStrictMiddleIncrementalCapacity_of_creditMatching
    oppositeNearbyMatchingImageCut
    activeStrictMiddleCreditMatchingCut

/-- Current matching-image split certificate derived from the two explicit analytic cuts. -/
theorem nearbyMatchedSplitIncrementalSquarefreeAPCapacityCut :
    NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificate :=
  And.intro oppositeNearbyMatchingImageCut activeStrictMiddleIncrementalCapacityCut

/-- Current nearby split certificate derived from the two explicit analytic cuts. -/
theorem nearbyAllocatedSplitIncrementalSquarefreeAPCapacityCut :
    NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificate :=
  nearbyAllocatedSplitIncrementalSquarefreeAPCapacity_of_matched
    nearbyMatchedSplitIncrementalSquarefreeAPCapacityCut

/-- Current allocation-form split certificate derived from the nearby/banded cut. -/
theorem allocatedSplitIncrementalSquarefreeAPCapacityCut :
    AllocatedSplitIncrementalSquarefreeAPCapacityCertificate :=
  allocatedSplitIncrementalSquarefreeAPCapacity_of_nearby
    nearbyAllocatedSplitIncrementalSquarefreeAPCapacityCut

/-- Current split certificate derived from the allocation-form split cut. -/
theorem splitIncrementalSquarefreeAPCapacityCut :
    SplitIncrementalSquarefreeAPCapacityCertificate :=
  splitIncrementalSquarefreeAPCapacity_of_allocated
    allocatedSplitIncrementalSquarefreeAPCapacityCut

/-- Current incremental/surplus certificate derived from the split cut. -/
theorem incrementalPartitionedSquarefreeAPCapacityCut :
    IncrementalPartitionedSquarefreeAPCapacityCertificate :=
  incrementalPartitionedSquarefreeAPCapacity_of_split
    splitIncrementalSquarefreeAPCapacityCut

/-- Current union-capacity certificate derived from the incremental/surplus cut. -/
theorem partitionedSquarefreeAPCapacityCut : PartitionedSquarefreeAPCapacityCertificate :=
  partitionedSquarefreeAPCapacity_of_incremental
    incrementalPartitionedSquarefreeAPCapacityCut

/-- Current endpoint AP/Hall certificate derived from the structured partitioned capacity cut. -/
theorem squarefreeAPHallCut : SquarefreeAPHallCertificate :=
  squarefreeAPHallCertificate_of_partitionedCapacity partitionedSquarefreeAPCapacityCut

end Erdos848
