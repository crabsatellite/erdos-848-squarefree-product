import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0057

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58880
  | _ => True

theorem outsideMarkerPart4_0057 : outsideMarkerPartValid4_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid4_0057 outsideHistoryChunk0057
  decide

def outsideMarkerPartValid5_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59008
  | _ => True

theorem outsideMarkerPart5_0057 : outsideMarkerPartValid5_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid5_0057 outsideHistoryChunk0057
  decide

def outsideMarkerPartValid6_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59136
  | _ => True

theorem outsideMarkerPart6_0057 : outsideMarkerPartValid6_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid6_0057 outsideHistoryChunk0057
  decide

def outsideMarkerPartValid7_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59264
  | _ => True

theorem outsideMarkerPart7_0057 : outsideMarkerPartValid7_0057 outsideHistoryChunk0057 := by
  unfold outsideMarkerPartValid7_0057 outsideHistoryChunk0057
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
