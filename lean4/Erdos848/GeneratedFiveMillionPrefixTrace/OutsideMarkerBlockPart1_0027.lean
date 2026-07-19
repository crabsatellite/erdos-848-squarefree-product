import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28160
  | _ => True

theorem outsideMarkerPart4_0027 : outsideMarkerPartValid4_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid4_0027 outsideHistoryChunk0027
  decide

def outsideMarkerPartValid5_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28288
  | _ => True

theorem outsideMarkerPart5_0027 : outsideMarkerPartValid5_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid5_0027 outsideHistoryChunk0027
  decide

def outsideMarkerPartValid6_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28416
  | _ => True

theorem outsideMarkerPart6_0027 : outsideMarkerPartValid6_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid6_0027 outsideHistoryChunk0027
  decide

def outsideMarkerPartValid7_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28544
  | _ => True

theorem outsideMarkerPart7_0027 : outsideMarkerPartValid7_0027 outsideHistoryChunk0027 := by
  unfold outsideMarkerPartValid7_0027 outsideHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
