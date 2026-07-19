import Erdos848.PrattCore
import Mathlib.NumberTheory.LegendreSymbol.Basic

namespace Erdos848

/-!
Kernel bridge for the quadratic-residue masks used by the transformed-root
support scan.  The external producer stores a position `m` precisely when
`m^(p/2) mod p = 1`; Euler's criterion below proves that every nonzero square
modulo the certified prime must be stored.
-/

def qrMaskAccepts (p m : ℕ) : Prop :=
  powMod m (p / 2) p = 1 % p

instance qrMaskAcceptsDecidable (p m : ℕ) : Decidable (qrMaskAccepts p m) := by
  unfold qrMaskAccepts
  infer_instance

theorem qrMaskAccepts_of_modEq_square
    {p m root : ℕ} (hp : Nat.Prime p) (hnotDvd : ¬ p ∣ m)
    (hsquare : root ^ 2 ≡ m [MOD p]) :
    qrMaskAccepts p m := by
  letI : Fact (Nat.Prime p) := ⟨hp⟩
  have hm0 : (m : ZMod p) ≠ 0 := by
    simpa [ZMod.natCast_eq_zero_iff] using hnotDvd
  have hmSquare : IsSquare (m : ZMod p) := by
    refine ⟨(root : ZMod p), ?_⟩
    have hcast : ((root ^ 2 : ℕ) : ZMod p) = (m : ZMod p) :=
      (ZMod.natCast_eq_natCast_iff _ _ _).2 hsquare
    simpa [pow_two] using hcast.symm
  have heuler : (m : ZMod p) ^ (p / 2) = 1 :=
    (ZMod.euler_criterion p hm0).mp hmSquare
  unfold qrMaskAccepts
  by_contra hfast
  exact (zmod_pow_ne_one_of_powMod_ne hp.pos hfast) heuler

/-- Literal finite mask for one prime over positions `1,...,M`. -/
def qrResiduesThrough (p M : ℕ) : Finset ℕ :=
  (Finset.Icc 1 M).filter fun m => qrMaskAccepts p m

theorem mem_qrResiduesThrough_of_modEq_square
    {p M m root : ℕ} (hp : Nat.Prime p)
    (hm : 1 ≤ m) (hmM : m ≤ M) (hnotDvd : ¬ p ∣ m)
    (hsquare : root ^ 2 ≡ m [MOD p]) :
    m ∈ qrResiduesThrough p M := by
  exact Finset.mem_filter.mpr
    ⟨Finset.mem_Icc.mpr ⟨hm, hmM⟩,
      qrMaskAccepts_of_modEq_square hp hnotDvd hsquare⟩

end Erdos848
