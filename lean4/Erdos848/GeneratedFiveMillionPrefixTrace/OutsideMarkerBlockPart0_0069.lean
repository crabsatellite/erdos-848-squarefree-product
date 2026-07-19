import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0069

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70656
  | _ => True

theorem outsideMarkerPart0_0069 : outsideMarkerPartValid0_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid0_0069 outsideHistoryChunk0069
  decide

def outsideMarkerPartValid1_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70784
  | _ => True

theorem outsideMarkerPart1_0069 : outsideMarkerPartValid1_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid1_0069 outsideHistoryChunk0069
  decide

def outsideMarkerPartValid2_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70912
  | _ => True

theorem outsideMarkerPart2_0069 : outsideMarkerPartValid2_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid2_0069 outsideHistoryChunk0069
  decide

def outsideMarkerPartValid3_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71040
  | _ => True

theorem outsideMarkerPart3_0069 : outsideMarkerPartValid3_0069 outsideHistoryChunk0069 := by
  unfold outsideMarkerPartValid3_0069 outsideHistoryChunk0069
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
