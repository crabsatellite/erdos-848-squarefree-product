import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69120
  | _ => True

theorem outsideMarkerPart4_0067 : outsideMarkerPartValid4_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid4_0067 outsideHistoryChunk0067
  decide

def outsideMarkerPartValid5_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69248
  | _ => True

theorem outsideMarkerPart5_0067 : outsideMarkerPartValid5_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid5_0067 outsideHistoryChunk0067
  decide

def outsideMarkerPartValid6_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69376
  | _ => True

theorem outsideMarkerPart6_0067 : outsideMarkerPartValid6_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid6_0067 outsideHistoryChunk0067
  decide

def outsideMarkerPartValid7_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69504
  | _ => True

theorem outsideMarkerPart7_0067 : outsideMarkerPartValid7_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid7_0067 outsideHistoryChunk0067
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
