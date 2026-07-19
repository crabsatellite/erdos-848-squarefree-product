import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0105

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108032
  | _ => True

theorem outsideMarkerPart4_0105 : outsideMarkerPartValid4_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid4_0105 outsideHistoryChunk0105
  decide

def outsideMarkerPartValid5_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108160
  | _ => True

theorem outsideMarkerPart5_0105 : outsideMarkerPartValid5_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid5_0105 outsideHistoryChunk0105
  decide

def outsideMarkerPartValid6_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108288
  | _ => True

theorem outsideMarkerPart6_0105 : outsideMarkerPartValid6_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid6_0105 outsideHistoryChunk0105
  decide

def outsideMarkerPartValid7_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108416
  | _ => True

theorem outsideMarkerPart7_0105 : outsideMarkerPartValid7_0105 outsideHistoryChunk0105 := by
  unfold outsideMarkerPartValid7_0105 outsideHistoryChunk0105
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
