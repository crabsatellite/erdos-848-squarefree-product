import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73216
  | _ => True

theorem outsideMarkerPart4_0071 : outsideMarkerPartValid4_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid4_0071 outsideHistoryChunk0071
  decide

def outsideMarkerPartValid5_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73344
  | _ => True

theorem outsideMarkerPart5_0071 : outsideMarkerPartValid5_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid5_0071 outsideHistoryChunk0071
  decide

def outsideMarkerPartValid6_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73472
  | _ => True

theorem outsideMarkerPart6_0071 : outsideMarkerPartValid6_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid6_0071 outsideHistoryChunk0071
  decide

def outsideMarkerPartValid7_0071 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73600
  | _ => True

theorem outsideMarkerPart7_0071 : outsideMarkerPartValid7_0071 outsideHistoryChunk0071 := by
  unfold outsideMarkerPartValid7_0071 outsideHistoryChunk0071
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
