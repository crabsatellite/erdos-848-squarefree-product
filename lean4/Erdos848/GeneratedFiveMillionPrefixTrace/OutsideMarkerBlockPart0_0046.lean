import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47104
  | _ => True

theorem outsideMarkerPart0_0046 : outsideMarkerPartValid0_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid0_0046 outsideHistoryChunk0046
  decide

def outsideMarkerPartValid1_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47232
  | _ => True

theorem outsideMarkerPart1_0046 : outsideMarkerPartValid1_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid1_0046 outsideHistoryChunk0046
  decide

def outsideMarkerPartValid2_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47360
  | _ => True

theorem outsideMarkerPart2_0046 : outsideMarkerPartValid2_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid2_0046 outsideHistoryChunk0046
  decide

def outsideMarkerPartValid3_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47488
  | _ => True

theorem outsideMarkerPart3_0046 : outsideMarkerPartValid3_0046 outsideHistoryChunk0046 := by
  unfold outsideMarkerPartValid3_0046 outsideHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
