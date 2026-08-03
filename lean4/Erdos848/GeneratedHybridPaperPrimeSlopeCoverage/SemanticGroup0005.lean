import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0160
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0161
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0162
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0163
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0164
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0165
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0166
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0167
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0168
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0169
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0170
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0171
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0172
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0173
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0174
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0175
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0176
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0177
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0178
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0179
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0180
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0181
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0182
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0183
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0184
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0185
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0186
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0187
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0188
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0189
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0190
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0191

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0005
    {period : ℕ}
    (hLower : 281 ≤ period)
    (hUpper : period ≤ 312) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0281 : period = 281
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0281_primeCounting_step
  by_cases h0282 : period = 282
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0282_primeCounting_step
  by_cases h0283 : period = 283
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0283_primeCounting_step
  by_cases h0284 : period = 284
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0284_primeCounting_step
  by_cases h0285 : period = 285
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0285_primeCounting_step
  by_cases h0286 : period = 286
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0286_primeCounting_step
  by_cases h0287 : period = 287
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0287_primeCounting_step
  by_cases h0288 : period = 288
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0288_primeCounting_step
  by_cases h0289 : period = 289
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0289_primeCounting_step
  by_cases h0290 : period = 290
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0290_primeCounting_step
  by_cases h0291 : period = 291
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0291_primeCounting_step
  by_cases h0292 : period = 292
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0292_primeCounting_step
  by_cases h0293 : period = 293
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0293_primeCounting_step
  by_cases h0294 : period = 294
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0294_primeCounting_step
  by_cases h0295 : period = 295
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0295_primeCounting_step
  by_cases h0296 : period = 296
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0296_primeCounting_step
  by_cases h0297 : period = 297
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0297_primeCounting_step
  by_cases h0298 : period = 298
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0298_primeCounting_step
  by_cases h0299 : period = 299
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0299_primeCounting_step
  by_cases h0300 : period = 300
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0300_primeCounting_step
  by_cases h0301 : period = 301
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0301_primeCounting_step
  by_cases h0302 : period = 302
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0302_primeCounting_step
  by_cases h0303 : period = 303
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0303_primeCounting_step
  by_cases h0304 : period = 304
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0304_primeCounting_step
  by_cases h0305 : period = 305
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0305_primeCounting_step
  by_cases h0306 : period = 306
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0306_primeCounting_step
  by_cases h0307 : period = 307
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0307_primeCounting_step
  by_cases h0308 : period = 308
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0308_primeCounting_step
  by_cases h0309 : period = 309
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0309_primeCounting_step
  by_cases h0310 : period = 310
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0310_primeCounting_step
  by_cases h0311 : period = 311
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0311_primeCounting_step
  · have hlast : period = 312 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0312_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
