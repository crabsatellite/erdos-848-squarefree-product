import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0128
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0129
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0130
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0131
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0132
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0133
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0134
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0135
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0136
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0137
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0138
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0139
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0140
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0141
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0142
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0143
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0144
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0145
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0146
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0147
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0148
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0149
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0150
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0151
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0152
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0153
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0154
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0155
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0156
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0157
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0158
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodBatch0159

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodStepGroup0004
    {period : ℕ}
    (hLower : 249 ≤ period)
    (hUpper : period ≤ 280) :
    Nat.primeCounting (period * 30030 + 30030 - 1) ≤
      Nat.primeCounting (period * 30030 - 1) +
        2020 := by
  by_cases h0249 : period = 249
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0249_primeCounting_step
  by_cases h0250 : period = 250
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0250_primeCounting_step
  by_cases h0251 : period = 251
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0251_primeCounting_step
  by_cases h0252 : period = 252
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0252_primeCounting_step
  by_cases h0253 : period = 253
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0253_primeCounting_step
  by_cases h0254 : period = 254
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0254_primeCounting_step
  by_cases h0255 : period = 255
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0255_primeCounting_step
  by_cases h0256 : period = 256
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0256_primeCounting_step
  by_cases h0257 : period = 257
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0257_primeCounting_step
  by_cases h0258 : period = 258
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0258_primeCounting_step
  by_cases h0259 : period = 259
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0259_primeCounting_step
  by_cases h0260 : period = 260
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0260_primeCounting_step
  by_cases h0261 : period = 261
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0261_primeCounting_step
  by_cases h0262 : period = 262
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0262_primeCounting_step
  by_cases h0263 : period = 263
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0263_primeCounting_step
  by_cases h0264 : period = 264
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0264_primeCounting_step
  by_cases h0265 : period = 265
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0265_primeCounting_step
  by_cases h0266 : period = 266
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0266_primeCounting_step
  by_cases h0267 : period = 267
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0267_primeCounting_step
  by_cases h0268 : period = 268
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0268_primeCounting_step
  by_cases h0269 : period = 269
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0269_primeCounting_step
  by_cases h0270 : period = 270
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0270_primeCounting_step
  by_cases h0271 : period = 271
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0271_primeCounting_step
  by_cases h0272 : period = 272
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0272_primeCounting_step
  by_cases h0273 : period = 273
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0273_primeCounting_step
  by_cases h0274 : period = 274
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0274_primeCounting_step
  by_cases h0275 : period = 275
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0275_primeCounting_step
  by_cases h0276 : period = 276
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0276_primeCounting_step
  by_cases h0277 : period = 277
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0277_primeCounting_step
  by_cases h0278 : period = 278
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0278_primeCounting_step
  by_cases h0279 : period = 279
  · subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0279_primeCounting_step
  · have hlast : period = 280 := by omega
    subst period
    simpa only [Nat.reduceMul, Nat.reduceAdd, Nat.reduceSub] using
      period0280_primeCounting_step

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
