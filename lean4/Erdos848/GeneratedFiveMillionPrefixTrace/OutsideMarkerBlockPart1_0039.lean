import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40448
  | _ => True

theorem outsideMarkerPart4_0039 : outsideMarkerPartValid4_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid4_0039 outsideHistoryChunk0039
  decide

def outsideMarkerPartValid5_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40576
  | _ => True

theorem outsideMarkerPart5_0039 : outsideMarkerPartValid5_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid5_0039 outsideHistoryChunk0039
  decide

def outsideMarkerPartValid6_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40704
  | _ => True

theorem outsideMarkerPart6_0039 : outsideMarkerPartValid6_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid6_0039 outsideHistoryChunk0039
  decide

def outsideMarkerPartValid7_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40832
  | _ => True

theorem outsideMarkerPart7_0039 : outsideMarkerPartValid7_0039 outsideHistoryChunk0039 := by
  unfold outsideMarkerPartValid7_0039 outsideHistoryChunk0039
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
