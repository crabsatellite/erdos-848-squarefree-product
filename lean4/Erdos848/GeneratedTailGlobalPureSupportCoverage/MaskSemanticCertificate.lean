import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0000
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0001
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0002
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0003
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0004
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0005
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0006
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0007
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0008
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0009
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0010
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0011
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0012
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0013
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0014
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0015
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0016
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0017
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0018
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0019
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0020
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0021
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0022
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0023
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0024
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0025
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0026
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0027
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0028
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0029
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0030
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0031
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0032
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0033
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0034
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0035
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0036
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0037
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0038
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0039
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0040
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0041
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0042
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0043
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticGroup0044

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

theorem supportQrMaskWords_eq_certified_take
    {p : ℕ} (hp : Erdos848.FiveMillionSupportPrime p)
    (hUpper : p ≤ 3469) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  have hLower : 3 ≤ p := by
    have hpTwo := hp.1.two_le
    have hpNotTwo : p ≠ 2 := by
      intro h
      subst p
      norm_num [Erdos848.FiveMillionSupportPrime] at hp
    omega
  by_cases h0 : p ≤ 41
  · exact maskSemanticGroup0000 (by omega) h0 hp
  by_cases h1 : p ≤ 89
  · exact maskSemanticGroup0001 (by omega) h1 hp
  by_cases h2 : p ≤ 149
  · exact maskSemanticGroup0002 (by omega) h2 hp
  by_cases h3 : p ≤ 199
  · exact maskSemanticGroup0003 (by omega) h3 hp
  by_cases h4 : p ≤ 269
  · exact maskSemanticGroup0004 (by omega) h4 hp
  by_cases h5 : p ≤ 337
  · exact maskSemanticGroup0005 (by omega) h5 hp
  by_cases h6 : p ≤ 401
  · exact maskSemanticGroup0006 (by omega) h6 hp
  by_cases h7 : p ≤ 463
  · exact maskSemanticGroup0007 (by omega) h7 hp
  by_cases h8 : p ≤ 547
  · exact maskSemanticGroup0008 (by omega) h8 hp
  by_cases h9 : p ≤ 613
  · exact maskSemanticGroup0009 (by omega) h9 hp
  by_cases h10 : p ≤ 677
  · exact maskSemanticGroup0010 (by omega) h10 hp
  by_cases h11 : p ≤ 757
  · exact maskSemanticGroup0011 (by omega) h11 hp
  by_cases h12 : p ≤ 829
  · exact maskSemanticGroup0012 (by omega) h12 hp
  by_cases h13 : p ≤ 911
  · exact maskSemanticGroup0013 (by omega) h13 hp
  by_cases h14 : p ≤ 991
  · exact maskSemanticGroup0014 (by omega) h14 hp
  by_cases h15 : p ≤ 1061
  · exact maskSemanticGroup0015 (by omega) h15 hp
  by_cases h16 : p ≤ 1129
  · exact maskSemanticGroup0016 (by omega) h16 hp
  by_cases h17 : p ≤ 1223
  · exact maskSemanticGroup0017 (by omega) h17 hp
  by_cases h18 : p ≤ 1297
  · exact maskSemanticGroup0018 (by omega) h18 hp
  by_cases h19 : p ≤ 1399
  · exact maskSemanticGroup0019 (by omega) h19 hp
  by_cases h20 : p ≤ 1471
  · exact maskSemanticGroup0020 (by omega) h20 hp
  by_cases h21 : p ≤ 1549
  · exact maskSemanticGroup0021 (by omega) h21 hp
  by_cases h22 : p ≤ 1613
  · exact maskSemanticGroup0022 (by omega) h22 hp
  by_cases h23 : p ≤ 1699
  · exact maskSemanticGroup0023 (by omega) h23 hp
  by_cases h24 : p ≤ 1787
  · exact maskSemanticGroup0024 (by omega) h24 hp
  by_cases h25 : p ≤ 1877
  · exact maskSemanticGroup0025 (by omega) h25 hp
  by_cases h26 : p ≤ 1979
  · exact maskSemanticGroup0026 (by omega) h26 hp
  by_cases h27 : p ≤ 2053
  · exact maskSemanticGroup0027 (by omega) h27 hp
  by_cases h28 : p ≤ 2131
  · exact maskSemanticGroup0028 (by omega) h28 hp
  by_cases h29 : p ≤ 2237
  · exact maskSemanticGroup0029 (by omega) h29 hp
  by_cases h30 : p ≤ 2309
  · exact maskSemanticGroup0030 (by omega) h30 hp
  by_cases h31 : p ≤ 2383
  · exact maskSemanticGroup0031 (by omega) h31 hp
  by_cases h32 : p ≤ 2467
  · exact maskSemanticGroup0032 (by omega) h32 hp
  by_cases h33 : p ≤ 2579
  · exact maskSemanticGroup0033 (by omega) h33 hp
  by_cases h34 : p ≤ 2671
  · exact maskSemanticGroup0034 (by omega) h34 hp
  by_cases h35 : p ≤ 2729
  · exact maskSemanticGroup0035 (by omega) h35 hp
  by_cases h36 : p ≤ 2803
  · exact maskSemanticGroup0036 (by omega) h36 hp
  by_cases h37 : p ≤ 2903
  · exact maskSemanticGroup0037 (by omega) h37 hp
  by_cases h38 : p ≤ 3001
  · exact maskSemanticGroup0038 (by omega) h38 hp
  by_cases h39 : p ≤ 3089
  · exact maskSemanticGroup0039 (by omega) h39 hp
  by_cases h40 : p ≤ 3203
  · exact maskSemanticGroup0040 (by omega) h40 hp
  by_cases h41 : p ≤ 3301
  · exact maskSemanticGroup0041 (by omega) h41 hp
  by_cases h42 : p ≤ 3371
  · exact maskSemanticGroup0042 (by omega) h42 hp
  by_cases h43 : p ≤ 3467
  · exact maskSemanticGroup0043 (by omega) h43 hp
  · exact maskSemanticGroup0044 (by omega) hUpper hp

theorem mem_baseSupportPrimes_of_supportPrime
    {p : ℕ} (hp : Erdos848.FiveMillionSupportPrime p)
    (hUpper : p ≤ 3469) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  have hLower : 3 ≤ p := by
    have hpTwo := hp.1.two_le
    have hpNotTwo : p ≠ 2 := by
      intro h
      subst p
      norm_num [Erdos848.FiveMillionSupportPrime] at hp
    omega
  by_cases hm0 : p ≤ 41
  · exact baseSupportPrimeMemGroup0000 (by omega) hm0 hp
  by_cases hm1 : p ≤ 89
  · exact baseSupportPrimeMemGroup0001 (by omega) hm1 hp
  by_cases hm2 : p ≤ 149
  · exact baseSupportPrimeMemGroup0002 (by omega) hm2 hp
  by_cases hm3 : p ≤ 199
  · exact baseSupportPrimeMemGroup0003 (by omega) hm3 hp
  by_cases hm4 : p ≤ 269
  · exact baseSupportPrimeMemGroup0004 (by omega) hm4 hp
  by_cases hm5 : p ≤ 337
  · exact baseSupportPrimeMemGroup0005 (by omega) hm5 hp
  by_cases hm6 : p ≤ 401
  · exact baseSupportPrimeMemGroup0006 (by omega) hm6 hp
  by_cases hm7 : p ≤ 463
  · exact baseSupportPrimeMemGroup0007 (by omega) hm7 hp
  by_cases hm8 : p ≤ 547
  · exact baseSupportPrimeMemGroup0008 (by omega) hm8 hp
  by_cases hm9 : p ≤ 613
  · exact baseSupportPrimeMemGroup0009 (by omega) hm9 hp
  by_cases hm10 : p ≤ 677
  · exact baseSupportPrimeMemGroup0010 (by omega) hm10 hp
  by_cases hm11 : p ≤ 757
  · exact baseSupportPrimeMemGroup0011 (by omega) hm11 hp
  by_cases hm12 : p ≤ 829
  · exact baseSupportPrimeMemGroup0012 (by omega) hm12 hp
  by_cases hm13 : p ≤ 911
  · exact baseSupportPrimeMemGroup0013 (by omega) hm13 hp
  by_cases hm14 : p ≤ 991
  · exact baseSupportPrimeMemGroup0014 (by omega) hm14 hp
  by_cases hm15 : p ≤ 1061
  · exact baseSupportPrimeMemGroup0015 (by omega) hm15 hp
  by_cases hm16 : p ≤ 1129
  · exact baseSupportPrimeMemGroup0016 (by omega) hm16 hp
  by_cases hm17 : p ≤ 1223
  · exact baseSupportPrimeMemGroup0017 (by omega) hm17 hp
  by_cases hm18 : p ≤ 1297
  · exact baseSupportPrimeMemGroup0018 (by omega) hm18 hp
  by_cases hm19 : p ≤ 1399
  · exact baseSupportPrimeMemGroup0019 (by omega) hm19 hp
  by_cases hm20 : p ≤ 1471
  · exact baseSupportPrimeMemGroup0020 (by omega) hm20 hp
  by_cases hm21 : p ≤ 1549
  · exact baseSupportPrimeMemGroup0021 (by omega) hm21 hp
  by_cases hm22 : p ≤ 1613
  · exact baseSupportPrimeMemGroup0022 (by omega) hm22 hp
  by_cases hm23 : p ≤ 1699
  · exact baseSupportPrimeMemGroup0023 (by omega) hm23 hp
  by_cases hm24 : p ≤ 1787
  · exact baseSupportPrimeMemGroup0024 (by omega) hm24 hp
  by_cases hm25 : p ≤ 1877
  · exact baseSupportPrimeMemGroup0025 (by omega) hm25 hp
  by_cases hm26 : p ≤ 1979
  · exact baseSupportPrimeMemGroup0026 (by omega) hm26 hp
  by_cases hm27 : p ≤ 2053
  · exact baseSupportPrimeMemGroup0027 (by omega) hm27 hp
  by_cases hm28 : p ≤ 2131
  · exact baseSupportPrimeMemGroup0028 (by omega) hm28 hp
  by_cases hm29 : p ≤ 2237
  · exact baseSupportPrimeMemGroup0029 (by omega) hm29 hp
  by_cases hm30 : p ≤ 2309
  · exact baseSupportPrimeMemGroup0030 (by omega) hm30 hp
  by_cases hm31 : p ≤ 2383
  · exact baseSupportPrimeMemGroup0031 (by omega) hm31 hp
  by_cases hm32 : p ≤ 2467
  · exact baseSupportPrimeMemGroup0032 (by omega) hm32 hp
  by_cases hm33 : p ≤ 2579
  · exact baseSupportPrimeMemGroup0033 (by omega) hm33 hp
  by_cases hm34 : p ≤ 2671
  · exact baseSupportPrimeMemGroup0034 (by omega) hm34 hp
  by_cases hm35 : p ≤ 2729
  · exact baseSupportPrimeMemGroup0035 (by omega) hm35 hp
  by_cases hm36 : p ≤ 2803
  · exact baseSupportPrimeMemGroup0036 (by omega) hm36 hp
  by_cases hm37 : p ≤ 2903
  · exact baseSupportPrimeMemGroup0037 (by omega) hm37 hp
  by_cases hm38 : p ≤ 3001
  · exact baseSupportPrimeMemGroup0038 (by omega) hm38 hp
  by_cases hm39 : p ≤ 3089
  · exact baseSupportPrimeMemGroup0039 (by omega) hm39 hp
  by_cases hm40 : p ≤ 3203
  · exact baseSupportPrimeMemGroup0040 (by omega) hm40 hp
  by_cases hm41 : p ≤ 3301
  · exact baseSupportPrimeMemGroup0041 (by omega) hm41 hp
  by_cases hm42 : p ≤ 3371
  · exact baseSupportPrimeMemGroup0042 (by omega) hm42 hp
  by_cases hm43 : p ≤ 3467
  · exact baseSupportPrimeMemGroup0043 (by omega) hm43 hp
  · exact baseSupportPrimeMemGroup0044 (by omega) hUpper hp

theorem supportExtensionPrime_semantic
    {p : ℕ} (hp : Erdos848.FiveMillionSupportPrime p)
    (hUpper : p ≤ 3467) :
    Nat.Prime (supportExtensionPrime p) ∧
      p < supportExtensionPrime p ∧
      ∀ q, Erdos848.FiveMillionSupportPrime q →
        p < q → supportExtensionPrime p ≤ q := by
  have hLower : 3 ≤ p := by
    have hpTwo := hp.1.two_le
    have hpNotTwo : p ≠ 2 := by
      intro h
      subst p
      norm_num [Erdos848.FiveMillionSupportPrime] at hp
    omega
  by_cases he0 : p ≤ 41
  · exact extensionSemanticGroup0000 (by omega) he0 hp
  by_cases he1 : p ≤ 89
  · exact extensionSemanticGroup0001 (by omega) he1 hp
  by_cases he2 : p ≤ 149
  · exact extensionSemanticGroup0002 (by omega) he2 hp
  by_cases he3 : p ≤ 199
  · exact extensionSemanticGroup0003 (by omega) he3 hp
  by_cases he4 : p ≤ 269
  · exact extensionSemanticGroup0004 (by omega) he4 hp
  by_cases he5 : p ≤ 337
  · exact extensionSemanticGroup0005 (by omega) he5 hp
  by_cases he6 : p ≤ 401
  · exact extensionSemanticGroup0006 (by omega) he6 hp
  by_cases he7 : p ≤ 463
  · exact extensionSemanticGroup0007 (by omega) he7 hp
  by_cases he8 : p ≤ 547
  · exact extensionSemanticGroup0008 (by omega) he8 hp
  by_cases he9 : p ≤ 613
  · exact extensionSemanticGroup0009 (by omega) he9 hp
  by_cases he10 : p ≤ 677
  · exact extensionSemanticGroup0010 (by omega) he10 hp
  by_cases he11 : p ≤ 757
  · exact extensionSemanticGroup0011 (by omega) he11 hp
  by_cases he12 : p ≤ 829
  · exact extensionSemanticGroup0012 (by omega) he12 hp
  by_cases he13 : p ≤ 911
  · exact extensionSemanticGroup0013 (by omega) he13 hp
  by_cases he14 : p ≤ 991
  · exact extensionSemanticGroup0014 (by omega) he14 hp
  by_cases he15 : p ≤ 1061
  · exact extensionSemanticGroup0015 (by omega) he15 hp
  by_cases he16 : p ≤ 1129
  · exact extensionSemanticGroup0016 (by omega) he16 hp
  by_cases he17 : p ≤ 1223
  · exact extensionSemanticGroup0017 (by omega) he17 hp
  by_cases he18 : p ≤ 1297
  · exact extensionSemanticGroup0018 (by omega) he18 hp
  by_cases he19 : p ≤ 1399
  · exact extensionSemanticGroup0019 (by omega) he19 hp
  by_cases he20 : p ≤ 1471
  · exact extensionSemanticGroup0020 (by omega) he20 hp
  by_cases he21 : p ≤ 1549
  · exact extensionSemanticGroup0021 (by omega) he21 hp
  by_cases he22 : p ≤ 1613
  · exact extensionSemanticGroup0022 (by omega) he22 hp
  by_cases he23 : p ≤ 1699
  · exact extensionSemanticGroup0023 (by omega) he23 hp
  by_cases he24 : p ≤ 1787
  · exact extensionSemanticGroup0024 (by omega) he24 hp
  by_cases he25 : p ≤ 1877
  · exact extensionSemanticGroup0025 (by omega) he25 hp
  by_cases he26 : p ≤ 1979
  · exact extensionSemanticGroup0026 (by omega) he26 hp
  by_cases he27 : p ≤ 2053
  · exact extensionSemanticGroup0027 (by omega) he27 hp
  by_cases he28 : p ≤ 2131
  · exact extensionSemanticGroup0028 (by omega) he28 hp
  by_cases he29 : p ≤ 2237
  · exact extensionSemanticGroup0029 (by omega) he29 hp
  by_cases he30 : p ≤ 2309
  · exact extensionSemanticGroup0030 (by omega) he30 hp
  by_cases he31 : p ≤ 2383
  · exact extensionSemanticGroup0031 (by omega) he31 hp
  by_cases he32 : p ≤ 2467
  · exact extensionSemanticGroup0032 (by omega) he32 hp
  by_cases he33 : p ≤ 2579
  · exact extensionSemanticGroup0033 (by omega) he33 hp
  by_cases he34 : p ≤ 2671
  · exact extensionSemanticGroup0034 (by omega) he34 hp
  by_cases he35 : p ≤ 2729
  · exact extensionSemanticGroup0035 (by omega) he35 hp
  by_cases he36 : p ≤ 2803
  · exact extensionSemanticGroup0036 (by omega) he36 hp
  by_cases he37 : p ≤ 2903
  · exact extensionSemanticGroup0037 (by omega) he37 hp
  by_cases he38 : p ≤ 3001
  · exact extensionSemanticGroup0038 (by omega) he38 hp
  by_cases he39 : p ≤ 3089
  · exact extensionSemanticGroup0039 (by omega) he39 hp
  by_cases he40 : p ≤ 3203
  · exact extensionSemanticGroup0040 (by omega) he40 hp
  by_cases he41 : p ≤ 3301
  · exact extensionSemanticGroup0041 (by omega) he41 hp
  by_cases he42 : p ≤ 3371
  · exact extensionSemanticGroup0042 (by omega) he42 hp
  · exact extensionSemanticGroup0043 (by omega) hUpper hp

end Erdos848.GeneratedTailGlobalPureSupportCoverage
