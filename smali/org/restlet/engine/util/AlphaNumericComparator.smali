.class public Lorg/restlet/engine/util/AlphaNumericComparator;
.super Lorg/restlet/engine/util/AlphabeticalComparator;
.source "AlphaNumericComparator.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/restlet/engine/util/AlphabeticalComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "uri0"    # Ljava/lang/String;
    .param p2, "uri1"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v6, 0x0

    .line 70
    .local v6, "ptr":I
    const/4 v5, 0x0

    .line 71
    .local v5, "msd":I
    const/4 v2, 0x0

    .line 74
    .local v2, "diff":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 75
    .local v3, "llength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 78
    .local v9, "rlength":I
    if-ge v9, v3, :cond_1

    .line 79
    move v4, v9

    .line 86
    .local v4, "min":I
    :goto_0
    if-ge v6, v4, :cond_e

    .line 87
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, "a":C
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    .local v1, "b":C
    sub-int v2, v0, v1

    .line 91
    const/16 v10, 0x39

    if-ge v0, v10, :cond_0

    const/16 v10, 0x39

    if-ge v1, v10, :cond_0

    const/16 v10, 0x30

    if-le v0, v10, :cond_0

    const/16 v10, 0x30

    if-gt v1, v10, :cond_4

    .line 92
    :cond_0
    if-eqz v2, :cond_2

    move v10, v2

    .line 140
    .end local v0    # "a":C
    .end local v1    # "b":C
    :goto_1
    return v10

    .line 81
    .end local v4    # "min":I
    :cond_1
    move v4, v3

    .restart local v4    # "min":I
    goto :goto_0

    .line 96
    .restart local v0    # "a":C
    .restart local v1    # "b":C
    :cond_2
    const/4 v5, 0x0

    .line 138
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :cond_4
    if-nez v5, :cond_5

    .line 99
    move v5, v2

    .line 102
    :cond_5
    sub-int v10, v9, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_6

    const/4 v7, 0x1

    .line 104
    .local v7, "rAtEnd":Z
    :goto_2
    sub-int v10, v3, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_9

    .line 105
    if-eqz v7, :cond_7

    move v10, v5

    .line 106
    goto :goto_1

    .line 102
    .end local v7    # "rAtEnd":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 109
    .restart local v7    # "rAtEnd":Z
    :cond_7
    invoke-virtual {p0, v0}, Lorg/restlet/engine/util/AlphaNumericComparator;->isNotDigit(C)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {p0, v1}, Lorg/restlet/engine/util/AlphaNumericComparator;->isNotDigit(C)Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v2

    .line 110
    goto :goto_1

    .line 112
    :cond_8
    const/4 v10, -0x1

    goto :goto_1

    .line 115
    :cond_9
    if-eqz v7, :cond_b

    .line 116
    invoke-virtual {p0, v0}, Lorg/restlet/engine/util/AlphaNumericComparator;->isNotDigit(C)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {p0, v1}, Lorg/restlet/engine/util/AlphaNumericComparator;->isNotDigit(C)Z

    move-result v10

    if-nez v10, :cond_a

    move v10, v2

    .line 117
    goto :goto_1

    .line 119
    :cond_a
    const/4 v10, -0x1

    goto :goto_1

    .line 122
    :cond_b
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Lorg/restlet/engine/util/AlphaNumericComparator;->isNotDigit(C)Z

    move-result v8

    .line 124
    .local v8, "rHasNoMoreDigits":Z
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Lorg/restlet/engine/util/AlphaNumericComparator;->isNotDigit(C)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 125
    if-eqz v8, :cond_c

    if-eqz v5, :cond_c

    move v10, v5

    .line 126
    goto :goto_1

    .line 129
    :cond_c
    if-nez v8, :cond_3

    .line 130
    const/4 v10, -0x1

    goto :goto_1

    .line 133
    :cond_d
    if-eqz v8, :cond_3

    .line 134
    const/4 v10, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "a":C
    .end local v1    # "b":C
    .end local v7    # "rAtEnd":Z
    .end local v8    # "rHasNoMoreDigits":Z
    :cond_e
    sub-int v10, v3, v9

    goto :goto_1
.end method

.method protected isNotDigit(C)Z
    .locals 1
    .param p1, "x"    # C

    .prologue
    .line 151
    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/16 v0, 0x30

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
