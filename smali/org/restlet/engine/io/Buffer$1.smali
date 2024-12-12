.class synthetic Lorg/restlet/engine/io/Buffer$1;
.super Ljava/lang/Object;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/engine/io/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$restlet$engine$io$BufferState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 301
    invoke-static {}, Lorg/restlet/engine/io/BufferState;->values()[Lorg/restlet/engine/io/BufferState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/restlet/engine/io/Buffer$1;->$SwitchMap$org$restlet$engine$io$BufferState:[I

    :try_start_0
    sget-object v0, Lorg/restlet/engine/io/Buffer$1;->$SwitchMap$org$restlet$engine$io$BufferState:[I

    sget-object v1, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    invoke-virtual {v1}, Lorg/restlet/engine/io/BufferState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/restlet/engine/io/Buffer$1;->$SwitchMap$org$restlet$engine$io$BufferState:[I

    sget-object v1, Lorg/restlet/engine/io/BufferState;->FILLED:Lorg/restlet/engine/io/BufferState;

    invoke-virtual {v1}, Lorg/restlet/engine/io/BufferState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
