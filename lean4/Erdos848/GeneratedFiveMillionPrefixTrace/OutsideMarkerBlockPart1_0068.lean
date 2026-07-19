import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70144
  | _ => True

theorem outsideMarkerPart4_0068 : outsideMarkerPartValid4_0068 outsideHistoryChunk0068 := by
  unfold outsideMarkerPartValid4_0068 outsideHistoryChunk0068
  decide

def outsideMarkerPartValid5_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70272
  | _ => True

theorem outsideMarkerPart5_0068 : outsideMarkerPartValid5_0068 outsideHistoryChunk0068 := by
  unfold outsideMarkerPartValid5_0068 outsideHistoryChunk0068
  decide

def outsideMarkerPartValid6_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70400
  | _ => True

theorem outsideMarkerPart6_0068 : outsideMarkerPartValid6_0068 outsideHistoryChunk0068 := by
  unfold outsideMarkerPartValid6_0068 outsideHistoryChunk0068
  decide

def outsideMarkerPartValid7_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70528
  | _ => True

theorem outsideMarkerPart7_0068 : outsideMarkerPartValid7_0068 outsideHistoryChunk0068 := by
  unfold outsideMarkerPartValid7_0068 outsideHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
