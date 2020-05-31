﻿#ifndef _DEBUGGING
#define _DEBUGGING

RWStructuredBuffer<float4> buffer : register(u1);

static const uint4 pawnTests[5][4] =
{
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 1001 0001 0001 0000 0000 0000
        0b 0000 0000 0000 1001 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    9506816, 0, 0, 0,
    0, 0, 0, 589824,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        // Queen side
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        // King side
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        // Queen pawns
        0b 0000 0000 0000 0000 0101 0011 0100 0100
        // King pawns
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 21316, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0101 0100
        0b 0101 0101 0000 0000 0000 0000 0000 0000
    */
    0, 0, 84, 1426063360,

    //// Test 2

    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0001 0000 0000 0000 0000

        0b 0000 0000 1001 1001 0001 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    65536, 0, 0, 0,
    0, 0, 0, 10031104,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        // Queen side
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        // King side
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        // Queen pawns
        0b 0000 0000 0000 0000 0100 0011 0100 0100
        // King pawns
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 17220, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0101 0100
        0b 0100 0101 0000 0000 0000 0000 0000 0000
    */
    0, 0, 84, 1426063360,

    /// Test 3 - Pawn Promotions
    /*
        0b 0000 0000 0000 0001 0000 0000 0000 0000
        0b 0000 0000 0000 0000 1001 0000 0000 0000
        0b 0000 0000 0000 1100 1100 1101 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0101 0000 0000
        0b 0000 0000 0000 0001 0000 0000 0000 0000
        0b 0000 0000 1001 0000 0000 0000 0000 0000
    */
    0, 838912, 36864, 65536,
    9437184, 65536, 1280, 0,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        // Queen side
        0b 0100 0011 0000 0000 0000 0000 0110 0110
        // King side
        0b 0000 0000 0000 0000 0000 0000 0110 0100
        // Queen pawns
        0b 0000 0000 0000 0000 0000 0011 0000 0000
        // King pawns
        0b 0111 0101 0000 0000 0000 0000 0000 0000
    */
    1124073574, 100, 768, 1962934272,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0011 0110
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0010 0100
        0b 1000 0100 0000 0000 0000 0000 0000 0000
    */
    54, 0, 36, 2214592512,

    /// Test 4 - Pawn Promotions
    /*
        0b 0000 0000 0000 0001 0000 0000 0000 0000
        0b 0000 0000 0000 0000 1001 0000 0000 0000
        0b 0000 0000 0000 0000 0000 1101 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0101 0000 0000
        0b 0000 0000 0000 0001 0000 0000 0000 0000
        0b 0000 0000 1001 0000 0000 0000 0000 0000
    */
    0, 3328, 36864, 65536,
    9437184, 65536, 1280, 0,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        // Queen side
        0b 0000 0000 0000 0000 0000 0000 0110 0110
        // King side
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        // Queen pawns
        0b 0000 0000 0000 0000 0000 0011 0000 0000
        // King pawns
        0b 0111 0101 0000 0000 0000 0000 0000 0000
    */
    102, 0, 768, 1962934272,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0011 0110
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0010 0100
        0b 1000 0100 0000 0000 0000 0000 0000 0000
    */
    54, 0, 36, 2214592512,

    /// Test 5

    /*
        0b 0100 0010 0011 0101 0110 0011 0010 0100
        0b 0001 0001 0001 0001 0001 0001 0001 0001
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 286331153, 1110795044,
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 1001 0000 0000 0000 0000 0000 0000 0000
        0b 0000 1001 1001 1001 1001 1001 1001 1001
        0b 1100 1010 1011 1101 1110 1011 1010 1100
    */
    3401444268, 161061273, 2415919104, 0,
    /*
        // Queen side
        0b 0001 0001 0001 0010 0001 0011 0001 0100
        // King side
        0b 0001 0101 0001 0110 0001 0111 0001 1000
        // Queen pawns
        0b 0011 0001 0010 0010 0010 0011 0010 0100
        // King pawns
        0b 0010 0101 0010 0110 0010 0111 0010 1000
    */
    286397204, 353769240, 824320804, 623257384,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8

        0b 1000 0001 1000 0010 1000 0011 1000 0100
        0b 1000 0101 1000 0110 1000 0111 1000 1000
        0b 0111 0001 0111 0010 0111 0011 0111 0100
        0b 0111 0101 0111 0110 0111 0111 0111 1000
    */
    2172814212, 2240186248, 1903326068, 1970698104
};

static const uint4 castleTests[1][4] =
{
    /*
        0b 0100 0000 0000 0000 0110 0000 0000 0100
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 1100 0000 0000 0000 1110 0000 0000 1100
    */
    0, 0, 0, 1073766404,
    3221282828, 0, 0, 0,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        // Queen side
        0b 0001 0001 0000 0000 0000 0000 0000 0000
        // King side
        0b 0001 0101 0000 0000 0000 0000 0001 1000
        // Queen pawns
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        // King pawns
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    285212672, 352321560, 0, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 1000 0001 0000 0000 0000 0000 0000 0000
        0b 1000 0101 0000 0000 0000 0000 1000 1000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    2164260864, 2231369864, 0, 0
};

static const uint4 knightTests[1][4] =
{
    // Knight Testing
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0010
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0001 0000 1001 0000 1001 0000
        0b 0000 0010 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 1010 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0001 0000
        0b 1001 1001 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 1010
    */
    33554432, 1085584, 0, 2,
    10, 2566914048, 16, 655360,

    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        // Queen side
        0b 0000 0000 0100 0100 0000 0000 0000 0000
        // King side
        0b 0000 0000 0000 0000 0001 1000 0000 0000
        // Queen pawns
        0b 0010 0001 0010 0010 0000 0000 0000 0000
        // King pawns
        0b 0110 0101 0110 0111 0000 0000 0000 0000
    */
    4456448, 6144, 555876352, 1701249024,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0101 0010 0000 0000 0000 0000
        0b 0000 0000 0000 0000 1000 1000 0000 0000
        0b 0000 0000 0011 0111 0000 0000 0000 0000
        0b 0110 0011 0000 0000 0000 0000 0000 0000
    */
    5373952, 34816, 3604480, 1660944384
};

static const uint4 bishopTests[5][4] =
{
    // Bishop Testing
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 1010
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0011 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 0, 10,
    805306368, 0, 0, 0,

    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0000 0000 1000 1000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    8912896, 0, 0, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0001 0001 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    4352, 0, 0, 0,

    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 1011 0011 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 0, 0,
    0, 0, 0, 733184,

    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0000 0000 0000 0000 0100 0100 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    17408, 0, 0, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0100 0101 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    17664, 0, 0, 0,

    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 1011 1011 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    765952, 0, 0, 0,
    0, 0, 0, 0,

    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0000 0000 0000 0000 0101 0101 0000 0000
        0b 0000 0000 0101 0100 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    21760, 5505024, 0, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 0, 0,

    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 1001 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0011 0000 0000 0000 0000
        0b 0000 0000 0000 0011 0000 0000 0000 0000
        0b 0000 0000 1001 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    196608, 9437184, 0, 0,
    0, 0, 9437184, 196608,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0110 0011 0011 0011 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 0, 1664286720, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0101 0100 0000 0000
        0b 0000 0000 0100 0100 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    21504, 4456448, 0, 0,

    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0011 0000 0000 0000
        0b 0000 0000 0000 1011 0000 0000 0000 0000
        0b 0000 0000 0000 1011 0000 0000 0000 0000
        0b 0000 0000 0000 0000 1001 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0001 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    720896, 12288, 0, 0,
    0, 256, 36864, 720896,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0000 0000 0000 0000 0100 0100 0000 0000
        0b 0000 0000 0101 0100 0000 0000 0000 0000
        0b 0011 0101 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    17408, 5505024, 889192448, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0110 0101 0000 0000 0000 0000
        0b 0010 0110 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 6619136, 637534208, 0
};

static const uint4 rookTests[2][4] =
{
    // Rook Testing
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0001 0000 0000 0000 1001
        0b 0000 0000 0000 1001 0000 0000 0000 0000
        0b 0001 0000 0000 1100 0000 1001 0000 0001
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0100
    */
    589824, 65545, 0, 0,
    4, 0, 0, 269224193,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0100 0100 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0101 0100 0100 0110 0110 1000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    1140850688, 0, 1413900288, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0001 1000
        0b 0100 0001 0110 0100 0100 1000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    0, 24, 1097091072, 0,

    /*
        Test 2

        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0100 1100 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    311296, 0, 0, 0,
    0, 0, 0, 0,
    /*
        Store the position of each piece
        Rw  Nw  Bw  Qw  Kw  Bw  Nw  Rw
        1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8
        Pw  Pw  Pw  Pw  Pw  Pw  Pw  Pw
        2,1 2,2 2,3 2,4 2,5 2,6 2,7 2,8

        0b 0101 0101 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 1000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    1426063360, 0, 0, 0,
    /*
        Rb  Nb  Bb  Qb  Kb  Bb  Nb  Rb
        7,1 7,2 7,3 7,4 7,5 7,6 7,7 7,8
        Pb  Pb  Pb  Pb  Pb  Pb  Pb  Pb
        8,1 8,2 8,3 8,4 8,5 8,6 8,7 8,8

        0b 0101 0100 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    1409286144, 0, 0, 0
};

static const uint4 queenTests[3][2] =
{
    // Queen Testing
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0001 0001 0001 0001 0001 0000 0000
        0b 0000 0001 1001 1001 1001 0001 0000 0000
        0b 0000 0001 1001 1101 1001 0001 0000 0000
        0b 0000 0001 1001 1001 1001 0001 0000 0000
        0b 0000 0001 0001 0001 0001 0001 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    27103488, 26841344, 17895680, 0,
    0, 0, 17895680, 26841344,

    /*
        0b 0001 0001 0001 0001 0001 0001 0000 0000
        0b 0001 0000 0000 0000 0000 0001 0000 0000
        0b 0001 0000 1001 1001 1001 0001 0000 0000
        0b 0001 0000 1001 1101 1001 0001 0000 0000
        0b 0001 0000 1001 1001 1001 0001 0000 0000
        0b 0001 0000 0000 0000 0000 0001 0000 0000
        0b 0001 0001 0001 0001 0001 0001 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    278761728, 278499584, 268435712, 286331136,
    0, 286331136, 268435712, 278499584,

    /*
        0b 0001 0001 0001 0001 0001 0001 0000 0000
        0b 0001 0000 0000 0000 0000 0001 0000 0000
        0b 0001 0000 0000 0000 0000 0001 0000 0000
        0b 0001 0000 0000 1101 0000 0001 0000 0000
        0b 0001 0000 0000 0000 0000 0001 0000 0000
        0b 0001 0000 0000 0000 0000 0001 0000 0000
        0b 0001 0001 0001 0001 0001 0001 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    269287680, 268435712, 268435712, 286331136,
    0, 286331136, 268435712, 268435712
};

static const uint4 kingTests[2][2] =
{
    // King Testing
    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0001 0000 0000 0000
        0b 0000 0000 0000 0000 1001 0000 0000 0000
        0b 0000 0000 0000 0000 1110 0001 0000 0000
    */
    0, 0, 0, 0,
    57600, 36864, 4096, 0,

    /*
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0001 0001 0001 0000 0000 0000
        0b 0000 0000 0001 1110 0001 0000 0000 0000
        0b 0000 0000 0001 1001 0001 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
        0b 0000 0000 0000 0000 0000 0000 0000 0000
    */
    1118208, 0, 0, 0,
    0, 0, 1642496, 1970176
};

#endif