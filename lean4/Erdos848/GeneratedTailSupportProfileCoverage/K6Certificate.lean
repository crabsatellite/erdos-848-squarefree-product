import Erdos848.GeneratedTailSupportProfileCoverage.K6PrefixGroup0000
import Erdos848.GeneratedTailSupportProfileCoverage.K6PrefixGroup0001
import Erdos848.GeneratedTailSupportProfileCoverage.K6PrefixGroup0002
import Erdos848.GeneratedTailSupportProfileCoverage.K6PrefixGroup0003

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6CertifiedPrefixes : List (List ℕ) :=
  k6PrefixGroup0000 ++
  k6PrefixGroup0001 ++
  k6PrefixGroup0002 ++
  k6PrefixGroup0003

theorem k6CertifiedPrefixes_eq :
    k6CertifiedPrefixes = Erdos848.fiveMillionOddRootK6FeasiblePrefixes := by
  decide

theorem k6CertifiedPrefixes_pass :
    k6CertifiedPrefixes.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 30) = true := by
  simp only [k6CertifiedPrefixes, List.all_append]
  rw [k6PrefixGroup0000_passes]
  rw [k6PrefixGroup0001_passes]
  rw [k6PrefixGroup0002_passes]
  rw [k6PrefixGroup0003_passes]
  decide

theorem k6FeasiblePrefixes_pass :
    Erdos848.fiveMillionOddRootK6FeasiblePrefixes.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 30) = true := by
  rw [← k6CertifiedPrefixes_eq]
  exact k6CertifiedPrefixes_pass

#print axioms k6FeasiblePrefixes_pass

end Erdos848.GeneratedTailSupportProfileCoverage
