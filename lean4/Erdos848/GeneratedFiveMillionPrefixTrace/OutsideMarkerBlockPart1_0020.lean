import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0020

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20992
  | _ => True

theorem outsideMarkerPart4_0020 : outsideMarkerPartValid4_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid4_0020 outsideHistoryChunk0020
  decide

def outsideMarkerPartValid5_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21120
  | _ => True

theorem outsideMarkerPart5_0020 : outsideMarkerPartValid5_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid5_0020 outsideHistoryChunk0020
  decide

def outsideMarkerPartValid6_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21248
  | _ => True

theorem outsideMarkerPart6_0020 : outsideMarkerPartValid6_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid6_0020 outsideHistoryChunk0020
  decide

def outsideMarkerPartValid7_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21376
  | _ => True

theorem outsideMarkerPart7_0020 : outsideMarkerPartValid7_0020 outsideHistoryChunk0020 := by
  unfold outsideMarkerPartValid7_0020 outsideHistoryChunk0020
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
