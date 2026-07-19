import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0006

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6656
  | _ => True

theorem outsideMarkerPart4_0006 : outsideMarkerPartValid4_0006 outsideHistoryChunk0006 := by
  unfold outsideMarkerPartValid4_0006 outsideHistoryChunk0006
  decide

def outsideMarkerPartValid5_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6784
  | _ => True

theorem outsideMarkerPart5_0006 : outsideMarkerPartValid5_0006 outsideHistoryChunk0006 := by
  unfold outsideMarkerPartValid5_0006 outsideHistoryChunk0006
  decide

def outsideMarkerPartValid6_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6912
  | _ => True

theorem outsideMarkerPart6_0006 : outsideMarkerPartValid6_0006 outsideHistoryChunk0006 := by
  unfold outsideMarkerPartValid6_0006 outsideHistoryChunk0006
  decide

def outsideMarkerPartValid7_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7040
  | _ => True

theorem outsideMarkerPart7_0006 : outsideMarkerPartValid7_0006 outsideHistoryChunk0006 := by
  unfold outsideMarkerPartValid7_0006 outsideHistoryChunk0006
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
