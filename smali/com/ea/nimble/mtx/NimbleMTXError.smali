.class public Lcom/ea/nimble/mtx/NimbleMTXError;
.super Lcom/ea/nimble/Error;
.source "NimbleMTXError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "NimbleMTXError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ea/nimble/Error;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "NimbleMTXError"

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    const-string v0, "NimbleMTXError"

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
