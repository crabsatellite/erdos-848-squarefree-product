import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0050

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51200
  | _ => True

theorem outsideMarkerPart0_0050 : outsideMarkerPartValid0_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid0_0050 outsideHistoryChunk0050
  decide

def outsideMarkerPartValid1_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51328
  | _ => True

theorem outsideMarkerPart1_0050 : outsideMarkerPartValid1_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid1_0050 outsideHistoryChunk0050
  decide

def outsideMarkerPartValid2_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51456
  | _ => True

theorem outsideMarkerPart2_0050 : outsideMarkerPartValid2_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid2_0050 outsideHistoryChunk0050
  decide

def outsideMarkerPartValid3_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51584
  | _ => True

theorem outsideMarkerPart3_0050 : outsideMarkerPartValid3_0050 outsideHistoryChunk0050 := by
  unfold outsideMarkerPartValid3_0050 outsideHistoryChunk0050
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
