import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0000
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0001
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0002
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0003
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0004
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0005
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0006
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0007
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0008
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0009
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0010
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0011
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0012
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0013
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0014
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0015
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0016
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0017
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0018
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0019
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0020
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0021
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0022
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0023
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0024
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0025
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0026
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0027
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0028
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0029
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0030
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0031
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0032
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0033
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0034
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0035
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0036
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0037
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0038
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0039
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0040
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0041
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0042
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0043
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0044
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0045
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0046
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainSemanticGroup0047

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem kernelSupportPrimes_isChain :
    kernelSupportPrimes.IsChain (· < ·) := by
  decide

theorem kernelSupportPrimes_pairwise_lt :
    kernelSupportPrimes.Pairwise (· < ·) := by
  exact List.isChain_iff_pairwise.mp kernelSupportPrimes_isChain

theorem mem_kernelSupportPrimes_of_supportPrime
    {p : ℕ} (hp : Erdos848.FiveMillionSupportPrime p)
    (hUpper : p ≤ 27809) :
    p ∈ kernelSupportPrimes := by
  have hLower : 3 ≤ p := by
    have hpTwo := hp.1.two_le
    rcases hpTwo.eq_or_lt with h | h
    · subst p
      norm_num [Erdos848.FiveMillionSupportPrime] at hp
    · omega
  by_cases h00 : p ≤ 317
  · exact kernelSupportPrimeSemanticGroup0000 (by omega) h00 hp
  by_cases h01 : p ≤ 733
  · exact kernelSupportPrimeSemanticGroup0001 (by omega) h01 hp
  by_cases h02 : p ≤ 1181
  · exact kernelSupportPrimeSemanticGroup0002 (by omega) h02 hp
  by_cases h03 : p ≤ 1627
  · exact kernelSupportPrimeSemanticGroup0003 (by omega) h03 hp
  by_cases h04 : p ≤ 2137
  · exact kernelSupportPrimeSemanticGroup0004 (by omega) h04 hp
  by_cases h05 : p ≤ 2663
  · exact kernelSupportPrimeSemanticGroup0005 (by omega) h05 hp
  by_cases h06 : p ≤ 3181
  · exact kernelSupportPrimeSemanticGroup0006 (by omega) h06 hp
  by_cases h07 : p ≤ 3677
  · exact kernelSupportPrimeSemanticGroup0007 (by omega) h07 hp
  by_cases h08 : p ≤ 4219
  · exact kernelSupportPrimeSemanticGroup0008 (by omega) h08 hp
  by_cases h09 : p ≤ 4783
  · exact kernelSupportPrimeSemanticGroup0009 (by omega) h09 hp
  by_cases h10 : p ≤ 5333
  · exact kernelSupportPrimeSemanticGroup0010 (by omega) h10 hp
  by_cases h11 : p ≤ 5857
  · exact kernelSupportPrimeSemanticGroup0011 (by omega) h11 hp
  by_cases h12 : p ≤ 6397
  · exact kernelSupportPrimeSemanticGroup0012 (by omega) h12 hp
  by_cases h13 : p ≤ 6983
  · exact kernelSupportPrimeSemanticGroup0013 (by omega) h13 hp
  by_cases h14 : p ≤ 7577
  · exact kernelSupportPrimeSemanticGroup0014 (by omega) h14 hp
  by_cases h15 : p ≤ 8171
  · exact kernelSupportPrimeSemanticGroup0015 (by omega) h15 hp
  by_cases h16 : p ≤ 8741
  · exact kernelSupportPrimeSemanticGroup0016 (by omega) h16 hp
  by_cases h17 : p ≤ 9323
  · exact kernelSupportPrimeSemanticGroup0017 (by omega) h17 hp
  by_cases h18 : p ≤ 9871
  · exact kernelSupportPrimeSemanticGroup0018 (by omega) h18 hp
  by_cases h19 : p ≤ 10477
  · exact kernelSupportPrimeSemanticGroup0019 (by omega) h19 hp
  by_cases h20 : p ≤ 11113
  · exact kernelSupportPrimeSemanticGroup0020 (by omega) h20 hp
  by_cases h21 : p ≤ 11777
  · exact kernelSupportPrimeSemanticGroup0021 (by omega) h21 hp
  by_cases h22 : p ≤ 12343
  · exact kernelSupportPrimeSemanticGroup0022 (by omega) h22 hp
  by_cases h23 : p ≤ 12917
  · exact kernelSupportPrimeSemanticGroup0023 (by omega) h23 hp
  by_cases h24 : p ≤ 13523
  · exact kernelSupportPrimeSemanticGroup0024 (by omega) h24 hp
  by_cases h25 : p ≤ 14153
  · exact kernelSupportPrimeSemanticGroup0025 (by omega) h25 hp
  by_cases h26 : p ≤ 14767
  · exact kernelSupportPrimeSemanticGroup0026 (by omega) h26 hp
  by_cases h27 : p ≤ 15359
  · exact kernelSupportPrimeSemanticGroup0027 (by omega) h27 hp
  by_cases h28 : p ≤ 15937
  · exact kernelSupportPrimeSemanticGroup0028 (by omega) h28 hp
  by_cases h29 : p ≤ 16619
  · exact kernelSupportPrimeSemanticGroup0029 (by omega) h29 hp
  by_cases h30 : p ≤ 17257
  · exact kernelSupportPrimeSemanticGroup0030 (by omega) h30 hp
  by_cases h31 : p ≤ 17891
  · exact kernelSupportPrimeSemanticGroup0031 (by omega) h31 hp
  by_cases h32 : p ≤ 18451
  · exact kernelSupportPrimeSemanticGroup0032 (by omega) h32 hp
  by_cases h33 : p ≤ 19211
  · exact kernelSupportPrimeSemanticGroup0033 (by omega) h33 hp
  by_cases h34 : p ≤ 19813
  · exact kernelSupportPrimeSemanticGroup0034 (by omega) h34 hp
  by_cases h35 : p ≤ 20407
  · exact kernelSupportPrimeSemanticGroup0035 (by omega) h35 hp
  by_cases h36 : p ≤ 21067
  · exact kernelSupportPrimeSemanticGroup0036 (by omega) h36 hp
  by_cases h37 : p ≤ 21683
  · exact kernelSupportPrimeSemanticGroup0037 (by omega) h37 hp
  by_cases h38 : p ≤ 22291
  · exact kernelSupportPrimeSemanticGroup0038 (by omega) h38 hp
  by_cases h39 : p ≤ 22963
  · exact kernelSupportPrimeSemanticGroup0039 (by omega) h39 hp
  by_cases h40 : p ≤ 23603
  · exact kernelSupportPrimeSemanticGroup0040 (by omega) h40 hp
  by_cases h41 : p ≤ 24169
  · exact kernelSupportPrimeSemanticGroup0041 (by omega) h41 hp
  by_cases h42 : p ≤ 24919
  · exact kernelSupportPrimeSemanticGroup0042 (by omega) h42 hp
  by_cases h43 : p ≤ 25589
  · exact kernelSupportPrimeSemanticGroup0043 (by omega) h43 hp
  by_cases h44 : p ≤ 26227
  · exact kernelSupportPrimeSemanticGroup0044 (by omega) h44 hp
  by_cases h45 : p ≤ 26861
  · exact kernelSupportPrimeSemanticGroup0045 (by omega) h45 hp
  by_cases h46 : p ≤ 27551
  · exact kernelSupportPrimeSemanticGroup0046 (by omega) h46 hp
  · exact kernelSupportPrimeSemanticGroup0047 (by omega) hUpper hp

end Erdos848.GeneratedTailGlobalPureSupportCoverage
