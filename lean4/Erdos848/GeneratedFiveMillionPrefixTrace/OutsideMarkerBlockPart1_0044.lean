import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0044

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45568
  | _ => True

theorem outsideMarkerPart4_0044 : outsideMarkerPartValid4_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid4_0044 outsideHistoryChunk0044
  decide

def outsideMarkerPartValid5_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45696
  | _ => True

theorem outsideMarkerPart5_0044 : outsideMarkerPartValid5_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid5_0044 outsideHistoryChunk0044
  decide

def outsideMarkerPartValid6_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45824
  | _ => True

theorem outsideMarkerPart6_0044 : outsideMarkerPartValid6_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid6_0044 outsideHistoryChunk0044
  decide

def outsideMarkerPartValid7_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45952
  | _ => True

theorem outsideMarkerPart7_0044 : outsideMarkerPartValid7_0044 outsideHistoryChunk0044 := by
  unfold outsideMarkerPartValid7_0044 outsideHistoryChunk0044
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
