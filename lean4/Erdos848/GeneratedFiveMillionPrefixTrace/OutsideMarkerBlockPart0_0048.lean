import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0048

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49152
  | _ => True

theorem outsideMarkerPart0_0048 : outsideMarkerPartValid0_0048 outsideHistoryChunk0048 := by
  unfold outsideMarkerPartValid0_0048 outsideHistoryChunk0048
  decide

def outsideMarkerPartValid1_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49280
  | _ => True

theorem outsideMarkerPart1_0048 : outsideMarkerPartValid1_0048 outsideHistoryChunk0048 := by
  unfold outsideMarkerPartValid1_0048 outsideHistoryChunk0048
  decide

def outsideMarkerPartValid2_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49408
  | _ => True

theorem outsideMarkerPart2_0048 : outsideMarkerPartValid2_0048 outsideHistoryChunk0048 := by
  unfold outsideMarkerPartValid2_0048 outsideHistoryChunk0048
  decide

def outsideMarkerPartValid3_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49536
  | _ => True

theorem outsideMarkerPart3_0048 : outsideMarkerPartValid3_0048 outsideHistoryChunk0048 := by
  unfold outsideMarkerPartValid3_0048 outsideHistoryChunk0048
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
