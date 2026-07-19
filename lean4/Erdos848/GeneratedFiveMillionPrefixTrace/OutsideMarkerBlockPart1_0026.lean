import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0026

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27136
  | _ => True

theorem outsideMarkerPart4_0026 : outsideMarkerPartValid4_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid4_0026 outsideHistoryChunk0026
  decide

def outsideMarkerPartValid5_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27264
  | _ => True

theorem outsideMarkerPart5_0026 : outsideMarkerPartValid5_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid5_0026 outsideHistoryChunk0026
  decide

def outsideMarkerPartValid6_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27392
  | _ => True

theorem outsideMarkerPart6_0026 : outsideMarkerPartValid6_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid6_0026 outsideHistoryChunk0026
  decide

def outsideMarkerPartValid7_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27520
  | _ => True

theorem outsideMarkerPart7_0026 : outsideMarkerPartValid7_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid7_0026 outsideHistoryChunk0026
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
