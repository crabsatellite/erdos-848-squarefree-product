import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem secondEnvelope0032 :
    LowDiagonalEnvelopeRange 3542170 3560474 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3560473 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3542170) (upper := 3560473) (count := 89599) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3542170) (upper := 3560473) (count := 44814) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3542170) (upper := 3560473) (count := 22398) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3542170) (upper := 3560473) (count := 22416) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0033 :
    LowDiagonalEnvelopeRange 3560474 3578938 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3578937 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3560474) (upper := 3578937) (count := 90062) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3560474) (upper := 3578937) (count := 45048) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3560474) (upper := 3578937) (count := 22514) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3560474) (upper := 3578937) (count := 22534) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0034 :
    LowDiagonalEnvelopeRange 3578938 3597829 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3597828 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3578938) (upper := 3597828) (count := 90529) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3578938) (upper := 3597828) (count := 45275) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3578938) (upper := 3597828) (count := 22624) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3578938) (upper := 3597828) (count := 22651) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0035 :
    LowDiagonalEnvelopeRange 3597829 3616873 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3616872 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3597829) (upper := 3616872) (count := 91007) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3597829) (upper := 3616872) (count := 45517) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3597829) (upper := 3616872) (count := 22745) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3597829) (upper := 3616872) (count := 22772) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0036 :
    LowDiagonalEnvelopeRange 3616873 3635871 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3635870 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3616873) (upper := 3635870) (count := 91488) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3616873) (upper := 3635870) (count := 45755) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3616873) (upper := 3635870) (count := 22862) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3616873) (upper := 3635870) (count := 22893) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0037 :
    LowDiagonalEnvelopeRange 3635871 3655021 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3655020 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3635871) (upper := 3655020) (count := 91969) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3635871) (upper := 3655020) (count := 45994) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3635871) (upper := 3655020) (count := 22981) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3635871) (upper := 3655020) (count := 23013) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0038 :
    LowDiagonalEnvelopeRange 3655021 3674328 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3674327 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3655021) (upper := 3674327) (count := 92453) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3655021) (upper := 3674327) (count := 46248) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3655021) (upper := 3674327) (count := 23104) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3655021) (upper := 3674327) (count := 23144) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0039 :
    LowDiagonalEnvelopeRange 3674328 3693734 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3693733 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3674328) (upper := 3693733) (count := 92942) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3674328) (upper := 3693733) (count := 46490) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3674328) (upper := 3693733) (count := 23224) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3674328) (upper := 3693733) (count := 23266) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0040 :
    LowDiagonalEnvelopeRange 3693734 3712974 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3712973 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3693734) (upper := 3712973) (count := 93433) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3693734) (upper := 3712973) (count := 46735) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3693734) (upper := 3712973) (count := 23346) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3693734) (upper := 3712973) (count := 23389) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0041 :
    LowDiagonalEnvelopeRange 3712974 3732397 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3732396 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3712974) (upper := 3732396) (count := 93919) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3712974) (upper := 3732396) (count := 46973) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3712974) (upper := 3732396) (count := 23470) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3712974) (upper := 3732396) (count := 23503) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0042 :
    LowDiagonalEnvelopeRange 3732397 3751899 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3751898 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3732397) (upper := 3751898) (count := 94410) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3732397) (upper := 3751898) (count := 47225) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3732397) (upper := 3751898) (count := 23595) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3732397) (upper := 3751898) (count := 23630) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0043 :
    LowDiagonalEnvelopeRange 3751899 3771841 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3771840 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3751899) (upper := 3771840) (count := 94904) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3751899) (upper := 3771840) (count := 47470) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3751899) (upper := 3771840) (count := 23721) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3751899) (upper := 3771840) (count := 23749) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0044 :
    LowDiagonalEnvelopeRange 3771841 3791754 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3791753 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3771841) (upper := 3791753) (count := 95408) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3771841) (upper := 3791753) (count := 47723) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3771841) (upper := 3791753) (count := 23849) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3771841) (upper := 3791753) (count := 23874) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0045 :
    LowDiagonalEnvelopeRange 3791754 3812034 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3812033 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3791754) (upper := 3812033) (count := 95912) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3791754) (upper := 3812033) (count := 47977) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3791754) (upper := 3812033) (count := 23974) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3791754) (upper := 3812033) (count := 24003) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0046 :
    LowDiagonalEnvelopeRange 3812034 3832178 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3832177 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3812034) (upper := 3832177) (count := 96425) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3812034) (upper := 3832177) (count := 48232) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3812034) (upper := 3832177) (count := 24104) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3812034) (upper := 3832177) (count := 24128) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

theorem secondEnvelope0047 :
    LowDiagonalEnvelopeRange 3832178 3852580 25295 12655 6333 := by
  intro N hlower hstop
  have hupper : N ≤ 3852579 := by omega
  exact
    { all := lowDiagonalBad_card_cast_le_of_envelope certificate indexedMarkerOrdered
        (lower := 3832178) (upper := 3852579) (count := 96934) (coefficient := 25295) (by decide) (by decide) hlower hupper (by decide)
      odd := lowDiagonalOdd_card_cast_le_of_envelope certificate oddMarker projectsOdd oddMarkerOrdered
        (lower := 3832178) (upper := 3852579) (count := 48483) (coefficient := 12655) (by decide) (by decide) hlower hupper (by decide)
      modOne := lowDiagonalModOne_card_cast_le_of_envelope certificate modOneMarker projectsModOne modOneMarkerOrdered
        (lower := 3832178) (upper := 3852579) (count := 24230) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide)
      modThree := lowDiagonalModThree_card_cast_le_of_envelope certificate modThreeMarker projectsModThree modThreeMarkerOrdered
        (lower := 3832178) (upper := 3852579) (count := 24253) (coefficient := 6333) (by decide) (by decide) hlower hupper (by decide) }

end Erdos848.GeneratedLowDiagonalCoverage
