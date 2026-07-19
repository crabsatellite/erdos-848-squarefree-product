import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0041

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41984
  | _ => True

theorem outsideMarkerPart0_0041 : outsideMarkerPartValid0_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid0_0041 outsideHistoryChunk0041
  decide

def outsideMarkerPartValid1_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42112
  | _ => True

theorem outsideMarkerPart1_0041 : outsideMarkerPartValid1_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid1_0041 outsideHistoryChunk0041
  decide

def outsideMarkerPartValid2_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42240
  | _ => True

theorem outsideMarkerPart2_0041 : outsideMarkerPartValid2_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid2_0041 outsideHistoryChunk0041
  decide

def outsideMarkerPartValid3_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42368
  | _ => True

theorem outsideMarkerPart3_0041 : outsideMarkerPartValid3_0041 outsideHistoryChunk0041 := by
  unfold outsideMarkerPartValid3_0041 outsideHistoryChunk0041
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
