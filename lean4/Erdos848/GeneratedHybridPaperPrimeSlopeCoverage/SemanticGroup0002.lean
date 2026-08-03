import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0064
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0065
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0066
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0067
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0068
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0069
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0070
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0071
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0072
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0073
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0074
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0075
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0076
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0077
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0078
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0079
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0080
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0081
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0082
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0083
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0084
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0085
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0086
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0087
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0088
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0089
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0090
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0091
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0092
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0093
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0094
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0095

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0002
    {period : ℕ}
    (hLower : 185 ≤ period)
    (hUpper : period ≤ 216) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0185 : period = 185
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0185_primeCounting_step
  by_cases h0186 : period = 186
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0186_primeCounting_step
  by_cases h0187 : period = 187
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0187_primeCounting_step
  by_cases h0188 : period = 188
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0188_primeCounting_step
  by_cases h0189 : period = 189
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0189_primeCounting_step
  by_cases h0190 : period = 190
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0190_primeCounting_step
  by_cases h0191 : period = 191
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0191_primeCounting_step
  by_cases h0192 : period = 192
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0192_primeCounting_step
  by_cases h0193 : period = 193
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0193_primeCounting_step
  by_cases h0194 : period = 194
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0194_primeCounting_step
  by_cases h0195 : period = 195
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0195_primeCounting_step
  by_cases h0196 : period = 196
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0196_primeCounting_step
  by_cases h0197 : period = 197
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0197_primeCounting_step
  by_cases h0198 : period = 198
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0198_primeCounting_step
  by_cases h0199 : period = 199
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0199_primeCounting_step
  by_cases h0200 : period = 200
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0200_primeCounting_step
  by_cases h0201 : period = 201
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0201_primeCounting_step
  by_cases h0202 : period = 202
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0202_primeCounting_step
  by_cases h0203 : period = 203
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0203_primeCounting_step
  by_cases h0204 : period = 204
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0204_primeCounting_step
  by_cases h0205 : period = 205
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0205_primeCounting_step
  by_cases h0206 : period = 206
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0206_primeCounting_step
  by_cases h0207 : period = 207
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0207_primeCounting_step
  by_cases h0208 : period = 208
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0208_primeCounting_step
  by_cases h0209 : period = 209
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0209_primeCounting_step
  by_cases h0210 : period = 210
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0210_primeCounting_step
  by_cases h0211 : period = 211
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0211_primeCounting_step
  by_cases h0212 : period = 212
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0212_primeCounting_step
  by_cases h0213 : period = 213
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0213_primeCounting_step
  by_cases h0214 : period = 214
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0214_primeCounting_step
  by_cases h0215 : period = 215
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0215_primeCounting_step
  · have hlast : period = 216 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0216_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
