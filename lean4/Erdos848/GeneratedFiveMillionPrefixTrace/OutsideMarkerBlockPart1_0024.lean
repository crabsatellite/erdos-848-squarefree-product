import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0024

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25088
  | _ => True

theorem outsideMarkerPart4_0024 : outsideMarkerPartValid4_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid4_0024 outsideHistoryChunk0024
  decide

def outsideMarkerPartValid5_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25216
  | _ => True

theorem outsideMarkerPart5_0024 : outsideMarkerPartValid5_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid5_0024 outsideHistoryChunk0024
  decide

def outsideMarkerPartValid6_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25344
  | _ => True

theorem outsideMarkerPart6_0024 : outsideMarkerPartValid6_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid6_0024 outsideHistoryChunk0024
  decide

def outsideMarkerPartValid7_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25472
  | _ => True

theorem outsideMarkerPart7_0024 : outsideMarkerPartValid7_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid7_0024 outsideHistoryChunk0024
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
