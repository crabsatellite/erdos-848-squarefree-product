import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem secondEnvelope0080 :
    LowDiagonalEnvelopeRange 4567662 4591800 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4591799 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4567662) (upper := 4591799) (count := 115539) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4567662) (upper := 4591799) (count := 57776) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4567662) (upper := 4591799) (count := 28880) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4567662) (upper := 4591799) (count := 28896) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0081 :
    LowDiagonalEnvelopeRange 4591800 4616151 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4616150 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4591800) (upper := 4616150) (count := 116149) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4591800) (upper := 4616150) (count := 58082) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4591800) (upper := 4616150) (count := 29032) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4591800) (upper := 4616150) (count := 29050) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0082 :
    LowDiagonalEnvelopeRange 4616151 4640783 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4640782 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4616151) (upper := 4640782) (count := 116765) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4616151) (upper := 4640782) (count := 58396) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4616151) (upper := 4640782) (count := 29192) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4616151) (upper := 4640782) (count := 29204) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0083 :
    LowDiagonalEnvelopeRange 4640783 4665153 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4665152 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4640783) (upper := 4665152) (count := 117388) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4640783) (upper := 4665152) (count := 58699) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4640783) (upper := 4665152) (count := 29340) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4640783) (upper := 4665152) (count := 29359) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0084 :
    LowDiagonalEnvelopeRange 4665153 4689849 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4689848 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4665153) (upper := 4689848) (count := 118005) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4665153) (upper := 4689848) (count := 59009) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4665153) (upper := 4689848) (count := 29495) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4665153) (upper := 4689848) (count := 29514) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0085 :
    LowDiagonalEnvelopeRange 4689849 4714827 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4714826 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4689849) (upper := 4714826) (count := 118629) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4689849) (upper := 4714826) (count := 59319) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4689849) (upper := 4714826) (count := 29643) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4689849) (upper := 4714826) (count := 29676) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0086 :
    LowDiagonalEnvelopeRange 4714827 4739917 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4739916 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4714827) (upper := 4739916) (count := 119261) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4714827) (upper := 4739916) (count := 59636) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4714827) (upper := 4739916) (count := 29804) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4714827) (upper := 4739916) (count := 29832) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0087 :
    LowDiagonalEnvelopeRange 4739917 4764902 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4764901 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4739917) (upper := 4764901) (count := 119896) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4739917) (upper := 4764901) (count := 59955) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4739917) (upper := 4764901) (count := 29965) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4739917) (upper := 4764901) (count := 29990) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0088 :
    LowDiagonalEnvelopeRange 4764902 4790375 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4790374 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4764902) (upper := 4790374) (count := 120528) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4764902) (upper := 4790374) (count := 60275) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4764902) (upper := 4790374) (count := 30122) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4764902) (upper := 4790374) (count := 30153) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0089 :
    LowDiagonalEnvelopeRange 4790375 4815656 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4815655 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4790375) (upper := 4815655) (count := 121172) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4790375) (upper := 4815655) (count := 60595) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4790375) (upper := 4815655) (count := 30283) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4790375) (upper := 4815655) (count := 30312) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0090 :
    LowDiagonalEnvelopeRange 4815656 4841104 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4841103 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4815656) (upper := 4841103) (count := 121812) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4815656) (upper := 4841103) (count := 60918) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4815656) (upper := 4841103) (count := 30449) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4815656) (upper := 4841103) (count := 30469) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0091 :
    LowDiagonalEnvelopeRange 4841104 4866623 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4866622 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4841104) (upper := 4866622) (count := 122455) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4841104) (upper := 4866622) (count := 61234) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4841104) (upper := 4866622) (count := 30606) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4841104) (upper := 4866622) (count := 30628) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0092 :
    LowDiagonalEnvelopeRange 4866623 4892311 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4892310 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4866623) (upper := 4892310) (count := 123101) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4866623) (upper := 4892310) (count := 61559) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4866623) (upper := 4892310) (count := 30765) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4866623) (upper := 4892310) (count := 30794) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0093 :
    LowDiagonalEnvelopeRange 4892311 4918059 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4918058 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4892311) (upper := 4918058) (count := 123751) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4892311) (upper := 4918058) (count := 61891) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4892311) (upper := 4918058) (count := 30932) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4892311) (upper := 4918058) (count := 30959) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0094 :
    LowDiagonalEnvelopeRange 4918059 4944672 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4944671 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4918059) (upper := 4944671) (count := 124402) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4918059) (upper := 4944671) (count := 62215) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4918059) (upper := 4944671) (count := 31095) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4918059) (upper := 4944671) (count := 31120) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0095 :
    LowDiagonalEnvelopeRange 4944672 4970867 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4970866 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4944672) (upper := 4970866) (count := 125075) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4944672) (upper := 4970866) (count := 62558) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4944672) (upper := 4970866) (count := 31272) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4944672) (upper := 4970866) (count := 31286) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
