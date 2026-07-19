import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem firstEnvelope0080 :
    LowDiagonalEnvelopeRange 2314350 2327369 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2327368 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2314350) (upper := 2327368) (count := 58546) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2314350) (upper := 2327368) (count := 29275) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2314350) (upper := 2327368) (count := 14622) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2314350) (upper := 2327368) (count := 14653) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0081 :
    LowDiagonalEnvelopeRange 2327369 2340551 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2340550 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2327369) (upper := 2340550) (count := 58875) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2327369) (upper := 2340550) (count := 29437) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2327369) (upper := 2340550) (count := 14705) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2327369) (upper := 2340550) (count := 14732) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0082 :
    LowDiagonalEnvelopeRange 2340551 2353733 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2353732 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2340551) (upper := 2353732) (count := 59208) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2340551) (upper := 2353732) (count := 29602) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2340551) (upper := 2353732) (count := 14789) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2340551) (upper := 2353732) (count := 14813) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0083 :
    LowDiagonalEnvelopeRange 2353733 2366884 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2366883 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2353733) (upper := 2366883) (count := 59542) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2353733) (upper := 2366883) (count := 29774) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2353733) (upper := 2366883) (count := 14872) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2353733) (upper := 2366883) (count := 14902) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0084 :
    LowDiagonalEnvelopeRange 2366884 2380097 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2380096 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2366884) (upper := 2380096) (count := 59875) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2366884) (upper := 2380096) (count := 29936) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2366884) (upper := 2380096) (count := 14956) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2366884) (upper := 2380096) (count := 14980) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0085 :
    LowDiagonalEnvelopeRange 2380097 2393646 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2393645 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2380097) (upper := 2393645) (count := 60209) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2380097) (upper := 2393645) (count := 30108) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2380097) (upper := 2393645) (count := 15043) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2380097) (upper := 2393645) (count := 15065) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0086 :
    LowDiagonalEnvelopeRange 2393646 2407408 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2407407 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2393646) (upper := 2407407) (count := 60552) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2393646) (upper := 2407407) (count := 30276) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2393646) (upper := 2407407) (count := 15125) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2393646) (upper := 2407407) (count := 15151) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0087 :
    LowDiagonalEnvelopeRange 2407408 2420915 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2420914 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2407408) (upper := 2420914) (count := 60900) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2407408) (upper := 2420914) (count := 30451) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2407408) (upper := 2420914) (count := 15212) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2407408) (upper := 2420914) (count := 15239) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0088 :
    LowDiagonalEnvelopeRange 2420915 2434466 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2434465 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2420915) (upper := 2434465) (count := 61241) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2420915) (upper := 2434465) (count := 30622) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2420915) (upper := 2434465) (count := 15298) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2420915) (upper := 2434465) (count := 15324) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0089 :
    LowDiagonalEnvelopeRange 2434466 2448117 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2448116 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2434466) (upper := 2448116) (count := 61584) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2434466) (upper := 2448116) (count := 30796) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2434466) (upper := 2448116) (count := 15386) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2434466) (upper := 2448116) (count := 15410) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0090 :
    LowDiagonalEnvelopeRange 2448117 2461922 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2461921 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2448117) (upper := 2461921) (count := 61930) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2448117) (upper := 2461921) (count := 30965) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2448117) (upper := 2461921) (count := 15470) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2448117) (upper := 2461921) (count := 15495) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0091 :
    LowDiagonalEnvelopeRange 2461922 2475612 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2475611 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2461922) (upper := 2475611) (count := 62279) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2461922) (upper := 2475611) (count := 31142) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2461922) (upper := 2475611) (count := 15556) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2461922) (upper := 2475611) (count := 15586) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0092 :
    LowDiagonalEnvelopeRange 2475612 2489333 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2489332 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2475612) (upper := 2489332) (count := 62625) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2475612) (upper := 2489332) (count := 31320) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2475612) (upper := 2489332) (count := 15647) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2475612) (upper := 2489332) (count := 15673) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0093 :
    LowDiagonalEnvelopeRange 2489333 2502991 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2502990 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2489333) (upper := 2502990) (count := 62972) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2489333) (upper := 2502990) (count := 31488) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2489333) (upper := 2502990) (count := 15732) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2489333) (upper := 2502990) (count := 15756) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0094 :
    LowDiagonalEnvelopeRange 2502991 2516863 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2516862 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2502991) (upper := 2516862) (count := 63318) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2502991) (upper := 2516862) (count := 31661) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2502991) (upper := 2516862) (count := 15814) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2502991) (upper := 2516862) (count := 15847) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0095 :
    LowDiagonalEnvelopeRange 2516863 2530660 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2530659 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2516863) (upper := 2530659) (count := 63669) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2516863) (upper := 2530659) (count := 31840) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2516863) (upper := 2530659) (count := 15902) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2516863) (upper := 2530659) (count := 15938) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
