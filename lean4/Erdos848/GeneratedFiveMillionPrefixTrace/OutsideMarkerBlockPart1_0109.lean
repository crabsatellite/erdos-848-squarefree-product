import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0109

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112128
  | _ => True

theorem outsideMarkerPart4_0109 : outsideMarkerPartValid4_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid4_0109 outsideHistoryChunk0109
  decide

def outsideMarkerPartValid5_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112256
  | _ => True

theorem outsideMarkerPart5_0109 : outsideMarkerPartValid5_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid5_0109 outsideHistoryChunk0109
  decide

def outsideMarkerPartValid6_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112384
  | _ => True

theorem outsideMarkerPart6_0109 : outsideMarkerPartValid6_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid6_0109 outsideHistoryChunk0109
  decide

def outsideMarkerPartValid7_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112512
  | _ => True

theorem outsideMarkerPart7_0109 : outsideMarkerPartValid7_0109 outsideHistoryChunk0109 := by
  unfold outsideMarkerPartValid7_0109 outsideHistoryChunk0109
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
