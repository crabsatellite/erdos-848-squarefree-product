import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0024

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24576
  | _ => True

theorem outsideMarkerPart0_0024 : outsideMarkerPartValid0_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid0_0024 outsideHistoryChunk0024
  decide

def outsideMarkerPartValid1_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24704
  | _ => True

theorem outsideMarkerPart1_0024 : outsideMarkerPartValid1_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid1_0024 outsideHistoryChunk0024
  decide

def outsideMarkerPartValid2_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24832
  | _ => True

theorem outsideMarkerPart2_0024 : outsideMarkerPartValid2_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid2_0024 outsideHistoryChunk0024
  decide

def outsideMarkerPartValid3_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24960
  | _ => True

theorem outsideMarkerPart3_0024 : outsideMarkerPartValid3_0024 outsideHistoryChunk0024 := by
  unfold outsideMarkerPartValid3_0024 outsideHistoryChunk0024
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
