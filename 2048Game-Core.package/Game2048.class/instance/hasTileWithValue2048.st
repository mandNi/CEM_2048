testing
hasTileWithValue2048
    ^ self occupiedTiles anySatisfy: [:tile | tile withValue = 2048].
