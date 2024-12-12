.class public Lcom/ea/nimble/Log$Helper;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs LOG(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 84
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static varargs LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 27
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static varargs LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static varargs LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static varargs LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 73
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static varargs LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x258

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static varargs LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x258

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static varargs LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 32
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static varargs LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 63
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static varargs LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 22
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static varargs LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 53
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static varargs LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 37
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x190

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static varargs LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x190

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method
