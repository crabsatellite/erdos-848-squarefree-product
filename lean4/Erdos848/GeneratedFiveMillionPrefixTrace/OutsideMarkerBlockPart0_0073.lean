import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0073

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74752
  | _ => True

theorem outsideMarkerPart0_0073 : outsideMarkerPartValid0_0073 outsideHistoryChunk0073 := by
  unfold outsideMarkerPartValid0_0073 outsideHistoryChunk0073
  decide

def outsideMarkerPartValid1_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74880
  | _ => True

theorem outsideMarkerPart1_0073 : outsideMarkerPartValid1_0073 outsideHistoryChunk0073 := by
  unfold outsideMarkerPartValid1_0073 outsideHistoryChunk0073
  decide

def outsideMarkerPartValid2_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75008
  | _ => True

theorem outsideMarkerPart2_0073 : outsideMarkerPartValid2_0073 outsideHistoryChunk0073 := by
  unfold outsideMarkerPartValid2_0073 outsideHistoryChunk0073
  decide

def outsideMarkerPartValid3_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75136
  | _ => True

theorem outsideMarkerPart3_0073 : outsideMarkerPartValid3_0073 outsideHistoryChunk0073 := by
  unfold outsideMarkerPartValid3_0073 outsideHistoryChunk0073
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
