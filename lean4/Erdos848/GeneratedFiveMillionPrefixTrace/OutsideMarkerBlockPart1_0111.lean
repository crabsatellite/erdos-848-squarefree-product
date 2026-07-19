import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114176
  | _ => True

theorem outsideMarkerPart4_0111 : outsideMarkerPartValid4_0111 outsideHistoryChunk0111 := by
  unfold outsideMarkerPartValid4_0111 outsideHistoryChunk0111
  decide

def outsideMarkerPartValid5_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114304
  | _ => True

theorem outsideMarkerPart5_0111 : outsideMarkerPartValid5_0111 outsideHistoryChunk0111 := by
  unfold outsideMarkerPartValid5_0111 outsideHistoryChunk0111
  decide

def outsideMarkerPartValid6_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114432
  | _ => True

theorem outsideMarkerPart6_0111 : outsideMarkerPartValid6_0111 outsideHistoryChunk0111 := by
  unfold outsideMarkerPartValid6_0111 outsideHistoryChunk0111
  decide

def outsideMarkerPartValid7_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114560
  | _ => True

theorem outsideMarkerPart7_0111 : outsideMarkerPartValid7_0111 outsideHistoryChunk0111 := by
  unfold outsideMarkerPartValid7_0111 outsideHistoryChunk0111
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
