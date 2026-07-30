import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0192
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0193
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0194
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0195
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0196
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0197
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0198
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0199
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0200
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0201
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0202
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0203
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0204
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0205
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0206
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0207
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0208
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0209
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0210
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0211
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0212
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0213
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0214
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0215
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0216
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0217
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0218
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0219
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0220
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0221
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0222
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0223

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0006
    {period : ℕ}
    (hLower : 313 ≤ period)
    (hUpper : period ≤ 344) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0313 : period = 313
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0313_primeCounting_step
  by_cases h0314 : period = 314
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0314_primeCounting_step
  by_cases h0315 : period = 315
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0315_primeCounting_step
  by_cases h0316 : period = 316
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0316_primeCounting_step
  by_cases h0317 : period = 317
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0317_primeCounting_step
  by_cases h0318 : period = 318
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0318_primeCounting_step
  by_cases h0319 : period = 319
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0319_primeCounting_step
  by_cases h0320 : period = 320
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0320_primeCounting_step
  by_cases h0321 : period = 321
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0321_primeCounting_step
  by_cases h0322 : period = 322
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0322_primeCounting_step
  by_cases h0323 : period = 323
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0323_primeCounting_step
  by_cases h0324 : period = 324
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0324_primeCounting_step
  by_cases h0325 : period = 325
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0325_primeCounting_step
  by_cases h0326 : period = 326
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0326_primeCounting_step
  by_cases h0327 : period = 327
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0327_primeCounting_step
  by_cases h0328 : period = 328
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0328_primeCounting_step
  by_cases h0329 : period = 329
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0329_primeCounting_step
  by_cases h0330 : period = 330
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0330_primeCounting_step
  by_cases h0331 : period = 331
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0331_primeCounting_step
  by_cases h0332 : period = 332
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0332_primeCounting_step
  by_cases h0333 : period = 333
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0333_primeCounting_step
  by_cases h0334 : period = 334
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0334_primeCounting_step
  by_cases h0335 : period = 335
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0335_primeCounting_step
  by_cases h0336 : period = 336
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0336_primeCounting_step
  by_cases h0337 : period = 337
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0337_primeCounting_step
  by_cases h0338 : period = 338
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0338_primeCounting_step
  by_cases h0339 : period = 339
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0339_primeCounting_step
  by_cases h0340 : period = 340
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0340_primeCounting_step
  by_cases h0341 : period = 341
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0341_primeCounting_step
  by_cases h0342 : period = 342
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0342_primeCounting_step
  by_cases h0343 : period = 343
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0343_primeCounting_step
  · have hlast : period = 344 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0344_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
