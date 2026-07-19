import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105984
  | _ => True

theorem outsideMarkerPart4_0103 : outsideMarkerPartValid4_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid4_0103 outsideHistoryChunk0103
  decide

def outsideMarkerPartValid5_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106112
  | _ => True

theorem outsideMarkerPart5_0103 : outsideMarkerPartValid5_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid5_0103 outsideHistoryChunk0103
  decide

def outsideMarkerPartValid6_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106240
  | _ => True

theorem outsideMarkerPart6_0103 : outsideMarkerPartValid6_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid6_0103 outsideHistoryChunk0103
  decide

def outsideMarkerPartValid7_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106368
  | _ => True

theorem outsideMarkerPart7_0103 : outsideMarkerPartValid7_0103 outsideHistoryChunk0103 := by
  unfold outsideMarkerPartValid7_0103 outsideHistoryChunk0103
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
