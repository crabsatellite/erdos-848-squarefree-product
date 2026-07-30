import Erdos848.TailHybridSmallPrimeDiagonal

namespace Erdos848

/-!
# Theoretical root pairs for the analytic diagonal tail

Generated finite markers store concrete square roots of `-1`.  An unbounded
argument cannot depend on a finite root table, but it also does not need the
roots computationally.  The existing Hensel theorem supplies the two roots
for every prime `p = 1 (mod 4)`; this module packages those roots in the same
sound interface used by the finite checker.
-/

private lemma zmodRootVal_sq_add_one_dvd
    {modulus : Nat} [NeZero modulus] {root : ZMod modulus}
    (hroot : root ^ 2 = -1) :
    modulus ∣ root.val ^ 2 + 1 := by
  apply (ZMod.natCast_eq_zero_iff (root.val ^ 2 + 1) modulus).mp
  rw [Nat.cast_add, Nat.cast_pow, ZMod.natCast_zmod_val, hroot]
  simp

private theorem exists_diagonalRootPairCertificateOfPrime
    (p : Nat) (hp : Nat.Prime p) (hmod : p % 4 = 1) :
    Nonempty (DiagonalRootPairCertificate p) := by
  letI : NeZero (p ^ 2) := ⟨pow_ne_zero 2 hp.ne_zero⟩
  obtain ⟨root₁, root₂, hne, hroot₁, hroot₂, _complete⟩ :=
    finite_two_roots_mod_p_squared p hp hmod
  exact ⟨
    { root₁ := root₁.val
      root₂ := root₂.val
      root₁_lt := ZMod.val_lt root₁
      root₂_lt := ZMod.val_lt root₂
      distinct := by
        intro hval
        exact hne (ZMod.val_injective (p ^ 2) hval)
      root₁_dvd := zmodRootVal_sq_add_one_dvd hroot₁
      root₂_dvd := zmodRootVal_sq_add_one_dvd hroot₂ }⟩

noncomputable def diagonalRootPairCertificateOfPrime
    (p : Nat) (hp : Nat.Prime p) (hmod : p % 4 = 1) :
    DiagonalRootPairCertificate p :=
  Classical.choice
    (exists_diagonalRootPairCertificateOfPrime p hp hmod)

theorem paperPrimeSelectedBad_card_le_theoretical
    {N p : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1) (hpFive : p ≠ 5) :
    (paperPrimeSelectedBad N p selection).card ≤
      2 * selection.smallResidues.card *
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
  exact paperPrimeSelectedBad_card_le selection hp hmod hpFive
    (diagonalRootPairCertificateOfPrime p hp hmod)

#print axioms diagonalRootPairCertificateOfPrime
#print axioms paperPrimeSelectedBad_card_le_theoretical

end Erdos848
