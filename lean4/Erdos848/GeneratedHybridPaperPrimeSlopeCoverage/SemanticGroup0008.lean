import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0256
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0257
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0258
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0259
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0260
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0261
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0262
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0263
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0264
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0265
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0266
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0267
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0268
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0269
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0270
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0271
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0272
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0273
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0274
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0275
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0276
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0277
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0278
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0279
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0280
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0281
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0282
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0283
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0284
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0285
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0286
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0287

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0008
    {period : ℕ}
    (hLower : 377 ≤ period)
    (hUpper : period ≤ 408) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0377 : period = 377
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0377_primeCounting_step
  by_cases h0378 : period = 378
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0378_primeCounting_step
  by_cases h0379 : period = 379
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0379_primeCounting_step
  by_cases h0380 : period = 380
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0380_primeCounting_step
  by_cases h0381 : period = 381
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0381_primeCounting_step
  by_cases h0382 : period = 382
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0382_primeCounting_step
  by_cases h0383 : period = 383
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0383_primeCounting_step
  by_cases h0384 : period = 384
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0384_primeCounting_step
  by_cases h0385 : period = 385
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0385_primeCounting_step
  by_cases h0386 : period = 386
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0386_primeCounting_step
  by_cases h0387 : period = 387
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0387_primeCounting_step
  by_cases h0388 : period = 388
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0388_primeCounting_step
  by_cases h0389 : period = 389
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0389_primeCounting_step
  by_cases h0390 : period = 390
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0390_primeCounting_step
  by_cases h0391 : period = 391
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0391_primeCounting_step
  by_cases h0392 : period = 392
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0392_primeCounting_step
  by_cases h0393 : period = 393
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0393_primeCounting_step
  by_cases h0394 : period = 394
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0394_primeCounting_step
  by_cases h0395 : period = 395
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0395_primeCounting_step
  by_cases h0396 : period = 396
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0396_primeCounting_step
  by_cases h0397 : period = 397
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0397_primeCounting_step
  by_cases h0398 : period = 398
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0398_primeCounting_step
  by_cases h0399 : period = 399
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0399_primeCounting_step
  by_cases h0400 : period = 400
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0400_primeCounting_step
  by_cases h0401 : period = 401
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0401_primeCounting_step
  by_cases h0402 : period = 402
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0402_primeCounting_step
  by_cases h0403 : period = 403
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0403_primeCounting_step
  by_cases h0404 : period = 404
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0404_primeCounting_step
  by_cases h0405 : period = 405
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0405_primeCounting_step
  by_cases h0406 : period = 406
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0406_primeCounting_step
  by_cases h0407 : period = 407
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0407_primeCounting_step
  · have hlast : period = 408 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0408_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
