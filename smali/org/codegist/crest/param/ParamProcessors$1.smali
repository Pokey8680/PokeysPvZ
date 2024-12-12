.class synthetic Lorg/codegist/crest/param/ParamProcessors$1;
.super Ljava/lang/Object;
.source "ParamProcessors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/param/ParamProcessors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$codegist$crest$config$ParamType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lorg/codegist/crest/config/ParamType;->values()[Lorg/codegist/crest/config/ParamType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/codegist/crest/param/ParamProcessors$1;->$SwitchMap$org$codegist$crest$config$ParamType:[I

    :try_start_0
    sget-object v0, Lorg/codegist/crest/param/ParamProcessors$1;->$SwitchMap$org$codegist$crest$config$ParamType:[I

    sget-object v1, Lorg/codegist/crest/config/ParamType;->COOKIE:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {v1}, Lorg/codegist/crest/config/ParamType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
