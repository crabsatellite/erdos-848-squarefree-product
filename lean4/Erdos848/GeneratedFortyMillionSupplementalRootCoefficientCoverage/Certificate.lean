import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0000Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0001Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0002Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0003Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0004Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0005Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0010Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0011Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0012Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0013Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0014Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0015Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0016Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0017Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0018Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0019Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0020Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0021Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0022Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0023Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0024Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0025Sound
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3LowSingleton

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def certifiedK3BandQPrimes : List Nat :=
  k3BandGroup0000QPrimes ++ (k3BandGroup0001QPrimes ++ (k3BandGroup0002QPrimes ++ (k3BandGroup0003QPrimes ++ (k3BandGroup0004QPrimes ++ (k3BandGroup0005QPrimes ++ (k3BandGroup0006QPrimes ++ (k3BandGroup0007QPrimes ++ (k3BandGroup0008QPrimes ++ (k3BandGroup0009QPrimes ++ (k3BandGroup0010QPrimes ++ (k3BandGroup0011QPrimes ++ (k3BandGroup0012QPrimes ++ (k3BandGroup0013QPrimes ++ (k3BandGroup0014QPrimes ++ (k3BandGroup0015QPrimes ++ (k3BandGroup0016QPrimes ++ (k3BandGroup0017QPrimes ++ (k3BandGroup0018QPrimes ++ (k3BandGroup0019QPrimes ++ (k3BandGroup0020QPrimes ++ (k3BandGroup0021QPrimes ++ (k3BandGroup0022QPrimes ++ (k3BandGroup0023QPrimes ++ (k3BandGroup0024QPrimes ++ (k3BandGroup0025QPrimes)))))))))))))))))))))))))

theorem certifiedK3BandQPrimes_eq :
    certifiedK3BandQPrimes =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes := by
  rfl

theorem certifiedK3BandRows_pass :
    (fortyMillionK3BandPairRowsFor certifiedK3BandQPrimes).all
      fortyMillionK3BandPairPasses = true := by
  have hAppend (left right : List Nat) :
      fortyMillionK3BandPairRowsFor (left ++ right) =
        fortyMillionK3BandPairRowsFor left ++
          fortyMillionK3BandPairRowsFor right := by
    simp [fortyMillionK3BandPairRowsFor]
  unfold certifiedK3BandQPrimes
  simp only [hAppend, List.all_append]
  rw [k3BandGroup0000CanonicalRows_pass]
  rw [k3BandGroup0001CanonicalRows_pass]
  rw [k3BandGroup0002CanonicalRows_pass]
  rw [k3BandGroup0003CanonicalRows_pass]
  rw [k3BandGroup0004CanonicalRows_pass]
  rw [k3BandGroup0005CanonicalRows_pass]
  rw [k3BandGroup0006CanonicalRows_pass]
  rw [k3BandGroup0007CanonicalRows_pass]
  rw [k3BandGroup0008CanonicalRows_pass]
  rw [k3BandGroup0009CanonicalRows_pass]
  rw [k3BandGroup0010CanonicalRows_pass]
  rw [k3BandGroup0011CanonicalRows_pass]
  rw [k3BandGroup0012CanonicalRows_pass]
  rw [k3BandGroup0013CanonicalRows_pass]
  rw [k3BandGroup0014CanonicalRows_pass]
  rw [k3BandGroup0015CanonicalRows_pass]
  rw [k3BandGroup0016CanonicalRows_pass]
  rw [k3BandGroup0017CanonicalRows_pass]
  rw [k3BandGroup0018CanonicalRows_pass]
  rw [k3BandGroup0019CanonicalRows_pass]
  rw [k3BandGroup0020CanonicalRows_pass]
  rw [k3BandGroup0021CanonicalRows_pass]
  rw [k3BandGroup0022CanonicalRows_pass]
  rw [k3BandGroup0023CanonicalRows_pass]
  rw [k3BandGroup0024CanonicalRows_pass]
  rw [k3BandGroup0025CanonicalRows_pass]
  rfl

theorem k3BandPair_root_coefficient_pass
    {p q : Nat}
    (hp : p ∈
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes)
    (hq : q ∈
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes)
    (hlt : p < q)
    (hlower : 168_000_000 < p * q *
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q)
    (hupper : p * q *
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q <
        200_000_000) :
    Erdos848.fortyMillionRootCorePrefixPasses
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
      3 5_000_000 [p, q] = true := by
  have hqCertified : q ∈ certifiedK3BandQPrimes := by
    rw [certifiedK3BandQPrimes_eq]
    exact hq
  have hrow : [p, q] ∈
      fortyMillionK3BandPairRowsFor certifiedK3BandQPrimes := by
    apply List.mem_flatMap.mpr
    refine ⟨q, hqCertified, ?_⟩
    apply List.mem_map.mpr
    refine ⟨p, ?_, rfl⟩
    apply List.mem_filter.mpr
    refine ⟨hp, ?_⟩
    simp only [decide_eq_true_eq]
    exact ⟨hlt, hlower, hupper⟩
  exact (List.all_eq_true.mp certifiedK3BandRows_pass)
    [p, q] hrow

#print axioms certifiedK3BandQPrimes_eq
#print axioms certifiedK3BandRows_pass
#print axioms k3BandPair_root_coefficient_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
