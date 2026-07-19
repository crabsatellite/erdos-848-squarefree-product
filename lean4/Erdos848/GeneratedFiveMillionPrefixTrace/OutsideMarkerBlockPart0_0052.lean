import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0052

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53248
  | _ => True

theorem outsideMarkerPart0_0052 : outsideMarkerPartValid0_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid0_0052 outsideHistoryChunk0052
  decide

def outsideMarkerPartValid1_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53376
  | _ => True

theorem outsideMarkerPart1_0052 : outsideMarkerPartValid1_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid1_0052 outsideHistoryChunk0052
  decide

def outsideMarkerPartValid2_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53504
  | _ => True

theorem outsideMarkerPart2_0052 : outsideMarkerPartValid2_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid2_0052 outsideHistoryChunk0052
  decide

def outsideMarkerPartValid3_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53632
  | _ => True

theorem outsideMarkerPart3_0052 : outsideMarkerPartValid3_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid3_0052 outsideHistoryChunk0052
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
