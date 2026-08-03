import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0032
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0033
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0034
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0035
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0036
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0037
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0038
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0039
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0040
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0041
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0042
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0043
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0044
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0045
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0046
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0047
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0048
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0049
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0050
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0051
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0052
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0053
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0054
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0055
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0056
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0057
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0058
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0059
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0060
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0061
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0062
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0063

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0001
    {period : ℕ}
    (hLower : 153 ≤ period)
    (hUpper : period ≤ 184) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0153 : period = 153
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0153_primeCounting_step
  by_cases h0154 : period = 154
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0154_primeCounting_step
  by_cases h0155 : period = 155
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0155_primeCounting_step
  by_cases h0156 : period = 156
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0156_primeCounting_step
  by_cases h0157 : period = 157
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0157_primeCounting_step
  by_cases h0158 : period = 158
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0158_primeCounting_step
  by_cases h0159 : period = 159
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0159_primeCounting_step
  by_cases h0160 : period = 160
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0160_primeCounting_step
  by_cases h0161 : period = 161
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0161_primeCounting_step
  by_cases h0162 : period = 162
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0162_primeCounting_step
  by_cases h0163 : period = 163
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0163_primeCounting_step
  by_cases h0164 : period = 164
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0164_primeCounting_step
  by_cases h0165 : period = 165
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0165_primeCounting_step
  by_cases h0166 : period = 166
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0166_primeCounting_step
  by_cases h0167 : period = 167
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0167_primeCounting_step
  by_cases h0168 : period = 168
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0168_primeCounting_step
  by_cases h0169 : period = 169
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0169_primeCounting_step
  by_cases h0170 : period = 170
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0170_primeCounting_step
  by_cases h0171 : period = 171
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0171_primeCounting_step
  by_cases h0172 : period = 172
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0172_primeCounting_step
  by_cases h0173 : period = 173
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0173_primeCounting_step
  by_cases h0174 : period = 174
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0174_primeCounting_step
  by_cases h0175 : period = 175
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0175_primeCounting_step
  by_cases h0176 : period = 176
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0176_primeCounting_step
  by_cases h0177 : period = 177
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0177_primeCounting_step
  by_cases h0178 : period = 178
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0178_primeCounting_step
  by_cases h0179 : period = 179
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0179_primeCounting_step
  by_cases h0180 : period = 180
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0180_primeCounting_step
  by_cases h0181 : period = 181
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0181_primeCounting_step
  by_cases h0182 : period = 182
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0182_primeCounting_step
  by_cases h0183 : period = 183
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0183_primeCounting_step
  · have hlast : period = 184 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0184_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
