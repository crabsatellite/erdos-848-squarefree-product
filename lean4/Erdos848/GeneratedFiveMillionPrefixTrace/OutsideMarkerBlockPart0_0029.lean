import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0029

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29696
  | _ => True

theorem outsideMarkerPart0_0029 : outsideMarkerPartValid0_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid0_0029 outsideHistoryChunk0029
  decide

def outsideMarkerPartValid1_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29824
  | _ => True

theorem outsideMarkerPart1_0029 : outsideMarkerPartValid1_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid1_0029 outsideHistoryChunk0029
  decide

def outsideMarkerPartValid2_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29952
  | _ => True

theorem outsideMarkerPart2_0029 : outsideMarkerPartValid2_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid2_0029 outsideHistoryChunk0029
  decide

def outsideMarkerPartValid3_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30080
  | _ => True

theorem outsideMarkerPart3_0029 : outsideMarkerPartValid3_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid3_0029 outsideHistoryChunk0029
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
