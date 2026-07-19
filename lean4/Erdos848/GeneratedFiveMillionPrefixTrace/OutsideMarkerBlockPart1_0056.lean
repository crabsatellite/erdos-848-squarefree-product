import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0056

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57856
  | _ => True

theorem outsideMarkerPart4_0056 : outsideMarkerPartValid4_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid4_0056 outsideHistoryChunk0056
  decide

def outsideMarkerPartValid5_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57984
  | _ => True

theorem outsideMarkerPart5_0056 : outsideMarkerPartValid5_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid5_0056 outsideHistoryChunk0056
  decide

def outsideMarkerPartValid6_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58112
  | _ => True

theorem outsideMarkerPart6_0056 : outsideMarkerPartValid6_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid6_0056 outsideHistoryChunk0056
  decide

def outsideMarkerPartValid7_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58240
  | _ => True

theorem outsideMarkerPart7_0056 : outsideMarkerPartValid7_0056 outsideHistoryChunk0056 := by
  unfold outsideMarkerPartValid7_0056 outsideHistoryChunk0056
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
