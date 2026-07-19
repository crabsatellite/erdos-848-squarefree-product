import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem secondEnvelope0000 :
    LowDiagonalEnvelopeRange 3000000 3015904 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3015903 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3000000) (upper := 3015903) (count := 75885) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3000000) (upper := 3015903) (count := 37958) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3000000) (upper := 3015903) (count := 18968) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3000000) (upper := 3015903) (count := 18990) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0001 :
    LowDiagonalEnvelopeRange 3015904 3031861 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3031860 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3015904) (upper := 3031860) (count := 76287) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3015904) (upper := 3031860) (count := 38160) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3015904) (upper := 3031860) (count := 19066) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3015904) (upper := 3031860) (count := 19094) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0002 :
    LowDiagonalEnvelopeRange 3031861 3047845 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3047844 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3031861) (upper := 3047844) (count := 76690) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3031861) (upper := 3047844) (count := 38368) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3031861) (upper := 3047844) (count := 19174) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3031861) (upper := 3047844) (count := 19194) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0003 :
    LowDiagonalEnvelopeRange 3047845 3063727 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3063726 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3047845) (upper := 3063726) (count := 77091) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3047845) (upper := 3063726) (count := 38570) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3047845) (upper := 3063726) (count := 19277) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3047845) (upper := 3063726) (count := 19293) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0004 :
    LowDiagonalEnvelopeRange 3063727 3079955 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3079954 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3063727) (upper := 3079954) (count := 77496) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3063727) (upper := 3079954) (count := 38770) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3063727) (upper := 3079954) (count := 19375) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3063727) (upper := 3079954) (count := 19395) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0005 :
    LowDiagonalEnvelopeRange 3079955 3096561 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3096560 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3079955) (upper := 3096560) (count := 77907) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3079955) (upper := 3096560) (count := 38973) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3079955) (upper := 3096560) (count := 19470) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3079955) (upper := 3096560) (count := 19503) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0006 :
    LowDiagonalEnvelopeRange 3096561 3112781 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3112780 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3096561) (upper := 3112780) (count := 78317) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3096561) (upper := 3112780) (count := 39186) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3096561) (upper := 3112780) (count := 19577) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3096561) (upper := 3112780) (count := 19609) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0007 :
    LowDiagonalEnvelopeRange 3112781 3128767 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3128766 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3112781) (upper := 3128766) (count := 78724) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3112781) (upper := 3128766) (count := 39392) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3112781) (upper := 3128766) (count := 19681) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3112781) (upper := 3128766) (count := 19711) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0008 :
    LowDiagonalEnvelopeRange 3128767 3145381 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3145380 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3128767) (upper := 3145380) (count := 79140) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3128767) (upper := 3145380) (count := 39594) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3128767) (upper := 3145380) (count := 19784) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3128767) (upper := 3145380) (count := 19810) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0009 :
    LowDiagonalEnvelopeRange 3145381 3161987 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3161986 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3145381) (upper := 3161986) (count := 79559) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3145381) (upper := 3161986) (count := 39804) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3145381) (upper := 3161986) (count := 19892) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3145381) (upper := 3161986) (count := 19912) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0010 :
    LowDiagonalEnvelopeRange 3161987 3178935 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3178934 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3161987) (upper := 3178934) (count := 79982) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3161987) (upper := 3178934) (count := 40009) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3161987) (upper := 3178934) (count := 19990) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3161987) (upper := 3178934) (count := 20019) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0011 :
    LowDiagonalEnvelopeRange 3178935 3195691 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3195690 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3178935) (upper := 3195690) (count := 80409) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3178935) (upper := 3195690) (count := 40229) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3178935) (upper := 3195690) (count := 20098) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3178935) (upper := 3195690) (count := 20131) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0012 :
    LowDiagonalEnvelopeRange 3195691 3212065 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3212064 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3195691) (upper := 3212064) (count := 80831) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3195691) (upper := 3212064) (count := 40441) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3195691) (upper := 3212064) (count := 20205) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3195691) (upper := 3212064) (count := 20236) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0013 :
    LowDiagonalEnvelopeRange 3212065 3228815 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3228814 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3212065) (upper := 3228814) (count := 81249) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3212065) (upper := 3228814) (count := 40646) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3212065) (upper := 3228814) (count := 20312) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3212065) (upper := 3228814) (count := 20334) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0014 :
    LowDiagonalEnvelopeRange 3228815 3245377 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3245376 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3228815) (upper := 3245376) (count := 81672) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3228815) (upper := 3245376) (count := 40857) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3228815) (upper := 3245376) (count := 20417) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3228815) (upper := 3245376) (count := 20440) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0015 :
    LowDiagonalEnvelopeRange 3245377 3262137 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3262136 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3245377) (upper := 3262136) (count := 82091) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3245377) (upper := 3262136) (count := 41067) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3245377) (upper := 3262136) (count := 20517) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3245377) (upper := 3262136) (count := 20550) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
