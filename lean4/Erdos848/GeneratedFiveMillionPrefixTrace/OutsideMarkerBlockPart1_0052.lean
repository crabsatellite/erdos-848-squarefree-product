import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0052

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53760
  | _ => True

theorem outsideMarkerPart4_0052 : outsideMarkerPartValid4_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid4_0052 outsideHistoryChunk0052
  decide

def outsideMarkerPartValid5_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53888
  | _ => True

theorem outsideMarkerPart5_0052 : outsideMarkerPartValid5_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid5_0052 outsideHistoryChunk0052
  decide

def outsideMarkerPartValid6_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54016
  | _ => True

theorem outsideMarkerPart6_0052 : outsideMarkerPartValid6_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid6_0052 outsideHistoryChunk0052
  decide

def outsideMarkerPartValid7_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54144
  | _ => True

theorem outsideMarkerPart7_0052 : outsideMarkerPartValid7_0052 outsideHistoryChunk0052 := by
  unfold outsideMarkerPartValid7_0052 outsideHistoryChunk0052
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
