import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem secondEnvelope0016 :
    LowDiagonalEnvelopeRange 3262137 3278667 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3278666 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3262137) (upper := 3278666) (count := 82515) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3262137) (upper := 3278666) (count := 41278) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3262137) (upper := 3278666) (count := 20622) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3262137) (upper := 3278666) (count := 20656) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0017 :
    LowDiagonalEnvelopeRange 3278667 3295505 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3295504 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3278667) (upper := 3295504) (count := 82933) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3278667) (upper := 3295504) (count := 41485) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3278667) (upper := 3295504) (count := 20725) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3278667) (upper := 3295504) (count := 20760) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0018 :
    LowDiagonalEnvelopeRange 3295505 3312600 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3312599 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3295505) (upper := 3312599) (count := 83359) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3295505) (upper := 3312599) (count := 41697) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3295505) (upper := 3312599) (count := 20831) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3295505) (upper := 3312599) (count := 20866) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0019 :
    LowDiagonalEnvelopeRange 3312600 3329896 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3329895 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3312600) (upper := 3329895) (count := 83792) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3312600) (upper := 3329895) (count := 41916) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3312600) (upper := 3329895) (count := 20943) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3312600) (upper := 3329895) (count := 20973) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0020 :
    LowDiagonalEnvelopeRange 3329896 3347115 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3347114 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3329896) (upper := 3347114) (count := 84229) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3329896) (upper := 3347114) (count := 42128) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3329896) (upper := 3347114) (count := 21047) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3329896) (upper := 3347114) (count := 21081) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0021 :
    LowDiagonalEnvelopeRange 3347115 3364466 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3364465 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3347115) (upper := 3364465) (count := 84665) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3347115) (upper := 3364465) (count := 42347) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3347115) (upper := 3364465) (count := 21160) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3347115) (upper := 3364465) (count := 21187) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0022 :
    LowDiagonalEnvelopeRange 3364466 3381760 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3381759 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3364466) (upper := 3381759) (count := 85104) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3364466) (upper := 3381759) (count := 42566) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3364466) (upper := 3381759) (count := 21268) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3364466) (upper := 3381759) (count := 21298) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0023 :
    LowDiagonalEnvelopeRange 3381760 3399110 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3399109 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3381760) (upper := 3399109) (count := 85541) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3381760) (upper := 3399109) (count := 42785) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3381760) (upper := 3399109) (count := 21379) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3381760) (upper := 3399109) (count := 21406) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0024 :
    LowDiagonalEnvelopeRange 3399110 3416596 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3416595 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3399110) (upper := 3416595) (count := 85980) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3399110) (upper := 3416595) (count := 43003) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3399110) (upper := 3416595) (count := 21488) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3399110) (upper := 3416595) (count := 21515) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0025 :
    LowDiagonalEnvelopeRange 3416596 3434438 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3434437 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3416596) (upper := 3434437) (count := 86422) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3416596) (upper := 3434437) (count := 43222) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3416596) (upper := 3434437) (count := 21597) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3416596) (upper := 3434437) (count := 21625) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0026 :
    LowDiagonalEnvelopeRange 3434438 3452262 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3452261 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3434438) (upper := 3452261) (count := 86874) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3434438) (upper := 3452261) (count := 43450) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3434438) (upper := 3452261) (count := 21712) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3434438) (upper := 3452261) (count := 21738) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0027 :
    LowDiagonalEnvelopeRange 3452262 3469841 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3469840 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3452262) (upper := 3469840) (count := 87324) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3452262) (upper := 3469840) (count := 43667) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3452262) (upper := 3469840) (count := 21820) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3452262) (upper := 3469840) (count := 21847) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0028 :
    LowDiagonalEnvelopeRange 3469841 3487414 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3487413 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3469841) (upper := 3487413) (count := 87769) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3469841) (upper := 3487413) (count := 43892) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3469841) (upper := 3487413) (count := 21938) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3469841) (upper := 3487413) (count := 21954) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0029 :
    LowDiagonalEnvelopeRange 3487414 3505263 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3505262 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3487414) (upper := 3505262) (count := 88214) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3487414) (upper := 3505262) (count := 44117) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3487414) (upper := 3505262) (count := 22051) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3487414) (upper := 3505262) (count := 22066) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0030 :
    LowDiagonalEnvelopeRange 3505263 3523580 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3523579 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3505263) (upper := 3523579) (count := 88665) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3505263) (upper := 3523579) (count := 44343) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3505263) (upper := 3523579) (count := 22166) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3505263) (upper := 3523579) (count := 22177) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0031 :
    LowDiagonalEnvelopeRange 3523580 3542170 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3542169 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3523580) (upper := 3542169) (count := 89128) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3523580) (upper := 3542169) (count := 44578) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3523580) (upper := 3542169) (count := 22282) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3523580) (upper := 3542169) (count := 22296) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
