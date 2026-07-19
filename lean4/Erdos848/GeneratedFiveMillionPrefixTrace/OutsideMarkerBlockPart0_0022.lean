import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0022

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22528
  | _ => True

theorem outsideMarkerPart0_0022 : outsideMarkerPartValid0_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid0_0022 outsideHistoryChunk0022
  decide

def outsideMarkerPartValid1_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22656
  | _ => True

theorem outsideMarkerPart1_0022 : outsideMarkerPartValid1_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid1_0022 outsideHistoryChunk0022
  decide

def outsideMarkerPartValid2_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22784
  | _ => True

theorem outsideMarkerPart2_0022 : outsideMarkerPartValid2_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid2_0022 outsideHistoryChunk0022
  decide

def outsideMarkerPartValid3_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22912
  | _ => True

theorem outsideMarkerPart3_0022 : outsideMarkerPartValid3_0022 outsideHistoryChunk0022 := by
  unfold outsideMarkerPartValid3_0022 outsideHistoryChunk0022
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
