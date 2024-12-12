.class public Lcom/ea/nimble/bridge/FacebookNativeCallback;
.super Ljava/lang/Object;
.source "FacebookNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/IFacebook$FacebookCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/ea/nimble/bridge/FacebookNativeCallback;->m_id:I

    .line 12
    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/IFacebook;ZLjava/lang/Exception;)V
    .locals 4
    .param p1, "facebook"    # Lcom/ea/nimble/IFacebook;
    .param p2, "success"    # Z
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 17
    iget v0, p0, Lcom/ea/nimble/bridge/FacebookNativeCallback;->m_id:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ea/nimble/bridge/FacebookNativeCallback;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 24
    return-void
.end method
