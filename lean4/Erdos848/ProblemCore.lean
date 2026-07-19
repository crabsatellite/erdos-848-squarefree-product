import Mathlib

namespace Erdos848

/-!
## Lightweight statement and finite-colouring core

These definitions are shared by the asymptotic manuscript and the exact
finite certificates.  Keeping them outside the large analytic module lets
kernel certificate shards compile without replaying the asymptotic proof.
-/

/-- A set has the non-squarefree product property if `a*b+1` is not
squarefree for every ordered pair in the set. -/
def NonSquarefreeProductProp (A : Finset ℕ) : Prop :=
  ∀ a ∈ A, ∀ b ∈ A, ¬ Squarefree (a * b + 1)

/-- The literal interval formulation of Erdős Problem 848 on `{1, ..., N}`. -/
def OriginalProblem848Statement (N : ℕ) : Prop :=
  ∀ A : Finset ℕ,
    A ⊆ Finset.Icc 1 N →
    NonSquarefreeProductProp A →
    A.card ≤ ((Finset.Icc 1 N).filter fun n => n % 25 = 7).card

/-- The residue-class construction in the original interval formulation. -/
def OriginalA7 (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter fun n => n % 25 = 7

/-! ## Kernel interface for the finite-prefix colouring -/

/-- A proper colouring of every diagonal candidate in `{1, ..., N}` by an
anchor in `OriginalA7 N`. -/
structure PrefixColouringState (N : ℕ) where
  colour : ℕ → ℕ
  colour_mem :
    ∀ {x : ℕ}, x ∈ Finset.Icc 1 N → ¬ Squarefree (x * x + 1) →
      colour x ∈ OriginalA7 N
  separated :
    ∀ {x y : ℕ},
      x ∈ Finset.Icc 1 N → ¬ Squarefree (x * x + 1) →
      y ∈ Finset.Icc 1 N → ¬ Squarefree (y * y + 1) →
      x ≠ y → colour x = colour y → Squarefree (x * y + 1)

/-- The exact proposition that a finite online-colouring certificate through
`L` must establish. -/
def PrefixColouringCertificate (L : ℕ) : Prop :=
  ∀ N, 1 ≤ N → N ≤ L → Nonempty (PrefixColouringState N)

/-- A checked prefix colouring gives the literal Erdős 848 upper bound. -/
theorem originalProblem_of_prefixColouringState {N : ℕ}
    (state : PrefixColouringState N) : OriginalProblem848Statement N := by
  intro A hA hprop
  change A.card ≤ (OriginalA7 N).card
  refine Finset.card_le_card_of_injOn state.colour ?_ ?_
  · intro x hx
    exact state.colour_mem (hA hx) (hprop x hx x hx)
  · intro x hx y hy hcolour
    by_contra hxy
    exact (hprop x hx y hy) <|
      state.separated (hA hx) (hprop x hx x hx)
        (hA hy) (hprop y hy y hy) hxy hcolour

/-- Soundness theorem for a finite online-colouring certificate. -/
theorem originalProblem_prefix_of_colouringCertificate {L : ℕ}
    (certificate : PrefixColouringCertificate L) :
    ∀ N, 1 ≤ N → N ≤ L → OriginalProblem848Statement N := by
  intro N hN hNL
  exact Nonempty.elim (certificate N hN hNL)
    originalProblem_of_prefixColouringState

theorem erdos848_original_N0 : OriginalProblem848Statement 0 := by
  intro A hA _hprop
  have hAempty : A = ∅ := by
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro x hx
    have hxIcc := hA hx
    simp at hxIcc
  simp [hAempty]

end Erdos848
