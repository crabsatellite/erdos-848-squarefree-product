import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0037

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37888
  | _ => True

theorem outsideMarkerPart0_0037 : outsideMarkerPartValid0_0037 outsideHistoryChunk0037 := by
  unfold outsideMarkerPartValid0_0037 outsideHistoryChunk0037
  decide

def outsideMarkerPartValid1_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38016
  | _ => True

theorem outsideMarkerPart1_0037 : outsideMarkerPartValid1_0037 outsideHistoryChunk0037 := by
  unfold outsideMarkerPartValid1_0037 outsideHistoryChunk0037
  decide

def outsideMarkerPartValid2_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38144
  | _ => True

theorem outsideMarkerPart2_0037 : outsideMarkerPartValid2_0037 outsideHistoryChunk0037 := by
  unfold outsideMarkerPartValid2_0037 outsideHistoryChunk0037
  decide

def outsideMarkerPartValid3_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38272
  | _ => True

theorem outsideMarkerPart3_0037 : outsideMarkerPartValid3_0037 outsideHistoryChunk0037 := by
  unfold outsideMarkerPartValid3_0037 outsideHistoryChunk0037
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
