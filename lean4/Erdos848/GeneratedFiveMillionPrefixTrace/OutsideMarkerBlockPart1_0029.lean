import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0029

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30208
  | _ => True

theorem outsideMarkerPart4_0029 : outsideMarkerPartValid4_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid4_0029 outsideHistoryChunk0029
  decide

def outsideMarkerPartValid5_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30336
  | _ => True

theorem outsideMarkerPart5_0029 : outsideMarkerPartValid5_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid5_0029 outsideHistoryChunk0029
  decide

def outsideMarkerPartValid6_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30464
  | _ => True

theorem outsideMarkerPart6_0029 : outsideMarkerPartValid6_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid6_0029 outsideHistoryChunk0029
  decide

def outsideMarkerPartValid7_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30592
  | _ => True

theorem outsideMarkerPart7_0029 : outsideMarkerPartValid7_0029 outsideHistoryChunk0029 := by
  unfold outsideMarkerPartValid7_0029 outsideHistoryChunk0029
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
