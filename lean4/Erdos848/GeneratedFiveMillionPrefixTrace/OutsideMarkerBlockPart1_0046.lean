import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47616
  | _ => True

theorem outsideMarkerPart4_0046 : outsideMarkerPartValid4_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid4_0046 outsideHistoryChunk0046
  decide

def outsideMarkerPartValid5_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47744
  | _ => True

theorem outsideMarkerPart5_0046 : outsideMarkerPartValid5_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid5_0046 outsideHistoryChunk0046
  decide

def outsideMarkerPartValid6_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47872
  | _ => True

theorem outsideMarkerPart6_0046 : outsideMarkerPartValid6_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid6_0046 outsideHistoryChunk0046
  decide

def outsideMarkerPartValid7_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48000
  | _ => True

theorem outsideMarkerPart7_0046 : outsideMarkerPartValid7_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid7_0046 outsideHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
