import ChainAudit
import Erdos848.MainTheorem
import Erdos848.Infrastructure.HallExpansion
import Erdos848.Infrastructure.ResidueCertificates
import Erdos848.Infrastructure.RoughSquareDivisors
import Erdos848.Infrastructure.SquarefreeAP

open Lean

namespace Erdos848.MainChain

def config : ChainAudit.ProjectConfig := {
  projectName := "Erdos848"
  rootNamespace := `Erdos848
  endpoints := [
    ``Erdos848.erdos848_main
  ]
  openAxioms := [
    ``Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCut
  ]
  infraFiles := [
    "Erdos848.lean",
    "Erdos848/Scripts/StatusEntry.lean",
    "Erdos848/Scripts/CheckEntry.lean",
    "Erdos848/MainChain.lean"
  ]
  primaryGapId := some "G-squarefree-ap-hall-expansion"
  replacementRouteId := some "hall-expansion-compression"
  gapPriority := [
    "G-squarefree-ap-hall-expansion",
    "G-hall-expansion-global",
    "G-candidate-p5-sharpness",
    "G-rough-square-divisor-unpacking",
    "D-finite-search-only"
  ]
  researchGaps := [
    {
      id := "G-hall-expansion-global"
      title := "Hall expansion global compression"
      status := "closed-local"
      summary :=
        "Kernel-closed Hall assembly: the count-level outside-clique Hall-neighborhood expansion now implies `AtMostCandidateBound`; the remaining work is proving the AP/Hall expansion input itself."
      files := [
        "Erdos848/Basic.lean",
        "Erdos848/Infrastructure/HallExpansion.lean",
        "Erdos848/MainTheorem.lean"
      ]
      decls := [
        "Erdos848.hallExpansionCut",
        "Erdos848.atMostCandidateBound_of_current_cuts",
        "Erdos848.erdos848_main"
      ]
    },
    {
      id := "G-candidate-p5-sharpness"
      title := "Candidate 5-square sharpness"
      status := "closed-local"
      summary :=
        "Kernel-checked residue algebra: if both factors lie in `7 mod 25` or both lie in `18 mod 25`, then `5^2` divides `a*b+1`; hence the two candidate classes are #848-admissible and the sharpness side is no longer an axiom."
      files := [
        "Erdos848/Infrastructure/ResidueCertificates.lean"
      ]
      decls := [
        "Erdos848.squareDivides_five_mul_add_one_of_candidate_seven",
        "Erdos848.squareDivides_five_mul_add_one_of_candidate_eighteen",
        "Erdos848.not_squareDivides_five_mul_add_one_of_candidate_seven_eighteen",
        "Erdos848.not_squareDivides_five_mul_add_one_of_candidate_eighteen_seven",
        "Erdos848.residueSecondLayer",
        "Erdos848.residueCandidateSharp"
      ]
    },
    {
      id := "G-squarefree-ap-hall-expansion"
      title := "Squarefree AP Hall-neighborhood expansion"
      status := "open"
      summary :=
        "Replace finite Hall checks by one explicit decoded squarefree-boxed `18 mod 25` finite-offset middle-compression cut for the endpoint-consumed `7 mod 25` progression: the opposite block supplies a decoder and source-indexed seven-offset codes carrying target boxedness, squarefree edge data, and decoder-hit proofs; the strict middle now supplies source-indexed decoded credit witness-sum codes, with reserve non-image certified by the opposite decoder and new-middle anti-neighbor data certified by the canonical opposite-neighbor source decoder, and Lean derives the previous anti-image/witness/sum/code/matching/capacity surfaces before unpacking the decoder left-inverse, edge, target boxedness, Nat-code bound, pairwise injectivity, source box/residue facts, target `7 mod 25` residue, and the `86` value band."
      files := [
        "Erdos848/Infrastructure/SquarefreeAP.lean"
      ]
      decls := [
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCode_of_sourceAntiNeighbor",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCertificate",
        "Erdos848.activeStrictMiddleDecodedCreditAntiImageWitnessSumMatching_of_sourceAntiNeighbor",
        "Erdos848.ActiveStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching",
        "Erdos848.DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode",
        "Erdos848.DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toDecodedAntiImageWitnessSumCode",
        "Erdos848.ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode",
        "Erdos848.ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.value",
        "Erdos848.ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode.toAntiImageWitnessSumCode",
        "Erdos848.ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode",
        "Erdos848.ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode.toNewWitnessCreditCode",
        "Erdos848.squarefreeNeighborSourceDecoder",
        "Erdos848.squarefreeNeighborSourceDecoder_spec",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCode_of_antiImage",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCertificate",
        "Erdos848.activeStrictMiddleDecodedCreditWitnessSumMatching_of_antiImage",
        "Erdos848.ActiveStrictMiddleDecodedCreditAntiImageWitnessSumMatching",
        "Erdos848.DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode",
        "Erdos848.DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode.toDecodedWitnessSumCode",
        "Erdos848.ActiveStrictMiddleCreditAntiImageWitnessSumCode",
        "Erdos848.ActiveStrictMiddleCreditAntiImageWitnessSumCode.value",
        "Erdos848.ActiveStrictMiddleCreditAntiImageWitnessSumCode.toWitnessSumCode",
        "Erdos848.ActiveStrictMiddleReserveAntiImageWitnessCreditCode",
        "Erdos848.ActiveStrictMiddleReserveAntiImageWitnessCreditCode.toReserveWitnessCode",
        "Erdos848.decodedSquarefreeBoxedOppositeFiniteOffsetMate_leftInverse",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCode_of_witness",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCertificate",
        "Erdos848.activeStrictMiddleDecodedCreditSumMatching_of_witness",
        "Erdos848.ActiveStrictMiddleDecodedCreditWitnessSumMatching",
        "Erdos848.DecodedActiveStrictMiddleCreditWitnessSumCode",
        "Erdos848.DecodedActiveStrictMiddleCreditWitnessSumCode.toDecodedSumCode",
        "Erdos848.ActiveStrictMiddleCreditWitnessSumCode",
        "Erdos848.ActiveStrictMiddleCreditWitnessSumCode.value",
        "Erdos848.ActiveStrictMiddleCreditWitnessSumCode.toSumCode",
        "Erdos848.ActiveStrictMiddleReserveWitnessCreditCode",
        "Erdos848.ActiveStrictMiddleReserveWitnessCreditCode.toReserveCode",
        "Erdos848.ActiveStrictMiddleNewWitnessCreditCode",
        "Erdos848.ActiveStrictMiddleNewWitnessCreditCode.toNewCode",
        "Erdos848.SquarefreeNeighborInCandidateWitnessCode",
        "Erdos848.squarefreeNeighborInCandidate_of_witnessCode",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCode_of_sumCode",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCertificate",
        "Erdos848.activeStrictMiddleDecodedCreditMatching_of_sum",
        "Erdos848.ActiveStrictMiddleDecodedCreditSumMatching",
        "Erdos848.DecodedActiveStrictMiddleCreditSumCode",
        "Erdos848.DecodedActiveStrictMiddleCreditSumCode.toDecodedCode",
        "Erdos848.ActiveStrictMiddleCreditSumCode",
        "Erdos848.ActiveStrictMiddleCreditSumCode.value",
        "Erdos848.ActiveStrictMiddleCreditSumCode.toCode",
        "Erdos848.activeStrictMiddleCreditSumCode_target",
        "Erdos848.ActiveStrictMiddleReserveCreditCode",
        "Erdos848.ActiveStrictMiddleNewCreditCode",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_creditCode",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCertificate",
        "Erdos848.activeStrictMiddleCreditMatching_of_decoded",
        "Erdos848.ActiveStrictMiddleDecodedCreditMatching",
        "Erdos848.DecodedActiveStrictMiddleCreditCode",
        "Erdos848.DecodedActiveStrictMiddleCreditCode.toCode",
        "Erdos848.decodedActiveStrictMiddleCreditCode_leftInverse",
        "Erdos848.ActiveStrictMiddleCreditCode",
        "Erdos848.ActiveStrictMiddleCreditCode.value",
        "Erdos848.activeStrictMiddleCreditCode_target",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxed_of_credit",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate",
        "Erdos848.activeStrictMiddleCreditCapacity_of_creditMatching",
        "Erdos848.activeStrictMiddleCreditTarget_inBox",
        "Erdos848.decodedSquarefreeBoxedOppositeFiniteOffsetMate",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoder_of_decoded",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate",
        "Erdos848.DecodedSquarefreeBoxedOppositeFiniteOffsetCode",
        "Erdos848.DecodedSquarefreeBoxedOppositeFiniteOffsetCode.toSquarefreeBoxed",
        "Erdos848.decodedSquarefreeBoxedOppositeFiniteOffsetCode_leftInverse",
        "Erdos848.finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenBoxedDecoder_of_squarefreeBoxed",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate",
        "Erdos848.GlobalFiniteOffsetEighteenSquarefreeBoxedTargetLeftInverse",
        "Erdos848.globalOppositeFiniteOffsetEighteenBoxedTargetNeighbor_of_squarefreeBoxed",
        "Erdos848.SquarefreeBoxedOppositeFiniteOffsetCode",
        "Erdos848.SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed",
        "Erdos848.finiteOffsetMiddleCompressionEighteenBoxedDecoderCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenTypedDecoder_of_boxed",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate",
        "Erdos848.GlobalFiniteOffsetEighteenBoxedTargetLeftInverse",
        "Erdos848.globalOppositeFiniteOffsetEighteenTypedTargetNeighbor_of_boxed",
        "Erdos848.GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor",
        "Erdos848.BoxedOppositeFiniteOffsetCode",
        "Erdos848.boxedOppositeFiniteOffsetCodeValue",
        "Erdos848.boxedOppositeFiniteOffsetCodeValue_inBox",
        "Erdos848.boxedOppositeFiniteOffsetRawCode",
        "Erdos848.boxedOppositeFiniteOffsetMate",
        "Erdos848.finiteOffsetMiddleCompressionEighteenTypedDecoderCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenDecoder_of_typed",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate",
        "Erdos848.GlobalFiniteOffsetEighteenTypedTargetLeftInverse",
        "Erdos848.globalOppositeFiniteOffsetEighteenTargetNeighbor_of_typed",
        "Erdos848.GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor",
        "Erdos848.OppositeFiniteOffsetCode",
        "Erdos848.OppositeFiniteOffsetCode.toNat",
        "Erdos848.oppositeFiniteOffsetCode_toNat_le_six",
        "Erdos848.OppositeFiniteOffsetCodeValue",
        "Erdos848.finiteOffsetMiddleCompressionEighteenDecoderCut",
        "Erdos848.finiteOffsetMiddleCompressionEighteenTargetCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenTarget_of_decoder",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate",
        "Erdos848.finiteOffsetEighteenTarget_injective_of_leftInverse",
        "Erdos848.GlobalFiniteOffsetEighteenTargetLeftInverse",
        "Erdos848.finiteOffsetMiddleCompressionEighteenCoreCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionEighteenCore_of_target",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate",
        "Erdos848.globalOppositeFiniteOffsetEighteenSquarefreeNeighbor_of_target",
        "Erdos848.GlobalOppositeFiniteOffsetEighteenTargetNeighbor",
        "Erdos848.finiteOffsetMiddleCompressionSevenCoreCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionSevenCore_of_eighteenCore",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate",
        "Erdos848.globalOppositeFiniteOffsetSevenSquarefreeNeighbor_of_eighteen",
        "Erdos848.GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor",
        "Erdos848.candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven",
        "Erdos848.oppositeCandidateCarrier_seven_of_candidate_eighteen",
        "Erdos848.finiteOffsetMiddleCompressionCoreCut",
        "Erdos848.globalFiniteOffsetMiddleCompressionCore_of_sevenCore",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate",
        "Erdos848.globalOppositeFiniteOffsetSquarefreeNeighbor_of_seven",
        "Erdos848.candidateCarrier_seven_of_oppositeFiniteOffsetValue",
        "Erdos848.GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor",
        "Erdos848.finiteOffsetMiddleCompressedCapacityCut",
        "Erdos848.globalFiniteOffsetSplitCapacity_of_middleCompressionCore",
        "Erdos848.GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue",
        "Erdos848.globalOppositeFiniteOffsetNeighbor_of_squarefree",
        "Erdos848.GlobalOppositeFiniteOffsetSquarefreeNeighbor",
        "Erdos848.oppositeFiniteOffsetValue_band_eightySix",
        "Erdos848.partitionedSquarefreeAPCapacityCut",
        "Erdos848.partitionedSquarefreeAPCapacity_of_finiteOffsetSplitCapacity",
        "Erdos848.allocatedSplitIncrementalSquarefreeAPCapacity_of_finiteOffsetSplitCapacity",
        "Erdos848.partitionedSquarefreeAPCapacity_of_allocated",
        "Erdos848.oppositeSquarefreeAPAllocation_of_globalFiniteOffsetMatching",
        "Erdos848.oppositeSquarefreeAPAllocation_of_nearby",
        "Erdos848.incrementalPartitionedSquarefreeAPCapacity_of_partitionedCapacity",
        "Erdos848.incrementalPartitionedSquarefreeAPCapacityCut",
        "Erdos848.activeStrictMiddleIncrementalCapacityCut",
        "Erdos848.squarefreeAPHallCut",
        "Erdos848.PartitionedSquarefreeAPCapacityCertificate",
        "Erdos848.PartitionedSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.PartitionedNeighborCapacity",
        "Erdos848.PartitionedNeighborUnion",
        "Erdos848.squarefreeAPHallCertificate_of_partitionedCapacity",
        "Erdos848.SquarefreeAPHallCertificate",
        "Erdos848.SquarefreeAPHallCertificateForResidue",
        "Erdos848.SquarefreeNeighborInCandidate",
        "Erdos848.APHallExpansionForOutsideSet",
        "Erdos848.OppositeOutsidePart",
        "Erdos848.StrictMiddlePart",
        "Erdos848.BoundedOutsideSet",
        "Erdos848.NonSquarefreeClique",
        "Erdos848.CandidateOutside",
        "Erdos848.OppositeCandidateCarrier",
        "Erdos848.StrictMiddleOutside",
        "Erdos848.GlobalFiniteOffsetPartitionedCapacityCertificateForResidue",
        "Erdos848.globalOppositeFiniteOffsetMatching_of_partitionedCapacity",
        "Erdos848.partitionedSquarefreeAPCapacity_of_finiteOffsetPartitionedCapacity",
        "Erdos848.GlobalFiniteOffsetSplitCapacityCertificateForResidue",
        "Erdos848.ActiveStrictMiddleCreditCapacity",
        "Erdos848.GlobalFiniteOffsetSplitCreditCertificateForResidue",
        "Erdos848.OppositeFiniteOffsetValue",
        "Erdos848.GlobalOppositeFiniteOffsetNeighbor",
        "Erdos848.GlobalOppositeFiniteOffsetMatchingImageAllocation",
        "Erdos848.GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue",
        "Erdos848.globalOppositeFiniteOffsetMatching_of_splitCapacity",
        "Erdos848.globalOppositeFiniteOffsetMatching_of_splitCredit",
        "Erdos848.globalOppositeNearbyMatching_of_finiteOffset",
        "Erdos848.GlobalOppositeNearbyMatchingAPCertificateForResidue",
        "Erdos848.GlobalOppositeNearbyMatchingImageAllocation",
        "Erdos848.GlobalOppositeNearbyNeighbor",
        "Erdos848.oppositeNearbyMatchingAPCertificate_of_global",
        "Erdos848.activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCapacity",
        "Erdos848.activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCredit",
        "Erdos848.NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificate",
        "Erdos848.NearbyMatchedSplitIncrementalSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.OppositeNearbyMatchingAPCertificateForResidue",
        "Erdos848.OppositeNearbyMatchingImageAllocation",
        "Erdos848.OppositeMatchingImage",
        "Erdos848.oppositeNearbyNeighborAllocation_of_matchingImage",
        "Erdos848.oppositeNearbyAPAllocationCertificate_of_matching",
        "Erdos848.nearbyAllocatedSplitIncrementalSquarefreeAPCapacity_of_matched",
        "Erdos848.ActiveStrictMiddleNewNeighborAllocationCertificateForResidue",
        "Erdos848.ActiveStrictMiddleNewNeighborAllocation",
        "Erdos848.activeStrictMiddleIncrementalCapacity_of_newNeighborAllocation",
        "Erdos848.ActiveStrictMiddleCreditMatchingCertificateForResidue",
        "Erdos848.GlobalActiveStrictMiddleCreditMatchingCertificateForResidue",
        "Erdos848.ActiveStrictMiddleCreditMatching",
        "Erdos848.ActiveStrictMiddleCreditImage",
        "Erdos848.ActiveStrictMiddleCreditTarget",
        "Erdos848.activeStrictMiddleIncrementalCapacity_of_creditMatchingFor",
        "Erdos848.activeStrictMiddleIncrementalCapacity_of_creditMatching",
        "Erdos848.activeStrictMiddleIncrementalCapacity_of_globalCreditMatching",
        "Erdos848.NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificate",
        "Erdos848.NearbyAllocatedSplitIncrementalSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.OppositeNearbyAPAllocationCertificateForResidue",
        "Erdos848.OppositeNearbyNeighborAllocation",
        "Erdos848.OppositeNearbyNeighbor",
        "Erdos848.oppositeNeighborAllocation_of_nearby",
        "Erdos848.allocatedSplitIncrementalSquarefreeAPCapacity_of_nearby",
        "Erdos848.AllocatedSplitIncrementalSquarefreeAPCapacityCertificate",
        "Erdos848.AllocatedSplitIncrementalSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.OppositeSquarefreeAPAllocationCertificateForResidue",
        "Erdos848.OppositeNeighborAllocation",
        "Erdos848.oppositeNeighborExpansion_of_allocation",
        "Erdos848.splitIncrementalSquarefreeAPCapacity_of_allocated",
        "Erdos848.SplitIncrementalSquarefreeAPCapacityCertificate",
        "Erdos848.SplitIncrementalSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.OppositeSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.ActiveStrictMiddleIncrementalCapacityCertificateForResidue",
        "Erdos848.OppositeNeighborExpansion",
        "Erdos848.incrementalPartitionedSquarefreeAPCapacity_of_split",
        "Erdos848.IncrementalPartitionedSquarefreeAPCapacityCertificate",
        "Erdos848.IncrementalPartitionedSquarefreeAPCapacityCertificateForResidue",
        "Erdos848.PartitionedIncrementalCapacity",
        "Erdos848.IncrementalStrictMiddleNeighbor",
        "Erdos848.partitionedSquarefreeAPCapacity_of_incremental",
        "Erdos848.PartitionedSquarefreeAPHallCertificate",
        "Erdos848.PartitionedSquarefreeAPHallCertificateForResidue",
        "Erdos848.PartitionedNeighborAllocation",
        "Erdos848.squarefreeAPHallCertificate_of_partitioned",
        "Erdos848.StrictMiddleAPHallCertificateForResidue",
        "Erdos848.CandidateResidueSquarefreeAPHallCertificate",
        "Erdos848.squarefreeAPHallCertificate_of_candidateResidues",
        "Erdos848.BoundedOutsidePart",
        "Erdos848.BoundedStrictMiddlePart",
        "Erdos848.boundedOutsidePart_boundedOutsideSet",
        "Erdos848.boundedOutsidePart_nonSquarefreeClique_of_admissible",
        "Erdos848.boundedStrictMiddlePart_boundedOutsideSet",
        "Erdos848.boundedStrictMiddlePart_nonSquarefreeClique_of_admissible",
        "Erdos848.outside_candidate_seven_of_squarefree_edge",
        "Erdos848.outside_candidate_eighteen_of_squarefree_edge"
      ]
    },
    {
      id := "G-rough-square-divisor-unpacking"
      title := "Rough square-divisor unpacking"
      status := "closed-local"
      summary :=
        "Kernel-checked classical unpacking: from `Not (Squarefree (a*b+1))` extract a prime-square witness in the project's `SquareDivides` form.  The real future rough-prime work must strengthen this with range and size constraints; the current endpoint no longer treats the definitional bridge as an axiom."
      files := [
        "Erdos848/Infrastructure/RoughSquareDivisors.lean"
      ]
      decls := [
        "Erdos848.roughSquareDivisor",
        "Erdos848.RoughSquareDivisorCertificate"
      ]
    },
    {
      id := "D-finite-search-only"
      title := "Finite search only"
      status := "dead"
      summary :=
        "Exact checks for bounded `N` and local residue graphs are useful evidence, but they do not close the unbounded theorem unless promoted into a certificate plus analytic tail.  Do not treat brute force alone as the proof route."
      files := [
      ]
      decls := []
    }
  ]
  researchChains := [
    {
      id := "main-full-close"
      title := "Main #848 full close"
      kind := "main"
      status := "open"
      summary :=
        "Endpoint chain proving the exact extremal bound and sharpness of the `7 mod 25` and `18 mod 25` constructions.  The outer Hall compression is kernel-closed; the open endpoint input is the squarefree AP/Hall-neighborhood expansion."
      files := [
        "Erdos848/Basic.lean",
        "Erdos848/MainTheorem.lean"
      ]
      entryDecls := [
        "Erdos848.erdos848_main"
      ]
      gapIds := [
        "G-hall-expansion-global",
        "G-candidate-p5-sharpness",
        "G-squarefree-ap-hall-expansion",
        "G-rough-square-divisor-unpacking"
      ]
      attackPlan := [
        "Keep `Erdos848.erdos848_main` as the endpoint and remove cuts only by replacing them with proved theorems.",
        "Use `hall-expansion-compression` as the current replacement route, with the assembly theorem already kernel-closed.",
        "Run `lake exe erdos848_status` and ChainAudit post-process after Lean changes."
      ]
      successCriterion := "The theorem `Erdos848.erdos848_main` checks with no non-kernel mathematical cuts."
    },
    {
      id := "hall-expansion-compression"
      title := "Hall expansion compression"
      kind := "replacement"
      status := "active"
      summary :=
        "Compress any admissible set outside the `7 mod 25` candidate class back into that class.  The finite counting assembly is kernel-closed; the live obligation is nonnegative Hall defect for every compatible outside clique."
      files := [
        "Erdos848/Infrastructure/HallExpansion.lean",
        "Erdos848/Infrastructure/SquarefreeAP.lean",
        "Erdos848/Infrastructure/RoughSquareDivisors.lean"
      ]
      entryDecls := [
        "Erdos848.hallExpansionCut",
        "Erdos848.atMostCandidateBound_of_current_cuts"
      ]
      gapIds := [
        "G-squarefree-ap-hall-expansion",
        "G-rough-square-divisor-unpacking"
      ]
      dependsOn := [
        "residue-certificate"
      ]
      attackPlan := [
        "Use the proved bipartite-neighborhood assembly as the exact replacement for the endpoint bound.",
        "Prove the remaining decoded squarefree-boxed `18 mod 25` finite-offset middle-compression source-anti-neighbor credit-witness-sum-code cut: one opposite decoder, source-indexed seven-offset codes carrying target boxedness, squarefree edge data, decoder-hit proofs, and source-indexed decoded credit witness-sum codes whose reserve branch is certified by decoder-side anti-image data and whose new-middle branch refutes the canonical opposite-neighbor source decoder must hold for every compatible outside clique.",
        "Use Lean to turn source anti-neighbor data into direct new-middle non-neighbor data, turn decoder-side reserve anti-image into direct `Not (OppositeMatchingImage ...)`, erase the candidate-neighbor source witness, erase the reserve/new-middle branch into decoded credit codes, derive the strict-middle credit matching, derive credit-capacity from the matching, unpack decoder hits, squarefree edge data, and target boxedness from the offset code, derive the Nat-code bound from the seven-code type, derive pairwise injectivity from the decoder, reattach source box/residue facts, then use the opposite-carrier, target-residue, and offset-band theorems to recover the generic finite-offset certificate and derive direct partitioned capacity."
      ]
      successCriterion := "A theorem of the shape `SquarefreeAPHallCertificate` is proved without `finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCut`."
    },
    {
      id := "residue-certificate"
      title := "Finite residue certificate chain"
      kind := "support"
      status := "closed-local"
      summary :=
        "Kernel-local `5^2` residue algebra proves candidate admissibility and records that the cross-pair candidate classes are not killed by the same `5^2` obstruction.  The broader Python `25*13^2` evidence remains diagnostic support for designing the Hall route, but the endpoint no longer consumes it as an axiom."
      files := [
        "Erdos848/Infrastructure/ResidueCertificates.lean"
      ]
      entryDecls := [
        "Erdos848.squareDivides_five_mul_add_one_of_candidate_seven",
        "Erdos848.squareDivides_five_mul_add_one_of_candidate_eighteen",
        "Erdos848.not_squareDivides_five_mul_add_one_of_candidate_seven_eighteen",
        "Erdos848.not_squareDivides_five_mul_add_one_of_candidate_eighteen_seven",
        "Erdos848.residueSecondLayer",
        "Erdos848.residueCandidateSharp"
      ]
      gapIds := [
        "G-candidate-p5-sharpness"
      ]
      attackPlan := [
        "Keep the candidate sharpness theorem imported through the endpoint.",
        "Use the broader JSON residue output only as design evidence until a separate checker is added."
      ]
      successCriterion := "Candidate sharpness remains theorem-backed and no candidate-sharpness axiom appears in `cuts.md`."
    },
    {
      id := "finite-search-only"
      title := "Finite search only"
      kind := "dead"
      status := "dead"
      summary :=
        "Bounded exact clique/Hall checks are useful diagnostics but cannot close #848 without a certificate format and unbounded analytic tail."
      files := [
      ]
      entryDecls := []
      gapIds := [
        "D-finite-search-only"
      ]
    }
  ]
  routeKeywordRules := [
    {
      labels := [
        "chain:hall-expansion-compression",
        "gap:G-hall-expansion-global"
      ]
      keywords := [
        "HallExpansion",
        "hallExpansionCut",
        "AtMostCandidateBound",
        "outside clique",
        "neighborhood",
        "Hall"
      ]
    },
    {
      labels := [
        "chain:residue-certificate",
        "gap:G-candidate-p5-sharpness"
      ]
      keywords := [
        "ResidueCertificates",
        "residueSecondLayer",
        "residueCandidateSharp",
        "25*13^2",
        "modulo",
        "residue_certificate"
      ]
    },
    {
      labels := [
        "chain:hall-expansion-compression",
        "gap:G-squarefree-ap-hall-expansion"
      ]
      keywords := [
        "SquarefreeAP",
        "squarefreeAPHall",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCode_of_sourceAntiNeighbor",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCertificate",
        "activeStrictMiddleDecodedCreditAntiImageWitnessSumMatching_of_sourceAntiNeighbor",
        "ActiveStrictMiddleDecodedCreditSourceAntiNeighborWitnessSumMatching",
        "DecodedActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode",
        "ActiveStrictMiddleCreditSourceAntiNeighborWitnessSumCode",
        "ActiveStrictMiddleNewSourceAntiNeighborWitnessCreditCode",
        "squarefreeNeighborSourceDecoder",
        "squarefreeNeighborSourceDecoder_spec",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCode_of_antiImage",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCertificate",
        "activeStrictMiddleDecodedCreditWitnessSumMatching_of_antiImage",
        "ActiveStrictMiddleDecodedCreditAntiImageWitnessSumMatching",
        "DecodedActiveStrictMiddleCreditAntiImageWitnessSumCode",
        "ActiveStrictMiddleCreditAntiImageWitnessSumCode",
        "ActiveStrictMiddleReserveAntiImageWitnessCreditCode",
        "decodedSquarefreeBoxedOppositeFiniteOffsetMate_leftInverse",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCode_of_witness",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditWitnessSumCodeCertificate",
        "activeStrictMiddleDecodedCreditSumMatching_of_witness",
        "ActiveStrictMiddleDecodedCreditWitnessSumMatching",
        "DecodedActiveStrictMiddleCreditWitnessSumCode",
        "ActiveStrictMiddleCreditWitnessSumCode",
        "ActiveStrictMiddleReserveWitnessCreditCode",
        "ActiveStrictMiddleNewWitnessCreditCode",
        "SquarefreeNeighborInCandidateWitnessCode",
        "squarefreeNeighborInCandidate_of_witnessCode",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCode_of_sumCode",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSumCodeCertificate",
        "activeStrictMiddleDecodedCreditMatching_of_sum",
        "ActiveStrictMiddleDecodedCreditSumMatching",
        "DecodedActiveStrictMiddleCreditSumCode",
        "ActiveStrictMiddleCreditSumCode",
        "ActiveStrictMiddleReserveCreditCode",
        "ActiveStrictMiddleNewCreditCode",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCredit_of_creditCode",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCodeCertificate",
        "activeStrictMiddleCreditMatching_of_decoded",
        "ActiveStrictMiddleDecodedCreditMatching",
        "DecodedActiveStrictMiddleCreditCode",
        "activeStrictMiddleCreditCode_target",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxed_of_credit",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCertificate",
        "activeStrictMiddleCreditCapacity_of_creditMatching",
        "decodedSquarefreeBoxedOppositeFiniteOffsetMate",
        "finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCut",
        "globalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoder_of_decoded",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCertificate",
        "DecodedSquarefreeBoxedOppositeFiniteOffsetCode",
        "decodedSquarefreeBoxedOppositeFiniteOffsetCode_leftInverse",
        "finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut",
        "globalFiniteOffsetMiddleCompressionEighteenBoxedDecoder_of_squarefreeBoxed",
        "GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate",
        "GlobalFiniteOffsetEighteenSquarefreeBoxedTargetLeftInverse",
        "globalOppositeFiniteOffsetEighteenBoxedTargetNeighbor_of_squarefreeBoxed",
        "SquarefreeBoxedOppositeFiniteOffsetCode",
        "finiteOffsetMiddleCompressionEighteenBoxedDecoderCut",
        "globalFiniteOffsetMiddleCompressionEighteenTypedDecoder_of_boxed",
        "GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate",
        "GlobalFiniteOffsetEighteenBoxedTargetLeftInverse",
        "globalOppositeFiniteOffsetEighteenTypedTargetNeighbor_of_boxed",
        "GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor",
        "BoxedOppositeFiniteOffsetCode",
        "boxedOppositeFiniteOffsetCodeValue",
        "boxedOppositeFiniteOffsetRawCode",
        "boxedOppositeFiniteOffsetMate",
        "finiteOffsetMiddleCompressionEighteenTypedDecoderCut",
        "globalFiniteOffsetMiddleCompressionEighteenDecoder_of_typed",
        "GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate",
        "GlobalFiniteOffsetEighteenTypedTargetLeftInverse",
        "globalOppositeFiniteOffsetEighteenTargetNeighbor_of_typed",
        "GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor",
        "OppositeFiniteOffsetCode",
        "OppositeFiniteOffsetCodeValue",
        "oppositeFiniteOffsetCode_toNat_le_six",
        "finiteOffsetMiddleCompressionEighteenDecoderCut",
        "finiteOffsetMiddleCompressionEighteenTargetCut",
        "globalFiniteOffsetMiddleCompressionEighteenTarget_of_decoder",
        "GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate",
        "finiteOffsetEighteenTarget_injective_of_leftInverse",
        "GlobalFiniteOffsetEighteenTargetLeftInverse",
        "finiteOffsetMiddleCompressionEighteenCoreCut",
        "globalFiniteOffsetMiddleCompressionEighteenCore_of_target",
        "GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate",
        "globalOppositeFiniteOffsetEighteenSquarefreeNeighbor_of_target",
        "GlobalOppositeFiniteOffsetEighteenTargetNeighbor",
        "finiteOffsetMiddleCompressionSevenCoreCut",
        "globalFiniteOffsetMiddleCompressionSevenCore_of_eighteenCore",
        "GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate",
        "globalOppositeFiniteOffsetSevenSquarefreeNeighbor_of_eighteen",
        "GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor",
        "candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven",
        "oppositeCandidateCarrier_seven_of_candidate_eighteen",
        "finiteOffsetMiddleCompressionCoreCut",
        "globalFiniteOffsetMiddleCompressionCore_of_sevenCore",
        "GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate",
        "globalOppositeFiniteOffsetSquarefreeNeighbor_of_seven",
        "candidateCarrier_seven_of_oppositeFiniteOffsetValue",
        "GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor",
        "finiteOffsetMiddleCompressedCapacityCut",
        "globalFiniteOffsetSplitCapacity_of_middleCompressionCore",
        "GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue",
        "globalOppositeFiniteOffsetNeighbor_of_squarefree",
        "GlobalOppositeFiniteOffsetSquarefreeNeighbor",
        "oppositeFiniteOffsetValue_band_eightySix",
        "partitionedSquarefreeAPCapacityCut",
        "partitionedSquarefreeAPCapacity_of_finiteOffsetSplitCapacity",
        "allocatedSplitIncrementalSquarefreeAPCapacity_of_finiteOffsetSplitCapacity",
        "partitionedSquarefreeAPCapacity_of_allocated",
        "oppositeSquarefreeAPAllocation_of_globalFiniteOffsetMatching",
        "oppositeSquarefreeAPAllocation_of_nearby",
        "nearbyMatchedSplitIncrementalSquarefreeAPCapacity",
        "GlobalFiniteOffsetPartitionedCapacityCertificateForResidue",
        "globalOppositeFiniteOffsetMatching_of_partitionedCapacity",
        "partitionedSquarefreeAPCapacity_of_finiteOffsetPartitionedCapacity",
        "incrementalPartitionedSquarefreeAPCapacity_of_partitionedCapacity",
        "GlobalFiniteOffsetSplitCapacityCertificateForResidue",
        "ActiveStrictMiddleCreditCapacity",
        "GlobalFiniteOffsetSplitCreditCertificateForResidue",
        "OppositeFiniteOffsetValue",
        "GlobalOppositeFiniteOffsetNeighbor",
        "GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue",
        "globalOppositeFiniteOffsetMatching_of_splitCapacity",
        "globalOppositeNearbyMatching_of_finiteOffset",
        "OppositeNearbyMatchingImageAllocation",
        "OppositeMatchingImage",
        "GlobalOppositeNearbyMatchingAPCertificateForResidue",
        "GlobalOppositeNearbyMatchingImageAllocation",
        "GlobalOppositeNearbyNeighbor",
        "oppositeNearbyMatchingAPCertificate_of_global",
        "opposite_matching_certificate.py",
        "nearbyAllocatedSplitIncrementalSquarefreeAPCapacity",
        "OppositeNearbyNeighbor",
        "OppositeNearbyNeighborAllocation",
        "allocatedSplitIncrementalSquarefreeAPCapacity",
        "OppositeNeighborAllocation",
        "oppositeNeighborExpansion_of_allocation",
        "splitIncrementalSquarefreeAPCapacity",
        "OppositeNeighborExpansion",
        "ActiveStrictMiddleCreditMatching",
        "ActiveStrictMiddleCreditTarget",
        "GlobalActiveStrictMiddleCreditMatchingCertificateForResidue",
        "activeStrictMiddleIncrementalCapacity_of_globalCreditMatching",
        "activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCapacity",
        "activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCredit",
        "active_credit_certificate.py",
        "credit matching",
        "credit-matching",
        "credit pool",
        "ActiveStrictMiddleNewNeighborAllocation",
        "ActiveStrictMiddleIncrementalCapacity",
        "incrementalPartitionedSquarefreeAPCapacity",
        "IncrementalStrictMiddleNeighbor",
        "PartitionedIncrementalCapacity",
        "partitionedSquarefreeAPCapacity",
        "partitionedSquarefreeAPHall",
        "PartitionedNeighborCapacity",
        "PartitionedNeighborUnion",
        "PartitionedNeighborAllocation",
        "SquarefreeNeighborInCandidate",
        "APHallExpansionForOutsideSet",
        "OppositeOutsidePart",
        "StrictMiddlePart",
        "StrictMiddleOutside",
        "OppositeCandidateCarrier",
        "arithmetic progression",
        "25*t",
        "squarefree counts"
      ]
    },
    {
      labels := [
        "chain:hall-expansion-compression",
        "gap:G-rough-square-divisor-unpacking"
      ]
      keywords := [
        "RoughSquareDivisors",
        "roughSquareDivisor",
        "large square",
        "middle-region",
        "rough-prime"
      ]
    },
    {
      labels := [
        "chain:finite-search-only",
        "gap:D-finite-search-only"
      ]
      keywords := [
        "exact check",
        "brute force",
        "finite search only",
        "hall_certificate.py"
      ]
    }
  ]
}

end Erdos848.MainChain
