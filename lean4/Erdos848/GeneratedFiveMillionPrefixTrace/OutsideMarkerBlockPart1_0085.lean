import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0085

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87552
  | _ => True

theorem outsideMarkerPart4_0085 : outsideMarkerPartValid4_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid4_0085 outsideHistoryChunk0085
  decide

def outsideMarkerPartValid5_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87680
  | _ => True

theorem outsideMarkerPart5_0085 : outsideMarkerPartValid5_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid5_0085 outsideHistoryChunk0085
  decide

def outsideMarkerPartValid6_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87808
  | _ => True

theorem outsideMarkerPart6_0085 : outsideMarkerPartValid6_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid6_0085 outsideHistoryChunk0085
  decide

def outsideMarkerPartValid7_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87936
  | _ => True

theorem outsideMarkerPart7_0085 : outsideMarkerPartValid7_0085 outsideHistoryChunk0085 := by
  unfold outsideMarkerPartValid7_0085 outsideHistoryChunk0085
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
