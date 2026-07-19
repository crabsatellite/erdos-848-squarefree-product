import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92672
  | _ => True

theorem outsideMarkerPart4_0090 : outsideMarkerPartValid4_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid4_0090 outsideHistoryChunk0090
  decide

def outsideMarkerPartValid5_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92800
  | _ => True

theorem outsideMarkerPart5_0090 : outsideMarkerPartValid5_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid5_0090 outsideHistoryChunk0090
  decide

def outsideMarkerPartValid6_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92928
  | _ => True

theorem outsideMarkerPart6_0090 : outsideMarkerPartValid6_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid6_0090 outsideHistoryChunk0090
  decide

def outsideMarkerPartValid7_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93056
  | _ => True

theorem outsideMarkerPart7_0090 : outsideMarkerPartValid7_0090 outsideHistoryChunk0090 := by
  unfold outsideMarkerPartValid7_0090 outsideHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
