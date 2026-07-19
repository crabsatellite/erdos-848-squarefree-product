import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem secondEnvelope0048 :
    LowDiagonalEnvelopeRange 3852580 3873212 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3873211 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3852580) (upper := 3873211) (count := 97451) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3852580) (upper := 3873211) (count := 48735) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3852580) (upper := 3873211) (count := 24351) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3852580) (upper := 3873211) (count := 24384) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0049 :
    LowDiagonalEnvelopeRange 3873212 3893774 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3893773 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3873212) (upper := 3893773) (count := 97972) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3873212) (upper := 3893773) (count := 48989) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3873212) (upper := 3893773) (count := 24482) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3873212) (upper := 3893773) (count := 24507) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0050 :
    LowDiagonalEnvelopeRange 3893774 3914814 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3914813 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3893774) (upper := 3914813) (count := 98493) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3893774) (upper := 3914813) (count := 49252) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3893774) (upper := 3914813) (count := 24616) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3893774) (upper := 3914813) (count := 24636) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0051 :
    LowDiagonalEnvelopeRange 3914814 3935839 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3935838 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3914814) (upper := 3935838) (count := 99025) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3914814) (upper := 3935838) (count := 49511) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3914814) (upper := 3935838) (count := 24742) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3914814) (upper := 3935838) (count := 24769) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0052 :
    LowDiagonalEnvelopeRange 3935839 3957026 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3957025 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3935839) (upper := 3957025) (count := 99557) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3935839) (upper := 3957025) (count := 49781) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3935839) (upper := 3957025) (count := 24874) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3935839) (upper := 3957025) (count := 24907) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0053 :
    LowDiagonalEnvelopeRange 3957026 3978190 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3978189 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3957026) (upper := 3978189) (count := 100092) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3957026) (upper := 3978189) (count := 50049) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3957026) (upper := 3978189) (count := 25010) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3957026) (upper := 3978189) (count := 25039) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0054 :
    LowDiagonalEnvelopeRange 3978190 3999286 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3999285 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3978190) (upper := 3999285) (count := 100628) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3978190) (upper := 3999285) (count := 50312) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3978190) (upper := 3999285) (count := 25144) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3978190) (upper := 3999285) (count := 25168) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0055 :
    LowDiagonalEnvelopeRange 3999286 4021116 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4021115 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3999286) (upper := 4021115) (count := 101161) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3999286) (upper := 4021115) (count := 50577) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3999286) (upper := 4021115) (count := 25275) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3999286) (upper := 4021115) (count := 25302) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0056 :
    LowDiagonalEnvelopeRange 4021116 4042651 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4042650 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4021116) (upper := 4042650) (count := 101714) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4021116) (upper := 4042650) (count := 50861) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4021116) (upper := 4042650) (count := 25420) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4021116) (upper := 4042650) (count := 25441) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0057 :
    LowDiagonalEnvelopeRange 4042651 4064444 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4064443 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4042651) (upper := 4064443) (count := 102258) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4042651) (upper := 4064443) (count := 51136) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4042651) (upper := 4064443) (count := 25553) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4042651) (upper := 4064443) (count := 25583) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0058 :
    LowDiagonalEnvelopeRange 4064444 4086340 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4086339 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4064444) (upper := 4086339) (count := 102810) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4064444) (upper := 4086339) (count := 51418) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4064444) (upper := 4086339) (count := 25698) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4064444) (upper := 4086339) (count := 25720) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0059 :
    LowDiagonalEnvelopeRange 4086340 4108151 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4108150 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4086340) (upper := 4108150) (count := 103363) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4086340) (upper := 4108150) (count := 51695) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4086340) (upper := 4108150) (count := 25834) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4086340) (upper := 4108150) (count := 25861) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0060 :
    LowDiagonalEnvelopeRange 4108151 4129952 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4129951 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4108151) (upper := 4129951) (count := 103915) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4108151) (upper := 4129951) (count := 51972) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4108151) (upper := 4129951) (count := 25973) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4108151) (upper := 4129951) (count := 25999) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0061 :
    LowDiagonalEnvelopeRange 4129952 4152231 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4152230 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4129952) (upper := 4152230) (count := 104467) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4129952) (upper := 4152230) (count := 52240) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4129952) (upper := 4152230) (count := 26108) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4129952) (upper := 4152230) (count := 26132) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0062 :
    LowDiagonalEnvelopeRange 4152231 4174354 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4174353 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4152231) (upper := 4174353) (count := 105030) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4152231) (upper := 4174353) (count := 52526) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4152231) (upper := 4174353) (count := 26256) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4152231) (upper := 4174353) (count := 26270) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0063 :
    LowDiagonalEnvelopeRange 4174354 4196606 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 4196605 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 4174354) (upper := 4196605) (count := 105590) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 4174354) (upper := 4196605) (count := 52800) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 4174354) (upper := 4196605) (count := 26393) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 4174354) (upper := 4196605) (count := 26407) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
