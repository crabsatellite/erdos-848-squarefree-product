import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0092

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94208
  | _ => True

theorem outsideMarkerPart0_0092 : outsideMarkerPartValid0_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid0_0092 outsideHistoryChunk0092
  decide

def outsideMarkerPartValid1_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94336
  | _ => True

theorem outsideMarkerPart1_0092 : outsideMarkerPartValid1_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid1_0092 outsideHistoryChunk0092
  decide

def outsideMarkerPartValid2_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94464
  | _ => True

theorem outsideMarkerPart2_0092 : outsideMarkerPartValid2_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid2_0092 outsideHistoryChunk0092
  decide

def outsideMarkerPartValid3_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94592
  | _ => True

theorem outsideMarkerPart3_0092 : outsideMarkerPartValid3_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid3_0092 outsideHistoryChunk0092
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
