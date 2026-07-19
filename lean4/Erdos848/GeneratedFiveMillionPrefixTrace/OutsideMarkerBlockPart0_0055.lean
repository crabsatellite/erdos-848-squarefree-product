import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56320
  | _ => True

theorem outsideMarkerPart0_0055 : outsideMarkerPartValid0_0055 outsideHistoryChunk0055 := by
  unfold outsideMarkerPartValid0_0055 outsideHistoryChunk0055
  decide

def outsideMarkerPartValid1_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56448
  | _ => True

theorem outsideMarkerPart1_0055 : outsideMarkerPartValid1_0055 outsideHistoryChunk0055 := by
  unfold outsideMarkerPartValid1_0055 outsideHistoryChunk0055
  decide

def outsideMarkerPartValid2_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56576
  | _ => True

theorem outsideMarkerPart2_0055 : outsideMarkerPartValid2_0055 outsideHistoryChunk0055 := by
  unfold outsideMarkerPartValid2_0055 outsideHistoryChunk0055
  decide

def outsideMarkerPartValid3_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56704
  | _ => True

theorem outsideMarkerPart3_0055 : outsideMarkerPartValid3_0055 outsideHistoryChunk0055 := by
  unfold outsideMarkerPartValid3_0055 outsideHistoryChunk0055
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
