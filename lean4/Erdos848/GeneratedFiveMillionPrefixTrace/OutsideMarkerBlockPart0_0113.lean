import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115712
  | _ => True

theorem outsideMarkerPart0_0113 : outsideMarkerPartValid0_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid0_0113 outsideHistoryChunk0113
  decide

def outsideMarkerPartValid1_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115840
  | _ => True

theorem outsideMarkerPart1_0113 : outsideMarkerPartValid1_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid1_0113 outsideHistoryChunk0113
  decide

def outsideMarkerPartValid2_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115968
  | _ => True

theorem outsideMarkerPart2_0113 : outsideMarkerPartValid2_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid2_0113 outsideHistoryChunk0113
  decide

def outsideMarkerPartValid3_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116096
  | _ => True

theorem outsideMarkerPart3_0113 : outsideMarkerPartValid3_0113 outsideHistoryChunk0113 := by
  unfold outsideMarkerPartValid3_0113 outsideHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
