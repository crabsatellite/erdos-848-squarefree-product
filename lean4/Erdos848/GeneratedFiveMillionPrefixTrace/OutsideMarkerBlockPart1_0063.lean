import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65024
  | _ => True

theorem outsideMarkerPart4_0063 : outsideMarkerPartValid4_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid4_0063 outsideHistoryChunk0063
  decide

def outsideMarkerPartValid5_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65152
  | _ => True

theorem outsideMarkerPart5_0063 : outsideMarkerPartValid5_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid5_0063 outsideHistoryChunk0063
  decide

def outsideMarkerPartValid6_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65280
  | _ => True

theorem outsideMarkerPart6_0063 : outsideMarkerPartValid6_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid6_0063 outsideHistoryChunk0063
  decide

def outsideMarkerPartValid7_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65408
  | _ => True

theorem outsideMarkerPart7_0063 : outsideMarkerPartValid7_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid7_0063 outsideHistoryChunk0063
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
