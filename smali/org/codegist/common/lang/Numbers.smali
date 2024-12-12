.class public final Lorg/codegist/common/lang/Numbers;
.super Ljava/lang/Object;
.source "Numbers.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static parse(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .prologue
    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 64
    .end local p1    # "defaultValue":B
    :goto_0
    return p1

    .line 63
    .restart local p1    # "defaultValue":B
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;D)D
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 48
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 47
    .restart local p1    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 56
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 55
    .restart local p1    # "defaultValue":F
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 32
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 31
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;J)J
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 40
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 39
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 72
    .end local p1    # "defaultValue":S
    :goto_0
    return p1

    .line 71
    .restart local p1    # "defaultValue":S
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
