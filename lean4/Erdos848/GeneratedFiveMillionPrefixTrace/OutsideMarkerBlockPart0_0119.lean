import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121856
  | _ => True

theorem outsideMarkerPart0_0119 : outsideMarkerPartValid0_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid0_0119 outsideHistoryChunk0119
  decide

def outsideMarkerPartValid1_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121984
  | _ => True

theorem outsideMarkerPart1_0119 : outsideMarkerPartValid1_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid1_0119 outsideHistoryChunk0119
  decide

def outsideMarkerPartValid2_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122112
  | _ => True

theorem outsideMarkerPart2_0119 : outsideMarkerPartValid2_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid2_0119 outsideHistoryChunk0119
  decide

def outsideMarkerPartValid3_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122240
  | _ => True

theorem outsideMarkerPart3_0119 : outsideMarkerPartValid3_0119 outsideHistoryChunk0119 := by
  unfold outsideMarkerPartValid3_0119 outsideHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
