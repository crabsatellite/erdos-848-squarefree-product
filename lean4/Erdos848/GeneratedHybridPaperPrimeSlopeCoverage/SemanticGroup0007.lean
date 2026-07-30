import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0224
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0225
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0226
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0227
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0228
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0229
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0230
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0231
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0232
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0233
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0234
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0235
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0236
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0237
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0238
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0239
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0240
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0241
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0242
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0243
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0244
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0245
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0246
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0247
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0248
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0249
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0250
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0251
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0252
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0253
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0254
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0255

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0007
    {period : ℕ}
    (hLower : 345 ≤ period)
    (hUpper : period ≤ 376) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0345 : period = 345
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0345_primeCounting_step
  by_cases h0346 : period = 346
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0346_primeCounting_step
  by_cases h0347 : period = 347
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0347_primeCounting_step
  by_cases h0348 : period = 348
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0348_primeCounting_step
  by_cases h0349 : period = 349
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0349_primeCounting_step
  by_cases h0350 : period = 350
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0350_primeCounting_step
  by_cases h0351 : period = 351
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0351_primeCounting_step
  by_cases h0352 : period = 352
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0352_primeCounting_step
  by_cases h0353 : period = 353
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0353_primeCounting_step
  by_cases h0354 : period = 354
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0354_primeCounting_step
  by_cases h0355 : period = 355
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0355_primeCounting_step
  by_cases h0356 : period = 356
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0356_primeCounting_step
  by_cases h0357 : period = 357
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0357_primeCounting_step
  by_cases h0358 : period = 358
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0358_primeCounting_step
  by_cases h0359 : period = 359
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0359_primeCounting_step
  by_cases h0360 : period = 360
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0360_primeCounting_step
  by_cases h0361 : period = 361
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0361_primeCounting_step
  by_cases h0362 : period = 362
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0362_primeCounting_step
  by_cases h0363 : period = 363
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0363_primeCounting_step
  by_cases h0364 : period = 364
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0364_primeCounting_step
  by_cases h0365 : period = 365
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0365_primeCounting_step
  by_cases h0366 : period = 366
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0366_primeCounting_step
  by_cases h0367 : period = 367
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0367_primeCounting_step
  by_cases h0368 : period = 368
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0368_primeCounting_step
  by_cases h0369 : period = 369
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0369_primeCounting_step
  by_cases h0370 : period = 370
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0370_primeCounting_step
  by_cases h0371 : period = 371
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0371_primeCounting_step
  by_cases h0372 : period = 372
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0372_primeCounting_step
  by_cases h0373 : period = 373
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0373_primeCounting_step
  by_cases h0374 : period = 374
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0374_primeCounting_step
  by_cases h0375 : period = 375
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0375_primeCounting_step
  · have hlast : period = 376 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0376_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
