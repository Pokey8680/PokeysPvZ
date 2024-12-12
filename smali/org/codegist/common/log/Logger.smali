.class public abstract Lorg/codegist/common/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final FACTORY:Lorg/codegist/common/log/LoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/codegist/common/log/LoggerProvider;->getAvailableLoggerFactory()Lorg/codegist/common/log/LoggerFactory;

    move-result-object v0

    sput-object v0, Lorg/codegist/common/log/Logger;->FACTORY:Lorg/codegist/common/log/LoggerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/common/log/Logger;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codegist/common/log/Logger;->FACTORY:Lorg/codegist/common/log/LoggerFactory;

    invoke-virtual {v0, p0}, Lorg/codegist/common/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/codegist/common/log/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lorg/codegist/common/log/Logger;->FACTORY:Lorg/codegist/common/log/LoggerFactory;

    invoke-virtual {v0, p0}, Lorg/codegist/common/log/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract debug(Ljava/lang/Object;)V
.end method

.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract debug(Ljava/lang/Throwable;)V
.end method

.method public abstract debug(Ljava/lang/Throwable;Ljava/lang/Object;)V
.end method

.method public varargs abstract debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract error(Ljava/lang/Throwable;Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract info(Ljava/lang/Object;)V
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract info(Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/Throwable;Ljava/lang/Object;)V
.end method

.method public varargs abstract info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract isDebugOn()Z
.end method

.method public abstract isErrorOn()Z
.end method

.method public abstract isInfoOn()Z
.end method

.method public abstract isTraceOn()Z
.end method

.method public abstract isWarnOn()Z
.end method

.method public abstract trace(Ljava/lang/Object;)V
.end method

.method public varargs abstract trace(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract trace(Ljava/lang/Throwable;)V
.end method

.method public abstract trace(Ljava/lang/Throwable;Ljava/lang/Object;)V
.end method

.method public varargs abstract trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract warn(Ljava/lang/Object;)V
.end method

.method public varargs abstract warn(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract warn(Ljava/lang/Throwable;)V
.end method

.method public abstract warn(Ljava/lang/Throwable;Ljava/lang/Object;)V
.end method

.method public varargs abstract warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
