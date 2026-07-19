import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50176
  | _ => True

theorem outsideMarkerPart0_0049 : outsideMarkerPartValid0_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid0_0049 outsideHistoryChunk0049
  decide

def outsideMarkerPartValid1_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50304
  | _ => True

theorem outsideMarkerPart1_0049 : outsideMarkerPartValid1_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid1_0049 outsideHistoryChunk0049
  decide

def outsideMarkerPartValid2_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50432
  | _ => True

theorem outsideMarkerPart2_0049 : outsideMarkerPartValid2_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid2_0049 outsideHistoryChunk0049
  decide

def outsideMarkerPartValid3_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50560
  | _ => True

theorem outsideMarkerPart3_0049 : outsideMarkerPartValid3_0049 outsideHistoryChunk0049 := by
  unfold outsideMarkerPartValid3_0049 outsideHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
