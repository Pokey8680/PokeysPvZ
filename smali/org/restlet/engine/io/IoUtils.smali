.class public Lorg/restlet/engine/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field public static final BUFFER_SIZE:I

.field public static final TIMEOUT_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "org.restlet.engine.io.bufferSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/restlet/engine/io/IoUtils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    .line 59
    const-string v0, "org.restlet.engine.io.timeoutMs"

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/restlet/engine/io/IoUtils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static getProperty(Ljava/lang/String;I)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 63
    move v1, p1

    .line 66
    .local v1, "result":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    move v1, p1

    goto :goto_0
.end method
