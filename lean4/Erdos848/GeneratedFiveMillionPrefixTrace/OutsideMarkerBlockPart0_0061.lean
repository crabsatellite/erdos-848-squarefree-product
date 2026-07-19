import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0061

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62464
  | _ => True

theorem outsideMarkerPart0_0061 : outsideMarkerPartValid0_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid0_0061 outsideHistoryChunk0061
  decide

def outsideMarkerPartValid1_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62592
  | _ => True

theorem outsideMarkerPart1_0061 : outsideMarkerPartValid1_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid1_0061 outsideHistoryChunk0061
  decide

def outsideMarkerPartValid2_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62720
  | _ => True

theorem outsideMarkerPart2_0061 : outsideMarkerPartValid2_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid2_0061 outsideHistoryChunk0061
  decide

def outsideMarkerPartValid3_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62848
  | _ => True

theorem outsideMarkerPart3_0061 : outsideMarkerPartValid3_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid3_0061 outsideHistoryChunk0061
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
