import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110080
  | _ => True

theorem outsideMarkerPart4_0107 : outsideMarkerPartValid4_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid4_0107 outsideHistoryChunk0107
  decide

def outsideMarkerPartValid5_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110208
  | _ => True

theorem outsideMarkerPart5_0107 : outsideMarkerPartValid5_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid5_0107 outsideHistoryChunk0107
  decide

def outsideMarkerPartValid6_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110336
  | _ => True

theorem outsideMarkerPart6_0107 : outsideMarkerPartValid6_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid6_0107 outsideHistoryChunk0107
  decide

def outsideMarkerPartValid7_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110464
  | _ => True

theorem outsideMarkerPart7_0107 : outsideMarkerPartValid7_0107 outsideHistoryChunk0107 := by
  unfold outsideMarkerPartValid7_0107 outsideHistoryChunk0107
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
