import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0288
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0289
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0290
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0291
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0292
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0293
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0294
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0295
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0296
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0297
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0298
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0299
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0300
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0301
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0302
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0303
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0304
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0305
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0306
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0307
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0308
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0309
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0310
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0311
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0312
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0313
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0314
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0315
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0316
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0317
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0318
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0319

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0009
    {period : ℕ}
    (hLower : 409 ≤ period)
    (hUpper : period ≤ 440) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0409 : period = 409
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0409_primeCounting_step
  by_cases h0410 : period = 410
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0410_primeCounting_step
  by_cases h0411 : period = 411
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0411_primeCounting_step
  by_cases h0412 : period = 412
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0412_primeCounting_step
  by_cases h0413 : period = 413
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0413_primeCounting_step
  by_cases h0414 : period = 414
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0414_primeCounting_step
  by_cases h0415 : period = 415
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0415_primeCounting_step
  by_cases h0416 : period = 416
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0416_primeCounting_step
  by_cases h0417 : period = 417
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0417_primeCounting_step
  by_cases h0418 : period = 418
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0418_primeCounting_step
  by_cases h0419 : period = 419
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0419_primeCounting_step
  by_cases h0420 : period = 420
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0420_primeCounting_step
  by_cases h0421 : period = 421
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0421_primeCounting_step
  by_cases h0422 : period = 422
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0422_primeCounting_step
  by_cases h0423 : period = 423
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0423_primeCounting_step
  by_cases h0424 : period = 424
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0424_primeCounting_step
  by_cases h0425 : period = 425
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0425_primeCounting_step
  by_cases h0426 : period = 426
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0426_primeCounting_step
  by_cases h0427 : period = 427
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0427_primeCounting_step
  by_cases h0428 : period = 428
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0428_primeCounting_step
  by_cases h0429 : period = 429
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0429_primeCounting_step
  by_cases h0430 : period = 430
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0430_primeCounting_step
  by_cases h0431 : period = 431
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0431_primeCounting_step
  by_cases h0432 : period = 432
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0432_primeCounting_step
  by_cases h0433 : period = 433
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0433_primeCounting_step
  by_cases h0434 : period = 434
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0434_primeCounting_step
  by_cases h0435 : period = 435
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0435_primeCounting_step
  by_cases h0436 : period = 436
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0436_primeCounting_step
  by_cases h0437 : period = 437
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0437_primeCounting_step
  by_cases h0438 : period = 438
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0438_primeCounting_step
  by_cases h0439 : period = 439
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0439_primeCounting_step
  · have hlast : period = 440 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0440_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
