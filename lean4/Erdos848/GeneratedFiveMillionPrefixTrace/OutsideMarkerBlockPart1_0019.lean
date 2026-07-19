import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19968
  | _ => True

theorem outsideMarkerPart4_0019 : outsideMarkerPartValid4_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid4_0019 outsideHistoryChunk0019
  decide

def outsideMarkerPartValid5_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20096
  | _ => True

theorem outsideMarkerPart5_0019 : outsideMarkerPartValid5_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid5_0019 outsideHistoryChunk0019
  decide

def outsideMarkerPartValid6_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20224
  | _ => True

theorem outsideMarkerPart6_0019 : outsideMarkerPartValid6_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid6_0019 outsideHistoryChunk0019
  decide

def outsideMarkerPartValid7_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20352
  | _ => True

theorem outsideMarkerPart7_0019 : outsideMarkerPartValid7_0019 outsideHistoryChunk0019 := by
  unfold outsideMarkerPartValid7_0019 outsideHistoryChunk0019
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
