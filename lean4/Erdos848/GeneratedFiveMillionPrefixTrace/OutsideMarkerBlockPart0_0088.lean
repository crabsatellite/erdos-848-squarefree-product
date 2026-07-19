import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0088

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90112
  | _ => True

theorem outsideMarkerPart0_0088 : outsideMarkerPartValid0_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid0_0088 outsideHistoryChunk0088
  decide

def outsideMarkerPartValid1_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90240
  | _ => True

theorem outsideMarkerPart1_0088 : outsideMarkerPartValid1_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid1_0088 outsideHistoryChunk0088
  decide

def outsideMarkerPartValid2_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90368
  | _ => True

theorem outsideMarkerPart2_0088 : outsideMarkerPartValid2_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid2_0088 outsideHistoryChunk0088
  decide

def outsideMarkerPartValid3_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90496
  | _ => True

theorem outsideMarkerPart3_0088 : outsideMarkerPartValid3_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid3_0088 outsideHistoryChunk0088
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
