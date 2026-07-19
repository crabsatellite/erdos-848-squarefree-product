import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89600
  | _ => True

theorem outsideMarkerPart4_0087 : outsideMarkerPartValid4_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid4_0087 outsideHistoryChunk0087
  decide

def outsideMarkerPartValid5_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89728
  | _ => True

theorem outsideMarkerPart5_0087 : outsideMarkerPartValid5_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid5_0087 outsideHistoryChunk0087
  decide

def outsideMarkerPartValid6_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89856
  | _ => True

theorem outsideMarkerPart6_0087 : outsideMarkerPartValid6_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid6_0087 outsideHistoryChunk0087
  decide

def outsideMarkerPartValid7_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89984
  | _ => True

theorem outsideMarkerPart7_0087 : outsideMarkerPartValid7_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid7_0087 outsideHistoryChunk0087
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
