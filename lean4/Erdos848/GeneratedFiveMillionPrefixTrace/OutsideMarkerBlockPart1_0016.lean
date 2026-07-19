import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0016

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16896
  | _ => True

theorem outsideMarkerPart4_0016 : outsideMarkerPartValid4_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid4_0016 outsideHistoryChunk0016
  decide

def outsideMarkerPartValid5_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17024
  | _ => True

theorem outsideMarkerPart5_0016 : outsideMarkerPartValid5_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid5_0016 outsideHistoryChunk0016
  decide

def outsideMarkerPartValid6_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17152
  | _ => True

theorem outsideMarkerPart6_0016 : outsideMarkerPartValid6_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid6_0016 outsideHistoryChunk0016
  decide

def outsideMarkerPartValid7_0016 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17280
  | _ => True

theorem outsideMarkerPart7_0016 : outsideMarkerPartValid7_0016 outsideHistoryChunk0016 := by
  unfold outsideMarkerPartValid7_0016 outsideHistoryChunk0016
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
