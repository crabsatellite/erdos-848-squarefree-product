import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0104

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107008
  | _ => True

theorem outsideMarkerPart4_0104 : outsideMarkerPartValid4_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid4_0104 outsideHistoryChunk0104
  decide

def outsideMarkerPartValid5_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107136
  | _ => True

theorem outsideMarkerPart5_0104 : outsideMarkerPartValid5_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid5_0104 outsideHistoryChunk0104
  decide

def outsideMarkerPartValid6_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107264
  | _ => True

theorem outsideMarkerPart6_0104 : outsideMarkerPartValid6_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid6_0104 outsideHistoryChunk0104
  decide

def outsideMarkerPartValid7_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107392
  | _ => True

theorem outsideMarkerPart7_0104 : outsideMarkerPartValid7_0104 outsideHistoryChunk0104 := by
  unfold outsideMarkerPartValid7_0104 outsideHistoryChunk0104
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
