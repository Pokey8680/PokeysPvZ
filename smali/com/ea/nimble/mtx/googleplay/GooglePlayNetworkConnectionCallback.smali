.class public abstract Lcom/ea/nimble/mtx/googleplay/GooglePlayNetworkConnectionCallback;
.super Ljava/lang/Object;
.source "GooglePlayNetworkConnectionCallback.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# instance fields
.field mParameter:Ljava/lang/String;

.field mParentGooglePlay:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

.field mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentGooglePlay"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "parameter"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayNetworkConnectionCallback;->mParentGooglePlay:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .line 16
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayNetworkConnectionCallback;->mTransactionId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayNetworkConnectionCallback;->mParameter:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
.end method
