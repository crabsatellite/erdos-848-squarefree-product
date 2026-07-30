import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0320
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0321
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0322
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0323
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0324
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0325
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0326
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0327
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0328
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0329
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0330
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0331
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0332
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0333
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0334
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0335
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0336
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0337
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0338
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0339
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0340
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0341
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0342
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0343
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0344
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0345
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0346
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0347
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0348
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0349
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0350
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0351

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0010
    {period : ℕ}
    (hLower : 441 ≤ period)
    (hUpper : period ≤ 472) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0441 : period = 441
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0441_primeCounting_step
  by_cases h0442 : period = 442
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0442_primeCounting_step
  by_cases h0443 : period = 443
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0443_primeCounting_step
  by_cases h0444 : period = 444
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0444_primeCounting_step
  by_cases h0445 : period = 445
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0445_primeCounting_step
  by_cases h0446 : period = 446
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0446_primeCounting_step
  by_cases h0447 : period = 447
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0447_primeCounting_step
  by_cases h0448 : period = 448
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0448_primeCounting_step
  by_cases h0449 : period = 449
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0449_primeCounting_step
  by_cases h0450 : period = 450
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0450_primeCounting_step
  by_cases h0451 : period = 451
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0451_primeCounting_step
  by_cases h0452 : period = 452
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0452_primeCounting_step
  by_cases h0453 : period = 453
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0453_primeCounting_step
  by_cases h0454 : period = 454
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0454_primeCounting_step
  by_cases h0455 : period = 455
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0455_primeCounting_step
  by_cases h0456 : period = 456
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0456_primeCounting_step
  by_cases h0457 : period = 457
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0457_primeCounting_step
  by_cases h0458 : period = 458
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0458_primeCounting_step
  by_cases h0459 : period = 459
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0459_primeCounting_step
  by_cases h0460 : period = 460
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0460_primeCounting_step
  by_cases h0461 : period = 461
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0461_primeCounting_step
  by_cases h0462 : period = 462
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0462_primeCounting_step
  by_cases h0463 : period = 463
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0463_primeCounting_step
  by_cases h0464 : period = 464
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0464_primeCounting_step
  by_cases h0465 : period = 465
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0465_primeCounting_step
  by_cases h0466 : period = 466
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0466_primeCounting_step
  by_cases h0467 : period = 467
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0467_primeCounting_step
  by_cases h0468 : period = 468
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0468_primeCounting_step
  by_cases h0469 : period = 469
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0469_primeCounting_step
  by_cases h0470 : period = 470
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0470_primeCounting_step
  by_cases h0471 : period = 471
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0471_primeCounting_step
  · have hlast : period = 472 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0472_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
