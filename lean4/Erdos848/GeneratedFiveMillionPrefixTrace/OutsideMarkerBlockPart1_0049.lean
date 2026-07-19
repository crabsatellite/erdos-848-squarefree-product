import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50688
  | _ => True

theorem outsideMarkerPart4_0049 : outsideMarkerPartValid4_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid4_0049 outsideHistoryChunk0049
  decide

def outsideMarkerPartValid5_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50816
  | _ => True

theorem outsideMarkerPart5_0049 : outsideMarkerPartValid5_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid5_0049 outsideHistoryChunk0049
  decide

def outsideMarkerPartValid6_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50944
  | _ => True

theorem outsideMarkerPart6_0049 : outsideMarkerPartValid6_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid6_0049 outsideHistoryChunk0049
  decide

def outsideMarkerPartValid7_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51072
  | _ => True

theorem outsideMarkerPart7_0049 : outsideMarkerPartValid7_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid7_0049 outsideHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
