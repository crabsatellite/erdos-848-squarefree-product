import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0077

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79360
  | _ => True

theorem outsideMarkerPart4_0077 : outsideMarkerPartValid4_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid4_0077 outsideHistoryChunk0077
  decide

def outsideMarkerPartValid5_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79488
  | _ => True

theorem outsideMarkerPart5_0077 : outsideMarkerPartValid5_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid5_0077 outsideHistoryChunk0077
  decide

def outsideMarkerPartValid6_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79616
  | _ => True

theorem outsideMarkerPart6_0077 : outsideMarkerPartValid6_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid6_0077 outsideHistoryChunk0077
  decide

def outsideMarkerPartValid7_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79744
  | _ => True

theorem outsideMarkerPart7_0077 : outsideMarkerPartValid7_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid7_0077 outsideHistoryChunk0077
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
