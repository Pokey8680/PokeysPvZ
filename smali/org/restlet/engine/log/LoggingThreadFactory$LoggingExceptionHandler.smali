.class Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;
.super Ljava/lang/Object;
.source "LoggingThreadFactory.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/engine/log/LoggingThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/log/LoggingThreadFactory;


# direct methods
.method private constructor <init>(Lorg/restlet/engine/log/LoggingThreadFactory;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;->this$0:Lorg/restlet/engine/log/LoggingThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/restlet/engine/log/LoggingThreadFactory;Lorg/restlet/engine/log/LoggingThreadFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/restlet/engine/log/LoggingThreadFactory;
    .param p2, "x1"    # Lorg/restlet/engine/log/LoggingThreadFactory$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;-><init>(Lorg/restlet/engine/log/LoggingThreadFactory;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;->this$0:Lorg/restlet/engine/log/LoggingThreadFactory;

    invoke-static {v0}, Lorg/restlet/engine/log/LoggingThreadFactory;->access$000(Lorg/restlet/engine/log/LoggingThreadFactory;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " terminated with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method
