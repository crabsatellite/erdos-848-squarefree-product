import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0092

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94720
  | _ => True

theorem outsideMarkerPart4_0092 : outsideMarkerPartValid4_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid4_0092 outsideHistoryChunk0092
  decide

def outsideMarkerPartValid5_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94848
  | _ => True

theorem outsideMarkerPart5_0092 : outsideMarkerPartValid5_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid5_0092 outsideHistoryChunk0092
  decide

def outsideMarkerPartValid6_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94976
  | _ => True

theorem outsideMarkerPart6_0092 : outsideMarkerPartValid6_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid6_0092 outsideHistoryChunk0092
  decide

def outsideMarkerPartValid7_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95104
  | _ => True

theorem outsideMarkerPart7_0092 : outsideMarkerPartValid7_0092 outsideHistoryChunk0092 := by
  unfold outsideMarkerPartValid7_0092 outsideHistoryChunk0092
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
