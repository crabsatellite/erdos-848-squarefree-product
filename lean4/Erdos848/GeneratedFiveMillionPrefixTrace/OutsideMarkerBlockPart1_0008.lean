import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0008

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8704
  | _ => True

theorem outsideMarkerPart4_0008 : outsideMarkerPartValid4_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid4_0008 outsideHistoryChunk0008
  decide

def outsideMarkerPartValid5_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8832
  | _ => True

theorem outsideMarkerPart5_0008 : outsideMarkerPartValid5_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid5_0008 outsideHistoryChunk0008
  decide

def outsideMarkerPartValid6_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8960
  | _ => True

theorem outsideMarkerPart6_0008 : outsideMarkerPartValid6_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid6_0008 outsideHistoryChunk0008
  decide

def outsideMarkerPartValid7_0008 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9088
  | _ => True

theorem outsideMarkerPart7_0008 : outsideMarkerPartValid7_0008 outsideHistoryChunk0008 := by
  unfold outsideMarkerPartValid7_0008 outsideHistoryChunk0008
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
