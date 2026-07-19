import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2048
  | _ => True

theorem outsideMarkerPart0_0002 : outsideMarkerPartValid0_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid0_0002 outsideHistoryChunk0002
  decide

def outsideMarkerPartValid1_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2176
  | _ => True

theorem outsideMarkerPart1_0002 : outsideMarkerPartValid1_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid1_0002 outsideHistoryChunk0002
  decide

def outsideMarkerPartValid2_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2304
  | _ => True

theorem outsideMarkerPart2_0002 : outsideMarkerPartValid2_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid2_0002 outsideHistoryChunk0002
  decide

def outsideMarkerPartValid3_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2432
  | _ => True

theorem outsideMarkerPart3_0002 : outsideMarkerPartValid3_0002 outsideHistoryChunk0002 := by
  unfold outsideMarkerPartValid3_0002 outsideHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
