import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0096

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98304
  | _ => True

theorem outsideMarkerPart0_0096 : outsideMarkerPartValid0_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid0_0096 outsideHistoryChunk0096
  decide

def outsideMarkerPartValid1_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98432
  | _ => True

theorem outsideMarkerPart1_0096 : outsideMarkerPartValid1_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid1_0096 outsideHistoryChunk0096
  decide

def outsideMarkerPartValid2_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98560
  | _ => True

theorem outsideMarkerPart2_0096 : outsideMarkerPartValid2_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid2_0096 outsideHistoryChunk0096
  decide

def outsideMarkerPartValid3_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98688
  | _ => True

theorem outsideMarkerPart3_0096 : outsideMarkerPartValid3_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid3_0096 outsideHistoryChunk0096
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
