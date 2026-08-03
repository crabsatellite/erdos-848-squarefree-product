import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0096
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0097
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0098
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0099
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0100
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0101
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0102
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0103
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0104
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0105
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0106
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0107
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0108
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0109
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0110
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0111
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0112
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0113
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0114
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0115
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0116
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0117
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0118
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0119
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0120
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0121
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0122
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0123
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0124
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0125
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0126
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0127

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0003
    {period : ℕ}
    (hLower : 217 ≤ period)
    (hUpper : period ≤ 248) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0217 : period = 217
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0217_primeCounting_step
  by_cases h0218 : period = 218
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0218_primeCounting_step
  by_cases h0219 : period = 219
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0219_primeCounting_step
  by_cases h0220 : period = 220
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0220_primeCounting_step
  by_cases h0221 : period = 221
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0221_primeCounting_step
  by_cases h0222 : period = 222
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0222_primeCounting_step
  by_cases h0223 : period = 223
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0223_primeCounting_step
  by_cases h0224 : period = 224
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0224_primeCounting_step
  by_cases h0225 : period = 225
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0225_primeCounting_step
  by_cases h0226 : period = 226
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0226_primeCounting_step
  by_cases h0227 : period = 227
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0227_primeCounting_step
  by_cases h0228 : period = 228
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0228_primeCounting_step
  by_cases h0229 : period = 229
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0229_primeCounting_step
  by_cases h0230 : period = 230
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0230_primeCounting_step
  by_cases h0231 : period = 231
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0231_primeCounting_step
  by_cases h0232 : period = 232
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0232_primeCounting_step
  by_cases h0233 : period = 233
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0233_primeCounting_step
  by_cases h0234 : period = 234
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0234_primeCounting_step
  by_cases h0235 : period = 235
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0235_primeCounting_step
  by_cases h0236 : period = 236
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0236_primeCounting_step
  by_cases h0237 : period = 237
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0237_primeCounting_step
  by_cases h0238 : period = 238
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0238_primeCounting_step
  by_cases h0239 : period = 239
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0239_primeCounting_step
  by_cases h0240 : period = 240
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0240_primeCounting_step
  by_cases h0241 : period = 241
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0241_primeCounting_step
  by_cases h0242 : period = 242
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0242_primeCounting_step
  by_cases h0243 : period = 243
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0243_primeCounting_step
  by_cases h0244 : period = 244
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0244_primeCounting_step
  by_cases h0245 : period = 245
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0245_primeCounting_step
  by_cases h0246 : period = 246
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0246_primeCounting_step
  by_cases h0247 : period = 247
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0247_primeCounting_step
  · have hlast : period = 248 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0248_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
