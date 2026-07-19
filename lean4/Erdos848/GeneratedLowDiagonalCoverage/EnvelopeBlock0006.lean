import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem firstEnvelope0096 :
    LowDiagonalEnvelopeRange 2530660 2544872 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2544871 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2530660) (upper := 2544871) (count := 64018) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2530660) (upper := 2544871) (count := 32015) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2530660) (upper := 2544871) (count := 15992) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2530660) (upper := 2544871) (count := 16023) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0097 :
    LowDiagonalEnvelopeRange 2544872 2558816 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2558815 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2544872) (upper := 2558815) (count := 64377) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2544872) (upper := 2558815) (count := 32191) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2544872) (upper := 2558815) (count := 16077) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2544872) (upper := 2558815) (count := 16114) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0098 :
    LowDiagonalEnvelopeRange 2558816 2572786 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2572785 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2558816) (upper := 2572785) (count := 64730) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2558816) (upper := 2572785) (count := 32370) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2558816) (upper := 2572785) (count := 16165) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2558816) (upper := 2572785) (count := 16205) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0099 :
    LowDiagonalEnvelopeRange 2572786 2586589 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2586588 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2572786) (upper := 2586588) (count := 65083) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2572786) (upper := 2586588) (count := 32543) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2572786) (upper := 2586588) (count := 16251) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2572786) (upper := 2586588) (count := 16292) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0100 :
    LowDiagonalEnvelopeRange 2586589 2600740 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2600739 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2586589) (upper := 2600739) (count := 65432) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2586589) (upper := 2600739) (count := 32722) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2586589) (upper := 2600739) (count := 16340) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2586589) (upper := 2600739) (count := 16382) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0101 :
    LowDiagonalEnvelopeRange 2600740 2615181 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2615180 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2600740) (upper := 2615180) (count := 65790) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2600740) (upper := 2615180) (count := 32897) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2600740) (upper := 2615180) (count := 16431) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2600740) (upper := 2615180) (count := 16466) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0102 :
    LowDiagonalEnvelopeRange 2615181 2629573 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2629572 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2615181) (upper := 2629572) (count := 66156) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2615181) (upper := 2629572) (count := 33080) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2615181) (upper := 2629572) (count := 16518) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2615181) (upper := 2629572) (count := 16562) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0103 :
    LowDiagonalEnvelopeRange 2629573 2643835 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2643834 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2629573) (upper := 2643834) (count := 66520) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2629573) (upper := 2643834) (count := 33260) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2629573) (upper := 2643834) (count := 16613) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2629573) (upper := 2643834) (count := 16647) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0104 :
    LowDiagonalEnvelopeRange 2643835 2658039 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2658038 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2643835) (upper := 2658038) (count := 66881) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2643835) (upper := 2658038) (count := 33441) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2643835) (upper := 2658038) (count := 16702) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2643835) (upper := 2658038) (count := 16739) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0105 :
    LowDiagonalEnvelopeRange 2658039 2672739 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2672738 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2658039) (upper := 2672738) (count := 67240) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2658039) (upper := 2672738) (count := 33623) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2658039) (upper := 2672738) (count := 16793) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2658039) (upper := 2672738) (count := 16830) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0106 :
    LowDiagonalEnvelopeRange 2672739 2687373 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2687372 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2672739) (upper := 2687372) (count := 67612) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2672739) (upper := 2687372) (count := 33806) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2672739) (upper := 2687372) (count := 16881) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2672739) (upper := 2687372) (count := 16925) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0107 :
    LowDiagonalEnvelopeRange 2687373 2702174 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2702173 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2687373) (upper := 2702173) (count := 67982) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2687373) (upper := 2702173) (count := 33995) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2687373) (upper := 2702173) (count := 16980) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2687373) (upper := 2702173) (count := 17015) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0108 :
    LowDiagonalEnvelopeRange 2702174 2716803 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2716802 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2702174) (upper := 2716802) (count := 68356) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2702174) (upper := 2716802) (count := 34184) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2702174) (upper := 2716802) (count := 17079) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2702174) (upper := 2716802) (count := 17105) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0109 :
    LowDiagonalEnvelopeRange 2716803 2731308 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2731307 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2716803) (upper := 2731307) (count := 68726) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2716803) (upper := 2731307) (count := 34369) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2716803) (upper := 2731307) (count := 17169) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2716803) (upper := 2731307) (count := 17200) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0110 :
    LowDiagonalEnvelopeRange 2731308 2746097 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2746096 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2731308) (upper := 2746096) (count := 69093) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2731308) (upper := 2746096) (count := 34555) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2731308) (upper := 2746096) (count := 17257) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2731308) (upper := 2746096) (count := 17298) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0111 :
    LowDiagonalEnvelopeRange 2746097 2761198 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2761197 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2746097) (upper := 2761197) (count := 69468) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2746097) (upper := 2761197) (count := 34736) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2746097) (upper := 2761197) (count := 17349) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2746097) (upper := 2761197) (count := 17387) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
