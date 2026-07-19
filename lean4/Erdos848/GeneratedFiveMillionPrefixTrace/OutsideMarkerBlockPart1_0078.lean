import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0078

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80384
  | _ => True

theorem outsideMarkerPart4_0078 : outsideMarkerPartValid4_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid4_0078 outsideHistoryChunk0078
  decide

def outsideMarkerPartValid5_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80512
  | _ => True

theorem outsideMarkerPart5_0078 : outsideMarkerPartValid5_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid5_0078 outsideHistoryChunk0078
  decide

def outsideMarkerPartValid6_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80640
  | _ => True

theorem outsideMarkerPart6_0078 : outsideMarkerPartValid6_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid6_0078 outsideHistoryChunk0078
  decide

def outsideMarkerPartValid7_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80768
  | _ => True

theorem outsideMarkerPart7_0078 : outsideMarkerPartValid7_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid7_0078 outsideHistoryChunk0078
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
