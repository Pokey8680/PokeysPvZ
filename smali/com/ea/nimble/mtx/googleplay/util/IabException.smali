.class public Lcom/ea/nimble/mtx/googleplay/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x4e1595068c772c3fL


# instance fields
.field mResult:Lcom/ea/nimble/mtx/googleplay/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 48
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Ljava/lang/Exception;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Ljava/lang/Exception;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabException;->mResult:Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    .line 45
    return-void
.end method


# virtual methods
.method public getResult()Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabException;->mResult:Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    return-object v0
.end method
