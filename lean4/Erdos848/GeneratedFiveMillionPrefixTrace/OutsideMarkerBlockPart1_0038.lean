import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0038

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39424
  | _ => True

theorem outsideMarkerPart4_0038 : outsideMarkerPartValid4_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid4_0038 outsideHistoryChunk0038
  decide

def outsideMarkerPartValid5_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39552
  | _ => True

theorem outsideMarkerPart5_0038 : outsideMarkerPartValid5_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid5_0038 outsideHistoryChunk0038
  decide

def outsideMarkerPartValid6_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39680
  | _ => True

theorem outsideMarkerPart6_0038 : outsideMarkerPartValid6_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid6_0038 outsideHistoryChunk0038
  decide

def outsideMarkerPartValid7_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39808
  | _ => True

theorem outsideMarkerPart7_0038 : outsideMarkerPartValid7_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid7_0038 outsideHistoryChunk0038
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
