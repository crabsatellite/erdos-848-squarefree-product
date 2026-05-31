import Erdos848.Basic

/-!
# Residue-certificate layer

The first residue fact is kernel-local: in the two candidate classes
`7 mod 25` and `18 mod 25`, every pair has product plus one divisible by
`5^2`.  This closes the sharpness side of #848 without a finite-search cut.
-/

namespace Erdos848

/-- Convert a modulo-`25` zero certificate into the local `5^2` divisor form. -/
private theorem squareDivides_five_of_mod25_zero {n : Nat} (hmod : n % 25 = 0) :
    SquareDivides 5 n := by
  unfold SquareDivides
  have hdvd := Nat.dvd_of_mod_eq_zero hmod
  match hdvd with
  | Exists.intro k hk =>
      refine Exists.intro k ?_
      omega

/-- A local `5^2` divisor forces the product to be zero modulo `25`. -/
private theorem mod25_zero_of_squareDivides_five {n : Nat} (hdiv : SquareDivides 5 n) :
    n % 25 = 0 := by
  unfold SquareDivides at hdiv
  match hdiv with
  | Exists.intro k hk =>
      rw [hk]
      omega

/-- If both factors lie in `7 mod 25`, then `5^2 | a*b+1`. -/
theorem squareDivides_five_mul_add_one_of_candidate_seven
    {a b : Nat} (ha : CandidateCarrier 7 a) (hb : CandidateCarrier 7 b) :
    SquareDivides 5 (a * b + 1) := by
  apply squareDivides_five_of_mod25_zero
  unfold CandidateCarrier at ha hb
  rw [Nat.add_mod, Nat.mul_mod, ha, hb]

/-- If both factors lie in `18 mod 25`, then `5^2 | a*b+1`. -/
theorem squareDivides_five_mul_add_one_of_candidate_eighteen
    {a b : Nat} (ha : CandidateCarrier 18 a) (hb : CandidateCarrier 18 b) :
    SquareDivides 5 (a * b + 1) := by
  apply squareDivides_five_of_mod25_zero
  unfold CandidateCarrier at ha hb
  rw [Nat.add_mod, Nat.mul_mod, ha, hb]

/-- Cross-pairs from `7 mod 25` and `18 mod 25` are not killed by `5^2`. -/
theorem not_squareDivides_five_mul_add_one_of_candidate_seven_eighteen
    {a b : Nat} (ha : CandidateCarrier 7 a) (hb : CandidateCarrier 18 b) :
    Not (SquareDivides 5 (a * b + 1)) := by
  intro hdiv
  have hzero : (a * b + 1) % 25 = 0 :=
    mod25_zero_of_squareDivides_five hdiv
  have htwo : (a * b + 1) % 25 = 2 := by
    unfold CandidateCarrier at ha hb
    rw [Nat.add_mod, Nat.mul_mod, ha, hb]
  omega

/-- Cross-pairs from `18 mod 25` and `7 mod 25` are not killed by `5^2`. -/
theorem not_squareDivides_five_mul_add_one_of_candidate_eighteen_seven
    {a b : Nat} (ha : CandidateCarrier 18 a) (hb : CandidateCarrier 7 b) :
    Not (SquareDivides 5 (a * b + 1)) := by
  intro hdiv
  have hzero : (a * b + 1) % 25 = 0 :=
    mod25_zero_of_squareDivides_five hdiv
  have htwo : (a * b + 1) % 25 = 2 := by
    unfold CandidateCarrier at ha hb
    rw [Nat.add_mod, Nat.mul_mod, ha, hb]
  omega

/-- The two `5^2` root classes are self-obstructed against squarefreeness. -/
def ResidueSecondLayerCertificate : Prop :=
  forall a : Nat,
    (CandidateCarrier 7 a \/ CandidateCarrier 18 a) ->
    Not (Squarefree (a * a + 1))

/-- Candidate residue classes `7 mod 25` and `18 mod 25` are admissible. -/
theorem residueCandidateSharp : CandidateSharp := by
  intro N r hr a b _haBox _hbBox ha hb hsf
  unfold ForbiddenSquarefreeEdge at hsf
  cases hr with
  | inl h7 =>
      subst r
      exact hsf 5 (by omega) (squareDivides_five_mul_add_one_of_candidate_seven ha hb)
  | inr h18 =>
      subst r
      exact hsf 5 (by omega) (squareDivides_five_mul_add_one_of_candidate_eighteen ha hb)

/-- Kernel-local self-obstruction for the two candidate `5^2` root classes. -/
theorem residueSecondLayer : ResidueSecondLayerCertificate := by
  intro a ha hsf
  cases ha with
  | inl h7 =>
      exact hsf 5 (by omega) (squareDivides_five_mul_add_one_of_candidate_seven h7 h7)
  | inr h18 =>
      exact hsf 5 (by omega) (squareDivides_five_mul_add_one_of_candidate_eighteen h18 h18)

end Erdos848
