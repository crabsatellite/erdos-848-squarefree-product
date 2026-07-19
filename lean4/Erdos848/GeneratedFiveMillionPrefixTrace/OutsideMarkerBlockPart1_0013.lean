import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0013

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13824
  | _ => True

theorem outsideMarkerPart4_0013 : outsideMarkerPartValid4_0013 outsideHistoryChunk0013 := by
  unfold outsideMarkerPartValid4_0013 outsideHistoryChunk0013
  decide

def outsideMarkerPartValid5_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13952
  | _ => True

theorem outsideMarkerPart5_0013 : outsideMarkerPartValid5_0013 outsideHistoryChunk0013 := by
  unfold outsideMarkerPartValid5_0013 outsideHistoryChunk0013
  decide

def outsideMarkerPartValid6_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14080
  | _ => True

theorem outsideMarkerPart6_0013 : outsideMarkerPartValid6_0013 outsideHistoryChunk0013 := by
  unfold outsideMarkerPartValid6_0013 outsideHistoryChunk0013
  decide

def outsideMarkerPartValid7_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14208
  | _ => True

theorem outsideMarkerPart7_0013 : outsideMarkerPartValid7_0013 outsideHistoryChunk0013 := by
  unfold outsideMarkerPartValid7_0013 outsideHistoryChunk0013
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
