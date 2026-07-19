import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0066

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67584
  | _ => True

theorem outsideMarkerPart0_0066 : outsideMarkerPartValid0_0066 outsideHistoryChunk0066 := by
  unfold outsideMarkerPartValid0_0066 outsideHistoryChunk0066
  decide

def outsideMarkerPartValid1_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67712
  | _ => True

theorem outsideMarkerPart1_0066 : outsideMarkerPartValid1_0066 outsideHistoryChunk0066 := by
  unfold outsideMarkerPartValid1_0066 outsideHistoryChunk0066
  decide

def outsideMarkerPartValid2_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67840
  | _ => True

theorem outsideMarkerPart2_0066 : outsideMarkerPartValid2_0066 outsideHistoryChunk0066 := by
  unfold outsideMarkerPartValid2_0066 outsideHistoryChunk0066
  decide

def outsideMarkerPartValid3_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67968
  | _ => True

theorem outsideMarkerPart3_0066 : outsideMarkerPartValid3_0066 outsideHistoryChunk0066 := by
  unfold outsideMarkerPartValid3_0066 outsideHistoryChunk0066
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
