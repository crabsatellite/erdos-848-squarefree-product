import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0116

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118784
  | _ => True

theorem outsideMarkerPart0_0116 : outsideMarkerPartValid0_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid0_0116 outsideHistoryChunk0116
  decide

def outsideMarkerPartValid1_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118912
  | _ => True

theorem outsideMarkerPart1_0116 : outsideMarkerPartValid1_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid1_0116 outsideHistoryChunk0116
  decide

def outsideMarkerPartValid2_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119040
  | _ => True

theorem outsideMarkerPart2_0116 : outsideMarkerPartValid2_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid2_0116 outsideHistoryChunk0116
  decide

def outsideMarkerPartValid3_0116 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119168
  | _ => True

theorem outsideMarkerPart3_0116 : outsideMarkerPartValid3_0116 outsideHistoryChunk0116 := by
  unfold outsideMarkerPartValid3_0116 outsideHistoryChunk0116
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
