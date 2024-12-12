.class final Lorg/codegist/common/log/LoggerProvider$1;
.super Ljava/util/LinkedHashMap;
.source "LoggerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/common/log/LoggerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/codegist/common/log/LoggerFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    const-string v0, "android.util.Log"

    new-instance v1, Lorg/codegist/common/log/LoggerFactory;

    const-class v2, Lorg/codegist/common/log/LogCatLogger;

    invoke-direct {v1, v2}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/codegist/common/log/LoggerProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "org.apache.log4j.Logger"

    new-instance v1, Lorg/codegist/common/log/LoggerFactory;

    const-class v2, Lorg/codegist/common/log/Log4jLogger;

    invoke-direct {v1, v2}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/codegist/common/log/LoggerProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "org.slf4j.LoggerFactory"

    new-instance v1, Lorg/codegist/common/log/LoggerFactory;

    const-class v2, Lorg/codegist/common/log/Slf4jLogger;

    invoke-direct {v1, v2}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/codegist/common/log/LoggerProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "org.apache.commons.logging.LogFactory"

    new-instance v1, Lorg/codegist/common/log/LoggerFactory;

    const-class v2, Lorg/codegist/common/log/ApacheCommonsLogger;

    invoke-direct {v1, v2}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/codegist/common/log/LoggerProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
