import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93184
  | _ => True

theorem outsideMarkerPart0_0091 : outsideMarkerPartValid0_0091 outsideHistoryChunk0091 := by
  unfold outsideMarkerPartValid0_0091 outsideHistoryChunk0091
  decide

def outsideMarkerPartValid1_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93312
  | _ => True

theorem outsideMarkerPart1_0091 : outsideMarkerPartValid1_0091 outsideHistoryChunk0091 := by
  unfold outsideMarkerPartValid1_0091 outsideHistoryChunk0091
  decide

def outsideMarkerPartValid2_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93440
  | _ => True

theorem outsideMarkerPart2_0091 : outsideMarkerPartValid2_0091 outsideHistoryChunk0091 := by
  unfold outsideMarkerPartValid2_0091 outsideHistoryChunk0091
  decide

def outsideMarkerPartValid3_0091 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93568
  | _ => True

theorem outsideMarkerPart3_0091 : outsideMarkerPartValid3_0091 outsideHistoryChunk0091 := by
  unfold outsideMarkerPartValid3_0091 outsideHistoryChunk0091
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
