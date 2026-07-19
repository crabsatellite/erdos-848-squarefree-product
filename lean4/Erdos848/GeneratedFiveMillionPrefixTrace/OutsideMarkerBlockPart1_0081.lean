import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0081

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83456
  | _ => True

theorem outsideMarkerPart4_0081 : outsideMarkerPartValid4_0081 outsideHistoryChunk0081 := by
  unfold outsideMarkerPartValid4_0081 outsideHistoryChunk0081
  decide

def outsideMarkerPartValid5_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83584
  | _ => True

theorem outsideMarkerPart5_0081 : outsideMarkerPartValid5_0081 outsideHistoryChunk0081 := by
  unfold outsideMarkerPartValid5_0081 outsideHistoryChunk0081
  decide

def outsideMarkerPartValid6_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83712
  | _ => True

theorem outsideMarkerPart6_0081 : outsideMarkerPartValid6_0081 outsideHistoryChunk0081 := by
  unfold outsideMarkerPartValid6_0081 outsideHistoryChunk0081
  decide

def outsideMarkerPartValid7_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83840
  | _ => True

theorem outsideMarkerPart7_0081 : outsideMarkerPartValid7_0081 outsideHistoryChunk0081 := by
  unfold outsideMarkerPartValid7_0081 outsideHistoryChunk0081
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
