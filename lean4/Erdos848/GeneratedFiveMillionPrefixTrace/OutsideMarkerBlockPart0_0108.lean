import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0108

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110592
  | _ => True

theorem outsideMarkerPart0_0108 : outsideMarkerPartValid0_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid0_0108 outsideHistoryChunk0108
  decide

def outsideMarkerPartValid1_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110720
  | _ => True

theorem outsideMarkerPart1_0108 : outsideMarkerPartValid1_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid1_0108 outsideHistoryChunk0108
  decide

def outsideMarkerPartValid2_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110848
  | _ => True

theorem outsideMarkerPart2_0108 : outsideMarkerPartValid2_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid2_0108 outsideHistoryChunk0108
  decide

def outsideMarkerPartValid3_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110976
  | _ => True

theorem outsideMarkerPart3_0108 : outsideMarkerPartValid3_0108 outsideHistoryChunk0108 := by
  unfold outsideMarkerPartValid3_0108 outsideHistoryChunk0108
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
