import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0000
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0001
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0002
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0003
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0004
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0005
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0006
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0007
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0008
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0009
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0010
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0011
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0012
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0013
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0014
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0015
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0016
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0017
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0018
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0019
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0020
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0021
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0022
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0023
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0024
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0025
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0026
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0027
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0028
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0029
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0030
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0031

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0000
    {period : ℕ}
    (hLower : 121 ≤ period)
    (hUpper : period ≤ 152) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0121 : period = 121
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0121_primeCounting_step
  by_cases h0122 : period = 122
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0122_primeCounting_step
  by_cases h0123 : period = 123
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0123_primeCounting_step
  by_cases h0124 : period = 124
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0124_primeCounting_step
  by_cases h0125 : period = 125
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0125_primeCounting_step
  by_cases h0126 : period = 126
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0126_primeCounting_step
  by_cases h0127 : period = 127
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0127_primeCounting_step
  by_cases h0128 : period = 128
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0128_primeCounting_step
  by_cases h0129 : period = 129
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0129_primeCounting_step
  by_cases h0130 : period = 130
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0130_primeCounting_step
  by_cases h0131 : period = 131
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0131_primeCounting_step
  by_cases h0132 : period = 132
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0132_primeCounting_step
  by_cases h0133 : period = 133
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0133_primeCounting_step
  by_cases h0134 : period = 134
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0134_primeCounting_step
  by_cases h0135 : period = 135
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0135_primeCounting_step
  by_cases h0136 : period = 136
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0136_primeCounting_step
  by_cases h0137 : period = 137
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0137_primeCounting_step
  by_cases h0138 : period = 138
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0138_primeCounting_step
  by_cases h0139 : period = 139
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0139_primeCounting_step
  by_cases h0140 : period = 140
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0140_primeCounting_step
  by_cases h0141 : period = 141
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0141_primeCounting_step
  by_cases h0142 : period = 142
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0142_primeCounting_step
  by_cases h0143 : period = 143
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0143_primeCounting_step
  by_cases h0144 : period = 144
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0144_primeCounting_step
  by_cases h0145 : period = 145
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0145_primeCounting_step
  by_cases h0146 : period = 146
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0146_primeCounting_step
  by_cases h0147 : period = 147
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0147_primeCounting_step
  by_cases h0148 : period = 148
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0148_primeCounting_step
  by_cases h0149 : period = 149
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0149_primeCounting_step
  by_cases h0150 : period = 150
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0150_primeCounting_step
  by_cases h0151 : period = 151
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0151_primeCounting_step
  · have hlast : period = 152 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0152_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
