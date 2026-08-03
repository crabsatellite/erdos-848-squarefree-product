import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0352
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0353
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0354
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0355
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0356
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0357
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0358
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0359
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0360
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0361
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0362
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0363
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0364
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0365
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0366
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0367
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0368
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0369
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0370
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0371
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0372
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0373
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0374
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0375
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0376
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0377
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0378
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0379
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0380
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0381
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0382
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0383

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0011
    {period : ℕ}
    (hLower : 473 ≤ period)
    (hUpper : period ≤ 504) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0473 : period = 473
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0473_primeCounting_step
  by_cases h0474 : period = 474
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0474_primeCounting_step
  by_cases h0475 : period = 475
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0475_primeCounting_step
  by_cases h0476 : period = 476
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0476_primeCounting_step
  by_cases h0477 : period = 477
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0477_primeCounting_step
  by_cases h0478 : period = 478
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0478_primeCounting_step
  by_cases h0479 : period = 479
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0479_primeCounting_step
  by_cases h0480 : period = 480
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0480_primeCounting_step
  by_cases h0481 : period = 481
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0481_primeCounting_step
  by_cases h0482 : period = 482
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0482_primeCounting_step
  by_cases h0483 : period = 483
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0483_primeCounting_step
  by_cases h0484 : period = 484
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0484_primeCounting_step
  by_cases h0485 : period = 485
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0485_primeCounting_step
  by_cases h0486 : period = 486
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0486_primeCounting_step
  by_cases h0487 : period = 487
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0487_primeCounting_step
  by_cases h0488 : period = 488
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0488_primeCounting_step
  by_cases h0489 : period = 489
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0489_primeCounting_step
  by_cases h0490 : period = 490
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0490_primeCounting_step
  by_cases h0491 : period = 491
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0491_primeCounting_step
  by_cases h0492 : period = 492
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0492_primeCounting_step
  by_cases h0493 : period = 493
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0493_primeCounting_step
  by_cases h0494 : period = 494
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0494_primeCounting_step
  by_cases h0495 : period = 495
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0495_primeCounting_step
  by_cases h0496 : period = 496
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0496_primeCounting_step
  by_cases h0497 : period = 497
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0497_primeCounting_step
  by_cases h0498 : period = 498
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0498_primeCounting_step
  by_cases h0499 : period = 499
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0499_primeCounting_step
  by_cases h0500 : period = 500
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0500_primeCounting_step
  by_cases h0501 : period = 501
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0501_primeCounting_step
  by_cases h0502 : period = 502
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0502_primeCounting_step
  by_cases h0503 : period = 503
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0503_primeCounting_step
  · have hlast : period = 504 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0504_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
