import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0010

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10240
  | _ => True

theorem outsideMarkerPart0_0010 : outsideMarkerPartValid0_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid0_0010 outsideHistoryChunk0010
  decide

def outsideMarkerPartValid1_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10368
  | _ => True

theorem outsideMarkerPart1_0010 : outsideMarkerPartValid1_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid1_0010 outsideHistoryChunk0010
  decide

def outsideMarkerPartValid2_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10496
  | _ => True

theorem outsideMarkerPart2_0010 : outsideMarkerPartValid2_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid2_0010 outsideHistoryChunk0010
  decide

def outsideMarkerPartValid3_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10624
  | _ => True

theorem outsideMarkerPart3_0010 : outsideMarkerPartValid3_0010 outsideHistoryChunk0010 := by
  unfold outsideMarkerPartValid3_0010 outsideHistoryChunk0010
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
