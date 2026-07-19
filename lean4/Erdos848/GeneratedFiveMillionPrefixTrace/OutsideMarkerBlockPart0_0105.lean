import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0105

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107520
  | _ => True

theorem outsideMarkerPart0_0105 : outsideMarkerPartValid0_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid0_0105 outsideHistoryChunk0105
  decide

def outsideMarkerPartValid1_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107648
  | _ => True

theorem outsideMarkerPart1_0105 : outsideMarkerPartValid1_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid1_0105 outsideHistoryChunk0105
  decide

def outsideMarkerPartValid2_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107776
  | _ => True

theorem outsideMarkerPart2_0105 : outsideMarkerPartValid2_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid2_0105 outsideHistoryChunk0105
  decide

def outsideMarkerPartValid3_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107904
  | _ => True

theorem outsideMarkerPart3_0105 : outsideMarkerPartValid3_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid3_0105 outsideHistoryChunk0105
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
