import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60928
  | _ => True

theorem outsideMarkerPart4_0059 : outsideMarkerPartValid4_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid4_0059 outsideHistoryChunk0059
  decide

def outsideMarkerPartValid5_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61056
  | _ => True

theorem outsideMarkerPart5_0059 : outsideMarkerPartValid5_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid5_0059 outsideHistoryChunk0059
  decide

def outsideMarkerPartValid6_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61184
  | _ => True

theorem outsideMarkerPart6_0059 : outsideMarkerPartValid6_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid6_0059 outsideHistoryChunk0059
  decide

def outsideMarkerPartValid7_0059 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61312
  | _ => True

theorem outsideMarkerPart7_0059 : outsideMarkerPartValid7_0059 outsideHistoryChunk0059 := by
  unfold outsideMarkerPartValid7_0059 outsideHistoryChunk0059
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
