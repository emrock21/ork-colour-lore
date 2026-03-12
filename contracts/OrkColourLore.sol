// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

/// @title Ork Colour Lore – static, read‑only Ork colour meanings
/// @notice Pure text contract with no funds, no state changes, and no wallet interaction.
/// @dev No payable functions, no storage writes, no external calls.

contract OrkColourLore {

    /// @notice Returns the Ork meaning of a predefined colour.
    /// @param colour The colour to query (e.g., "Red", "Blue", "Yellow", "Black", "Purple").
    /// @return meaning A short lore description of what that colour means to Orks.
    function getColourMeaning(string calldata colour) external pure returns (string memory meaning) {

        // Red: makes things faster
        if (_equals(colour, "Red")) {
            return "Red makes Orks go faster. Da red wunz go fasta!";
        }

        // Blue: brings luck
        if (_equals(colour, "Blue")) {
            return "Blue is lucky for Orks. A proper lucky colour for good scrap.";
        }

        // Yellow: more dakka and explosions
        if (_equals(colour, "Yellow")) {
            return "Yellow means more dakka and more explosions. Loud and flashy!";
        }

        // Black: brutal and tough
        if (_equals(colour, "Black")) {
            return "Black is for brutal Orks. Tough, mean, and ready for a fight.";
        }

        // Purple: stealthy (because no one has ever seen a purple Ork)
        if (_equals(colour, "Purple")) {
            return "Purple is for sneaky Orks. No one has ever seen a purple Ork!";
        }

        // Default: unknown colour
        return "Unknown colour. Try Red, Blue, Yellow, Black, or Purple.";
    }

    /// @notice Internal helper to compare strings.
    function _equals(string calldata a, string memory b) private pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}
