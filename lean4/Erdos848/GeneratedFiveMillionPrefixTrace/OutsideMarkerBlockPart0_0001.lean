import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0001

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1024
  | _ => True

theorem outsideMarkerPart0_0001 : outsideMarkerPartValid0_0001 outsideHistoryChunk0001 := by
  unfold outsideMarkerPartValid0_0001 outsideHistoryChunk0001
  decide

def outsideMarkerPartValid1_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1152
  | _ => True

theorem outsideMarkerPart1_0001 : outsideMarkerPartValid1_0001 outsideHistoryChunk0001 := by
  unfold outsideMarkerPartValid1_0001 outsideHistoryChunk0001
  decide

def outsideMarkerPartValid2_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1280
  | _ => True

theorem outsideMarkerPart2_0001 : outsideMarkerPartValid2_0001 outsideHistoryChunk0001 := by
  unfold outsideMarkerPartValid2_0001 outsideHistoryChunk0001
  decide

def outsideMarkerPartValid3_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1408
  | _ => True

theorem outsideMarkerPart3_0001 : outsideMarkerPartValid3_0001 outsideHistoryChunk0001 := by
  unfold outsideMarkerPartValid3_0001 outsideHistoryChunk0001
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
