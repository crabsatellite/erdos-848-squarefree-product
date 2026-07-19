import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0042

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43520
  | _ => True

theorem outsideMarkerPart4_0042 : outsideMarkerPartValid4_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid4_0042 outsideHistoryChunk0042
  decide

def outsideMarkerPartValid5_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43648
  | _ => True

theorem outsideMarkerPart5_0042 : outsideMarkerPartValid5_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid5_0042 outsideHistoryChunk0042
  decide

def outsideMarkerPartValid6_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43776
  | _ => True

theorem outsideMarkerPart6_0042 : outsideMarkerPartValid6_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid6_0042 outsideHistoryChunk0042
  decide

def outsideMarkerPartValid7_0042 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43904
  | _ => True

theorem outsideMarkerPart7_0042 : outsideMarkerPartValid7_0042 outsideHistoryChunk0042 := by
  unfold outsideMarkerPartValid7_0042 outsideHistoryChunk0042
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
