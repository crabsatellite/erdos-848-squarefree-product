import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem firstEnvelope0048 :
    LowDiagonalEnvelopeRange 1935203 1945796 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1945795 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1935203) (upper := 1945795) (count := 48954) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1935203) (upper := 1945795) (count := 24487) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1935203) (upper := 1945795) (count := 12233) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1935203) (upper := 1945795) (count := 12254) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0049 :
    LowDiagonalEnvelopeRange 1945796 1956564 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1956563 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1945796) (upper := 1956563) (count := 49222) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1945796) (upper := 1956563) (count := 24619) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1945796) (upper := 1956563) (count := 12299) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1945796) (upper := 1956563) (count := 12320) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0050 :
    LowDiagonalEnvelopeRange 1956564 1967399 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1967398 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1956564) (upper := 1967398) (count := 49495) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1956564) (upper := 1967398) (count := 24756) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1956564) (upper := 1967398) (count := 12372) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1956564) (upper := 1967398) (count := 12384) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0051 :
    LowDiagonalEnvelopeRange 1967399 1978244 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1978243 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1967399) (upper := 1978243) (count := 49769) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1967399) (upper := 1978243) (count := 24896) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1967399) (upper := 1978243) (count := 12445) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1967399) (upper := 1978243) (count := 12451) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0052 :
    LowDiagonalEnvelopeRange 1978244 1989006 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1989005 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1978244) (upper := 1989005) (count := 50043) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1978244) (upper := 1989005) (count := 25032) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1978244) (upper := 1989005) (count := 12510) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1978244) (upper := 1989005) (count := 12522) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0053 :
    LowDiagonalEnvelopeRange 1989006 1999847 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 1999846 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1989006) (upper := 1999846) (count := 50315) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1989006) (upper := 1999846) (count := 25161) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1989006) (upper := 1999846) (count := 12571) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1989006) (upper := 1999846) (count := 12590) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0054 :
    LowDiagonalEnvelopeRange 1999847 2010790 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2010789 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 1999847) (upper := 2010789) (count := 50590) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 1999847) (upper := 2010789) (count := 25299) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 1999847) (upper := 2010789) (count := 12640) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 1999847) (upper := 2010789) (count := 12659) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0055 :
    LowDiagonalEnvelopeRange 2010790 2021723 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2021722 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2010790) (upper := 2021722) (count := 50866) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2010790) (upper := 2021722) (count := 25443) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2010790) (upper := 2021722) (count := 12710) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2010790) (upper := 2021722) (count := 12733) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0056 :
    LowDiagonalEnvelopeRange 2021723 2032788 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2032787 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2021723) (upper := 2032787) (count := 51143) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2021723) (upper := 2032787) (count := 25581) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2021723) (upper := 2032787) (count := 12779) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2021723) (upper := 2032787) (count := 12802) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0057 :
    LowDiagonalEnvelopeRange 2032788 2044154 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2044153 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2032788) (upper := 2044153) (count := 51423) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2032788) (upper := 2044153) (count := 25719) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2032788) (upper := 2044153) (count := 12850) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2032788) (upper := 2044153) (count := 12869) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0058 :
    LowDiagonalEnvelopeRange 2044154 2055484 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2055483 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2044154) (upper := 2055483) (count := 51710) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2044154) (upper := 2055483) (count := 25859) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2044154) (upper := 2055483) (count := 12921) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2044154) (upper := 2055483) (count := 12938) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0059 :
    LowDiagonalEnvelopeRange 2055484 2066771 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2066770 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2055484) (upper := 2066770) (count := 51997) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2055484) (upper := 2066770) (count := 26010) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2055484) (upper := 2066770) (count := 12998) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2055484) (upper := 2066770) (count := 13012) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0060 :
    LowDiagonalEnvelopeRange 2066771 2078259 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2078258 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2066771) (upper := 2078258) (count := 52283) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2066771) (upper := 2078258) (count := 26153) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2066771) (upper := 2078258) (count := 13070) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2066771) (upper := 2078258) (count := 13083) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0061 :
    LowDiagonalEnvelopeRange 2078259 2089866 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2089865 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2078259) (upper := 2089865) (count := 52573) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2078259) (upper := 2089865) (count := 26299) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2078259) (upper := 2089865) (count := 13139) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2078259) (upper := 2089865) (count := 13160) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0062 :
    LowDiagonalEnvelopeRange 2089866 2101783 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2101782 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2089866) (upper := 2101782) (count := 52867) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2089866) (upper := 2101782) (count := 26440) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2089866) (upper := 2101782) (count := 13208) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2089866) (upper := 2101782) (count := 13232) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

theorem firstEnvelope0063 :
    LowDiagonalEnvelopeRange 2101783 2113784 25297 12657 6337 := by
  intro N hlower hstop
  have hupper : N ≤ 2113783 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 2101783) (upper := 2113783) (count := 53168) (coefficient := 25297) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 2101783) (upper := 2113783) (count := 26598) (coefficient := 12657) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 2101783) (upper := 2113783) (count := 13283) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 2101783) (upper := 2113783) (count := 13315) (coefficient := 6337) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
