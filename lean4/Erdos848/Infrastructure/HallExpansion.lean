import Erdos848.Infrastructure.ResidueCertificates
import Erdos848.Infrastructure.RoughSquareDivisors
import Erdos848.Infrastructure.SquarefreeAP

/-!
# Hall-expansion compression route

For a candidate class `C_r`, decompose an admissible set as
`(A inter C_r) union B`.  If every compatible outside clique `B` has at
least `|B|` squarefree neighbors in `C_r`, then replacing `B` by those
candidate elements does not decrease size.  This file names that compression
as the main #848 endpoint cut.
-/

namespace Erdos848

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

private theorem familySize_le_candidate_part_add_outside_part
    (N r : Nat) (A : Nat -> Prop)
    (decA : DecidablePred A)
    (decCandidatePart : DecidablePred (fun a : Nat => A a /\ CandidateCarrier r a))
    (decOutsidePart : DecidablePred (BoundedOutsidePart N r A)) :
    @familySize N A decA <=
      @familySize N (fun a : Nat => A a /\ CandidateCarrier r a) decCandidatePart +
        @familySize N (BoundedOutsidePart N r A) decOutsidePart := by
  unfold familySize
  have haux :
      forall m : Nat, m <= N ->
        @countUpTo A decA m <=
          @countUpTo (fun a : Nat => A a /\ CandidateCarrier r a) decCandidatePart m +
            @countUpTo (BoundedOutsidePart N r A) decOutsidePart m := by
    intro m
    induction m with
    | zero =>
        intro _hm
        simp [countUpTo]
    | succ m ih =>
        intro hmN
        have hm_le_N : m <= N := Nat.le_trans (Nat.le_succ m) hmN
        have ih' := ih hm_le_N
        have hin : InBox N (m + 1) := And.intro (Nat.succ_pos m) hmN
        by_cases hA : A (m + 1)
        · by_cases hC : CandidateCarrier r (m + 1)
          · have hCP : (fun a : Nat => A a /\ CandidateCarrier r a) (m + 1) :=
              And.intro hA hC
            have hOutsideFalse : Not (BoundedOutsidePart N r A (m + 1)) := by
              intro hout
              exact hout.right.right hC
            simp [countUpTo, hA, hCP, hOutsideFalse]
            omega
          · have hCPFalse : Not ((fun a : Nat => A a /\ CandidateCarrier r a) (m + 1)) := by
              intro hcp
              exact hC hcp.right
            have hOutside : BoundedOutsidePart N r A (m + 1) :=
              And.intro hin (And.intro hA hC)
            simp [countUpTo, hA, hCPFalse, hOutside]
            omega
        · have hCPFalse : Not ((fun a : Nat => A a /\ CandidateCarrier r a) (m + 1)) := by
            intro hcp
            exact hA hcp.left
          have hOutsideFalse : Not (BoundedOutsidePart N r A (m + 1)) := by
            intro hout
            exact hA hout.right.left
          simp [countUpTo, hA, hCPFalse, hOutsideFalse]
          omega
  exact haux N (Nat.le_refl N)

/-- The Hall compression assembled from the finite residue and analytic layers. -/
theorem hallExpansionCut :
  SquarefreeAPHallCertificate ->
  RoughSquareDivisorCertificate ->
  AtMostCandidateBound := by
  intro hHall _hRough
  intro N A decA hA
  classical
  let B : Nat -> Prop := BoundedOutsidePart N 7 A
  let P : Nat -> Prop := fun a : Nat => A a /\ CandidateCarrier 7 a
  let H : Nat -> Prop := SquarefreeNeighborInCandidate N 7 B
  let decB : DecidablePred B := fun b => Classical.propDecidable (B b)
  let decP : DecidablePred P := fun a => Classical.propDecidable (P a)
  let decH : DecidablePred H := fun a => Classical.propDecidable (H a)
  have hsplit :
      @familySize N A decA <= @familySize N P decP + @familySize N B decB := by
    simpa [B, P, decB, decP] using
      familySize_le_candidate_part_add_outside_part N 7 A decA decP decB
  have hhall :
      @familySize N B decB <= @familySize N H decH := by
    have hcert :=
      hHall N B decB decH
        (by
          simpa [B] using boundedOutsidePart_boundedOutsideSet N 7 A)
        (by
          simpa [B] using
            boundedOutsidePart_nonSquarefreeClique_of_admissible (N := N) (r := 7) (A := A) hA)
    simpa [APHallExpansionForOutsideSet, H] using hcert
  have hinside :
      @familySize N P decP + @familySize N H decH <= candidateCount 7 N := by
    unfold candidateCount
    apply familySize_add_le_of_disjoint_subsets
      N P H (CandidateCarrier 7) decP decH inferInstance
    · intro a ha
      exact ha.right
    · intro a ha
      exact ha.right.left
    · intro a ha hha
      rcases hha with ⟨haBox, _haCand, hb⟩
      rcases hb with ⟨b, hbB, hedge⟩
      exact hA a b haBox hbB.left ha.left hbB.right.left hedge
  have hto7 : @familySize N A decA <= candidateCount 7 N := by
    omega
  exact hto7

/-- Current bound theorem: all remaining mathematical weight is audit-visible above. -/
theorem atMostCandidateBound_of_current_cuts : AtMostCandidateBound :=
  hallExpansionCut
    squarefreeAPHallCut
    roughSquareDivisor

end Erdos848
