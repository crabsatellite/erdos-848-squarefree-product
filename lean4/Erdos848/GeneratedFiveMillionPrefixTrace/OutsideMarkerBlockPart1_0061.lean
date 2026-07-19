import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0061

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62976
  | _ => True

theorem outsideMarkerPart4_0061 : outsideMarkerPartValid4_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid4_0061 outsideHistoryChunk0061
  decide

def outsideMarkerPartValid5_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63104
  | _ => True

theorem outsideMarkerPart5_0061 : outsideMarkerPartValid5_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid5_0061 outsideHistoryChunk0061
  decide

def outsideMarkerPartValid6_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63232
  | _ => True

theorem outsideMarkerPart6_0061 : outsideMarkerPartValid6_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid6_0061 outsideHistoryChunk0061
  decide

def outsideMarkerPartValid7_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63360
  | _ => True

theorem outsideMarkerPart7_0061 : outsideMarkerPartValid7_0061 outsideHistoryChunk0061 := by
  unfold outsideMarkerPartValid7_0061 outsideHistoryChunk0061
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
