import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0110

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0110 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113152
  | _ => True

theorem outsideMarkerPart4_0110 : outsideMarkerPartValid4_0110 outsideHistoryChunk0110 := by
  unfold outsideMarkerPartValid4_0110 outsideHistoryChunk0110
  decide

def outsideMarkerPartValid5_0110 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113280
  | _ => True

theorem outsideMarkerPart5_0110 : outsideMarkerPartValid5_0110 outsideHistoryChunk0110 := by
  unfold outsideMarkerPartValid5_0110 outsideHistoryChunk0110
  decide

def outsideMarkerPartValid6_0110 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113408
  | _ => True

theorem outsideMarkerPart6_0110 : outsideMarkerPartValid6_0110 outsideHistoryChunk0110 := by
  unfold outsideMarkerPartValid6_0110 outsideHistoryChunk0110
  decide

def outsideMarkerPartValid7_0110 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113536
  | _ => True

theorem outsideMarkerPart7_0110 : outsideMarkerPartValid7_0110 outsideHistoryChunk0110 := by
  unfold outsideMarkerPartValid7_0110 outsideHistoryChunk0110
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
