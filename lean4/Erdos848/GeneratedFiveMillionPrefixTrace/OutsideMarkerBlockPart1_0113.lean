import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116224
  | _ => True

theorem outsideMarkerPart4_0113 : outsideMarkerPartValid4_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid4_0113 outsideHistoryChunk0113
  decide

def outsideMarkerPartValid5_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116352
  | _ => True

theorem outsideMarkerPart5_0113 : outsideMarkerPartValid5_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid5_0113 outsideHistoryChunk0113
  decide

def outsideMarkerPartValid6_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116480
  | _ => True

theorem outsideMarkerPart6_0113 : outsideMarkerPartValid6_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid6_0113 outsideHistoryChunk0113
  decide

def outsideMarkerPartValid7_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116608
  | _ => True

theorem outsideMarkerPart7_0113 : outsideMarkerPartValid7_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid7_0113 outsideHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
