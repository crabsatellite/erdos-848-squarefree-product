import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92160
  | _ => True

theorem outsideMarkerPart0_0090 : outsideMarkerPartValid0_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid0_0090 outsideHistoryChunk0090
  decide

def outsideMarkerPartValid1_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92288
  | _ => True

theorem outsideMarkerPart1_0090 : outsideMarkerPartValid1_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid1_0090 outsideHistoryChunk0090
  decide

def outsideMarkerPartValid2_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92416
  | _ => True

theorem outsideMarkerPart2_0090 : outsideMarkerPartValid2_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid2_0090 outsideHistoryChunk0090
  decide

def outsideMarkerPartValid3_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92544
  | _ => True

theorem outsideMarkerPart3_0090 : outsideMarkerPartValid3_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid3_0090 outsideHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
