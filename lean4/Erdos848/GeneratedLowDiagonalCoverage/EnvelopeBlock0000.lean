import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem firstEnvelope0000 :
    LowDiagonalEnvelopeRange 1500000 1508395 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1508394 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1500000) (upper := 1508394) (count := 37945) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1500000) (upper := 1508394) (count := 18978) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1500000) (upper := 1508394) (count := 9483) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1500000) (upper := 1508394) (count := 9495) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0001 :
    LowDiagonalEnvelopeRange 1508395 1516923 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1516922 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1508395) (upper := 1516922) (count := 38157) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1508395) (upper := 1516922) (count := 19082) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1508395) (upper := 1516922) (count := 9535) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1508395) (upper := 1516922) (count := 9547) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0002 :
    LowDiagonalEnvelopeRange 1516923 1525304 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1525303 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1516923) (upper := 1525303) (count := 38373) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1516923) (upper := 1525303) (count := 19191) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1516923) (upper := 1525303) (count := 9588) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1516923) (upper := 1525303) (count := 9603) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0003 :
    LowDiagonalEnvelopeRange 1525304 1533745 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1533744 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1525304) (upper := 1533744) (count := 38585) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1525304) (upper := 1533744) (count := 19297) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1525304) (upper := 1533744) (count := 9644) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1525304) (upper := 1533744) (count := 9653) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0004 :
    LowDiagonalEnvelopeRange 1533745 1542431 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1542430 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1533745) (upper := 1542430) (count := 38799) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1533745) (upper := 1542430) (count := 19403) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1533745) (upper := 1542430) (count := 9695) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1533745) (upper := 1542430) (count := 9708) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0005 :
    LowDiagonalEnvelopeRange 1542431 1550960 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1550959 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1542431) (upper := 1550959) (count := 39018) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1542431) (upper := 1550959) (count := 19517) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1542431) (upper := 1550959) (count := 9749) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1542431) (upper := 1550959) (count := 9768) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0006 :
    LowDiagonalEnvelopeRange 1550960 1559495 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1559494 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1550960) (upper := 1559494) (count := 39234) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1550960) (upper := 1559494) (count := 19629) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1550960) (upper := 1559494) (count := 9804) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1550960) (upper := 1559494) (count := 9825) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0007 :
    LowDiagonalEnvelopeRange 1559495 1568052 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1568051 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1559495) (upper := 1568051) (count := 39450) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1559495) (upper := 1568051) (count := 19735) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1559495) (upper := 1568051) (count := 9859) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1559495) (upper := 1568051) (count := 9876) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0008 :
    LowDiagonalEnvelopeRange 1568052 1576608 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1576607 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1568052) (upper := 1576607) (count := 39667) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1568052) (upper := 1576607) (count := 19845) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1568052) (upper := 1576607) (count := 9913) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1568052) (upper := 1576607) (count := 9932) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0009 :
    LowDiagonalEnvelopeRange 1576608 1585127 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1585126 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1576608) (upper := 1585126) (count := 39883) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1576608) (upper := 1585126) (count := 19948) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1576608) (upper := 1585126) (count := 9964) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1576608) (upper := 1585126) (count := 9984) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0010 :
    LowDiagonalEnvelopeRange 1585127 1593402 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1593401 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1585127) (upper := 1593401) (count := 40098) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1585127) (upper := 1593401) (count := 20053) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1585127) (upper := 1593401) (count := 10016) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1585127) (upper := 1593401) (count := 10037) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0011 :
    LowDiagonalEnvelopeRange 1593402 1601683 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1601682 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1593402) (upper := 1601682) (count := 40308) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1593402) (upper := 1601682) (count := 20158) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1593402) (upper := 1601682) (count := 10070) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1593402) (upper := 1601682) (count := 10088) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0012 :
    LowDiagonalEnvelopeRange 1601683 1609964 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1609963 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1601683) (upper := 1609963) (count := 40517) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1601683) (upper := 1609963) (count := 20267) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1601683) (upper := 1609963) (count := 10121) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1601683) (upper := 1609963) (count := 10146) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0013 :
    LowDiagonalEnvelopeRange 1609964 1618612 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1618611 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1609964) (upper := 1618611) (count := 40727) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1609964) (upper := 1618611) (count := 20371) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1609964) (upper := 1618611) (count := 10173) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1609964) (upper := 1618611) (count := 10198) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0014 :
    LowDiagonalEnvelopeRange 1618612 1627376 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1627375 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1618612) (upper := 1627375) (count := 40946) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1618612) (upper := 1627375) (count := 20483) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1618612) (upper := 1627375) (count := 10233) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1618612) (upper := 1627375) (count := 10250) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0015 :
    LowDiagonalEnvelopeRange 1627376 1635850 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1635849 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1627376) (upper := 1635849) (count := 41167) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1627376) (upper := 1635849) (count := 20591) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1627376) (upper := 1635849) (count := 10290) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1627376) (upper := 1635849) (count := 10301) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
