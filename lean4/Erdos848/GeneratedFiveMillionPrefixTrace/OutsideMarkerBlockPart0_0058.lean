import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0058

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59392
  | _ => True

theorem outsideMarkerPart0_0058 : outsideMarkerPartValid0_0058 outsideHistoryChunk0058 := by
  unfold outsideMarkerPartValid0_0058 outsideHistoryChunk0058
  decide

def outsideMarkerPartValid1_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59520
  | _ => True

theorem outsideMarkerPart1_0058 : outsideMarkerPartValid1_0058 outsideHistoryChunk0058 := by
  unfold outsideMarkerPartValid1_0058 outsideHistoryChunk0058
  decide

def outsideMarkerPartValid2_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59648
  | _ => True

theorem outsideMarkerPart2_0058 : outsideMarkerPartValid2_0058 outsideHistoryChunk0058 := by
  unfold outsideMarkerPartValid2_0058 outsideHistoryChunk0058
  decide

def outsideMarkerPartValid3_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59776
  | _ => True

theorem outsideMarkerPart3_0058 : outsideMarkerPartValid3_0058 outsideHistoryChunk0058 := by
  unfold outsideMarkerPartValid3_0058 outsideHistoryChunk0058
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
