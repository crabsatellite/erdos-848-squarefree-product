import Erdos848.TailTwentyMillionRootCheckerCore

namespace Erdos848

/-!
# Congruence for generated twenty-million root-mask lookups

Generated singleton certificates use a local one-prime lookup so the kernel
does not elaborate a sixteen-prime match for every leaf. Aggregate modules
bridge that local lookup to the shared group lookup. This generic theorem is
kept separate from the checker core so changing the bridge does not invalidate
the expensive leaf certificates.
-/

theorem twentyMillionRootMaskPassesWith_congr_at
    {normal₁ normal₂ twist₁ twist₂ : ℕ → List ℕ}
    {p : ℕ}
    (hnormal : normal₁ p = normal₂ p)
    (htwist : twist₁ p = twist₂ p) :
    twentyMillionRootMaskPassesWith normal₁ twist₁ p =
      twentyMillionRootMaskPassesWith normal₂ twist₂ p := by
  unfold twentyMillionRootMaskPassesWith
    twentyMillionRootNormalMaskPassesWith
    twentyMillionRootTwistMaskPassesWith
    twentyMillionRootTwistMaskTestBit
    twentyMillionRootCompactMaskTestBit
  simp only [hnormal, htwist]

#print axioms twentyMillionRootMaskPassesWith_congr_at

end Erdos848
