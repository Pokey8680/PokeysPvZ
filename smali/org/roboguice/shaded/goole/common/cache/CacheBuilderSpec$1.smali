.class synthetic Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$1;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$common$cache$LocalCache$Strength:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->values()[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    :try_start_0
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->ordinal()I

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