import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0088

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90624
  | _ => True

theorem outsideMarkerPart4_0088 : outsideMarkerPartValid4_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid4_0088 outsideHistoryChunk0088
  decide

def outsideMarkerPartValid5_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90752
  | _ => True

theorem outsideMarkerPart5_0088 : outsideMarkerPartValid5_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid5_0088 outsideHistoryChunk0088
  decide

def outsideMarkerPartValid6_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90880
  | _ => True

theorem outsideMarkerPart6_0088 : outsideMarkerPartValid6_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid6_0088 outsideHistoryChunk0088
  decide

def outsideMarkerPartValid7_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91008
  | _ => True

theorem outsideMarkerPart7_0088 : outsideMarkerPartValid7_0088 outsideHistoryChunk0088 := by
  unfold outsideMarkerPartValid7_0088 outsideHistoryChunk0088
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
