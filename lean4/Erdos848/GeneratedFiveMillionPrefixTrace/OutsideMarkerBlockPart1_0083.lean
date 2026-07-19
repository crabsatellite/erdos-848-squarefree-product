import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85504
  | _ => True

theorem outsideMarkerPart4_0083 : outsideMarkerPartValid4_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid4_0083 outsideHistoryChunk0083
  decide

def outsideMarkerPartValid5_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85632
  | _ => True

theorem outsideMarkerPart5_0083 : outsideMarkerPartValid5_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid5_0083 outsideHistoryChunk0083
  decide

def outsideMarkerPartValid6_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85760
  | _ => True

theorem outsideMarkerPart6_0083 : outsideMarkerPartValid6_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid6_0083 outsideHistoryChunk0083
  decide

def outsideMarkerPartValid7_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85888
  | _ => True

theorem outsideMarkerPart7_0083 : outsideMarkerPartValid7_0083 outsideHistoryChunk0083 := by
  unfold outsideMarkerPartValid7_0083 outsideHistoryChunk0083
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
