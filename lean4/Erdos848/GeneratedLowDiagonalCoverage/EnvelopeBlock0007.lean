import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem firstEnvelope0112 :
    LowDiagonalEnvelopeRange 2761198 2776211 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2776210 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2761198) (upper := 2776210) (count := 69850) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2761198) (upper := 2776210) (count := 34931) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2761198) (upper := 2776210) (count := 17444) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2761198) (upper := 2776210) (count := 17487) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0113 :
    LowDiagonalEnvelopeRange 2776211 2791781 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2791780 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2776211) (upper := 2791780) (count := 70229) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2776211) (upper := 2791780) (count := 35121) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2776211) (upper := 2791780) (count := 17542) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2776211) (upper := 2791780) (count := 17579) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0114 :
    LowDiagonalEnvelopeRange 2791781 2807470 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2807469 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2791781) (upper := 2807469) (count := 70623) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2791781) (upper := 2807469) (count := 35320) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2791781) (upper := 2807469) (count := 17643) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2791781) (upper := 2807469) (count := 17677) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0115 :
    LowDiagonalEnvelopeRange 2807470 2823196 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2823195 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2807470) (upper := 2823195) (count := 71020) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2807470) (upper := 2823195) (count := 35522) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2807470) (upper := 2823195) (count := 17746) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2807470) (upper := 2823195) (count := 17776) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0116 :
    LowDiagonalEnvelopeRange 2823196 2839098 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2839097 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2823196) (upper := 2839097) (count := 71418) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2823196) (upper := 2839097) (count := 35716) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2823196) (upper := 2839097) (count := 17840) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2823196) (upper := 2839097) (count := 17876) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0117 :
    LowDiagonalEnvelopeRange 2839098 2854780 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2854779 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2839098) (upper := 2854779) (count := 71820) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2839098) (upper := 2854779) (count := 35919) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2839098) (upper := 2854779) (count := 17938) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2839098) (upper := 2854779) (count := 17981) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0118 :
    LowDiagonalEnvelopeRange 2854780 2870395 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2870394 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2854780) (upper := 2870394) (count := 72217) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2854780) (upper := 2870394) (count := 36118) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2854780) (upper := 2870394) (count := 18046) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2854780) (upper := 2870394) (count := 18072) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0119 :
    LowDiagonalEnvelopeRange 2870395 2886494 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2886493 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2870395) (upper := 2886493) (count := 72612) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2870395) (upper := 2886493) (count := 36318) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2870395) (upper := 2886493) (count := 18145) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2870395) (upper := 2886493) (count := 18173) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0120 :
    LowDiagonalEnvelopeRange 2886494 2902389 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2902388 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2886494) (upper := 2902388) (count := 73019) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2886494) (upper := 2902388) (count := 36517) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2886494) (upper := 2902388) (count := 18245) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2886494) (upper := 2902388) (count := 18272) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0121 :
    LowDiagonalEnvelopeRange 2902389 2918229 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2918228 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2902389) (upper := 2918228) (count := 73421) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2902389) (upper := 2918228) (count := 36722) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2902389) (upper := 2918228) (count := 18348) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2902389) (upper := 2918228) (count := 18374) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0122 :
    LowDiagonalEnvelopeRange 2918229 2934255 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2934254 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2918229) (upper := 2934254) (count := 73822) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2918229) (upper := 2934254) (count := 36920) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2918229) (upper := 2934254) (count := 18446) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2918229) (upper := 2934254) (count := 18474) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0123 :
    LowDiagonalEnvelopeRange 2934255 2950363 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2950362 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2934255) (upper := 2950362) (count := 74227) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2934255) (upper := 2950362) (count := 37128) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2934255) (upper := 2950362) (count := 18550) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2934255) (upper := 2950362) (count := 18578) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0124 :
    LowDiagonalEnvelopeRange 2950363 2966527 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2966526 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2950363) (upper := 2966526) (count := 74635) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2950363) (upper := 2966526) (count := 37329) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2950363) (upper := 2966526) (count := 18654) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2950363) (upper := 2966526) (count := 18675) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0125 :
    LowDiagonalEnvelopeRange 2966527 2982472 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2982471 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2966527) (upper := 2982471) (count := 75044) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2966527) (upper := 2982471) (count := 37539) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2966527) (upper := 2982471) (count := 18759) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2966527) (upper := 2982471) (count := 18780) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0126 :
    LowDiagonalEnvelopeRange 2982472 2998413 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2998412 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2982472) (upper := 2998412) (count := 75447) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2982472) (upper := 2998412) (count := 37740) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2982472) (upper := 2998412) (count := 18858) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2982472) (upper := 2998412) (count := 18882) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0127 :
    LowDiagonalEnvelopeRange 2998413 3000000 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2999999 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2998413) (upper := 2999999) (count := 75489) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2998413) (upper := 2999999) (count := 37761) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2998413) (upper := 2999999) (count := 18869) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2998413) (upper := 2999999) (count := 18892) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
