.class public Lcom/ea/nimble/NimbleFacebookError;
.super Lcom/ea/nimble/Error;
.source "NimbleFacebookError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/NimbleFacebookError$Code;
    }
.end annotation


# static fields
.field public static final NIMBLE_FACEBOOK_ERROR_DOMAIN:Ljava/lang/String; = "NimbleFacebookError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "NimbleFacebookError"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    const-string v0, "NimbleFacebookError"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/NimbleFacebookError$Code;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Lcom/ea/nimble/NimbleFacebookError$Code;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "NimbleFacebookError"

    invoke-virtual {p1}, Lcom/ea/nimble/NimbleFacebookError$Code;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public isError(I)Z
    .locals 1
    .param p1, "friendsErrorCode"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ea/nimble/NimbleFacebookError;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
