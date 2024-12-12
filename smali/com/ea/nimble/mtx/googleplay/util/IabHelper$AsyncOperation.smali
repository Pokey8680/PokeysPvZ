.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncOperation"
.end annotation


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_operation:Ljava/lang/Runnable;

.field private m_runInNewThread:Z

.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "runInNewThread"    # Z
    .param p4, "operation"    # Ljava/lang/Runnable;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_name:Ljava/lang/String;

    .line 108
    iput-boolean p3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_runInNewThread:Z

    .line 109
    iput-object p4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_operation:Ljava/lang/Runnable;

    .line 110
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_runInNewThread:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_operation:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->m_operation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
